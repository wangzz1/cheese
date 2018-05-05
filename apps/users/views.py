# -*- coding=utf-8 -*-
import json
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.backends import ModelBackend
from django.contrib.auth.hashers import make_password
from django.db.models import Q
from django.shortcuts import render
from django.views.generic.base import View
from django.http import HttpResponse,HttpResponseRedirect
from pure_pagination import Paginator,EmptyPage,PageNotAnInteger

from utils.email_send import send_register_email
from .forms import LoginForm, RegisterForm,UploadImageForm,UserInfoForm
from .models import UserProfile, EmailVerfiyRecord,Banner
from utils.mix_in_utils import LoginRequiredMixin
from operation.models import UserCourse,UserMessage


# Create your views here.


class CustomBackend(ModelBackend):
    def authenticate(self, username=None, password=None, **kwargs):
        try:
            user = UserProfile.objects.get(Q(username=username)|Q(email=username))
            if user.check_password(password):
                return user
        except Exception as e:
            return None
# 使用户名和邮箱都可以作为username登录


class LoginView(View):
    def get(self,request):
        return render(request, "login.html", {})

    def post(self,request):
        login_form = LoginForm(request.POST)
        if login_form.is_valid():  # 表单基本检查，如果不符合forms.py中的格式则返回key对应
                                # 的value错误，注意：其中的错误来自django的默认提示，
                                # 只需在前端插入if语句将errors输出，输出格式套用于label的erropput css类
            user_name = request.POST.get("username", "")  # 取用户名
            pass_word = request.POST.get("password", "")  # 取用户密码
            user = authenticate(username=user_name, password=pass_word)
            # Django判断登录名和登录名，密码和密码是否匹配
            if user is not None:  # 后端验证登录信息是否正确，不正确则返回msg用户名或密码错误
                if user.is_active:  # 验证用户是否激活了邮件地址，未激活则返回msg用户未激活
                    login(request, user)
                    return render(request, "index.html")
                else:
                    return render(request,"login.html",{'msg':'用户未激活'})
            else:
                return render(request, "login.html", {'msg': '用户名或密码错误'})

        else:
            return render(request, "login.html", {'login_form':login_form})


class LogoutView(View):  # 退出登录
    def get(self,request):
        logout(request)
        from django.core.urlresolvers import reverse
        return HttpResponseRedirect(reverse('index'))


class ActiveUserView(View):  # 用户的激活/is_active的布尔值更改为1
    def get(self,request,active_code):
        all_records = EmailVerfiyRecord.objects.filter(code=active_code)
        if all_records:
            for record in all_records:
                email = record.email
                user = UserProfile.objects.get(email=email)
                user.is_active = True
                user.save()
        else:
            return render(request, "acitve_fail.html")
        return render(request,"login.html")


class RegisterView(View):  # 用户的注册/向数据库写入username=email和password=password
    def get(self,request):
        register_form = RegisterForm()
        return render(request,"register.html",{'register_form':register_form})

    def post(self,request):
        register_form = RegisterForm(request.POST)
        if register_form.is_valid():
            user_name = request.POST.get("email", "")  # 取用户注册填写的邮箱
            if UserProfile.objects.filter(email=user_name):  # 判断用户是否已经注册过
                return render(request, "register.html", {"register_form":register_form,"msg":"该用户已注册"})
            pass_word = request.POST.get("password", "")  # 取用户注册填写的密码
            user_profile = UserProfile()  # 实例化用户类

            user_profile.username = user_name
            user_profile.email = user_name
            user_profile.password = make_password(pass_word)
            user_profile.is_active = False
            user_profile.save()
            # message
            user_message = UserMessage()
            user_message.user = user_profile.id
            user_message.message = "第一次与你相遇，却像是久别重逢"
            user_message.save()

            # 注册到数据库
            send_register_email(user_name,'register')
            return render(request,"login.html",{"msg":"验证邮件已发送！"})
        else:
            return render(request, "register.html" ,{"register_form":register_form})


class SearchView(View):  # 全局搜索未完成
    def get(self,request):
        return render(request,'search_page.html',{})


class IndexView(View):

    def get(self,request):
        all_banners = Banner.objects.all()
        return render(request,'index.html',{
            'all_banners':all_banners,
        })



# 一个错误的登录逻辑，放在这里
# def User_login(request):
#     if request.method == "POST":
#         user_name = request.POST.get("username", "")
#         pass_word = request.POST.get("password", "")
#         user = authenticate(username=user_name,password=pass_word)
#
#         if user is not None:
#             login(request,user)
#             return render(request,"index.html")
#         else:
#             return render(request,"login.html",{"msg":"用户名或密码错误"})
#     elif request.method == "GET":
#         return render(request,"login.html",{})

class UserInfoView(LoginRequiredMixin,View):  # 用户信息总页

    def get(self,request):
        return render(request,'usercenter-info.html',{})

    def post(self,request):
        user_info_form = UserInfoForm(request.POST,instance=request.user)  # 将用户填写的InfoForm实例化
        if user_info_form.is_valid():
            user_info_form.save()
            return HttpResponse('{"status":"success"}',content_type='application/json')
        else:
            return HttpResponse(json.dumps(user_info_form.errors),content_type='application/json')


class UploadImageView(LoginRequiredMixin,View):  # 修改头像
    def post(self,request):
        image_form = UploadImageForm(request.POST,request.FILES)
        if image_form.is_valid():
            image = image_form.cleaned_data['image']  # 使用form的clean.data列表把图像取出
            request.user.image = image
            request.user.save()
        return render(request,'usercenter-info.html',{})


class MyCourseView(LoginRequiredMixin,View):  # 我的课程，筛选出我的课程的model里的课程，显示

    def get(self,request):
        user_courses = UserCourse.objects.filter(user=request.user)
        return render(request,'usercenter-mycourse.html',{
            'user_courses':user_courses
        })


class MyFavView(LoginRequiredMixin,View):  # 暂时空面板

    def get(self,request):
        return render(request,'usercenter-fav-org.html',{})


class MyMessageView(LoginRequiredMixin,View):

    def get(self,request):
        all_messages = UserMessage.objects.filter(user=request.user.id)

        # 未读消息转已读
        all_unread_messages = UserMessage.objects.filter(user=request.user.id,has_read=False)
        for unread_message in all_unread_messages:
            unread_message.has_read = True
            unread_message.save()
        # 消息分页
        try:
            page = request.GET.get('page',1)
        except PageNotAnInteger:
            page = 1

        p = Paginator(all_messages,5,request=request)
        messages = p.page(page)

        return render(request,'usercenter-message.html',{
            "messages":messages,

        })


def Not_found404(request):
    from django.shortcuts import render_to_response
    response = render_to_response('404.html',{})
    response.status_code = 404
    render_to_response(response)

def Error500(request):
    from django.shortcuts import render_to_response
    response = render_to_response('500.html',{})
    response.status_code = 500
    render_to_response(response)




