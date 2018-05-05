# _*_ coding=utf-8 _*_
import json
from django.shortcuts import render
from django.views.generic import View
from pure_pagination import Paginator,EmptyPage,PageNotAnInteger
from django.http import HttpResponse

from .models import CourseOrg,CityDict,Teacher
from operation.models import UserFavorite
from courses.models import Course
# Create your views here.


class OrgView(View):
    # 课程机构列表
    def get(self,request):
        all_orgs = CourseOrg.objects.all()  # 课程机构

        all_citys = CityDict.objects.all()  # 城市

        # 取出筛选城市
        city_id = request.GET.get('city',"")
        if city_id:  # 如果狗日的用户想要进行城市筛选，它点下了按钮
            all_orgs = all_orgs.filter(city_id=int(city_id))  # 筛选出来了...

        # 取出筛选机构类别
        category = request.GET.get('ct',"")
        if category:
            all_orgs = all_orgs.filter(catrgory=category)

        org_nums = all_orgs.count()  # 用count函数统计机构数目

        # 取出筛选学习人数
        sort = request.GET.get('sort',"")
        if sort:
            if sort == "students":
                all_orgs = all_orgs.order_by("-students")
            elif sort == "courses":
                all_orgs = all_orgs.order_by("-course_nums")



        # 对机构进行分页 https://github.com/jamespacileo/django-pure-pagination
        try:
            page = request.GET.get('page',1)
        except PageNotAnInteger:
            page = 1

        p = Paginator(all_orgs,5,request=request)
        orgs = p.page(page)

        return render(request,"org-list.html",{
            "all_orgs":orgs,
            "all_citys":all_citys,
            "org_nums":org_nums,
            "city_id":city_id,
            "category":category,
            "sort":sort,
        })


class OrgHomeView(View):
    # 机构首页,其实叫Orglist更好
    def get(self,request,org_id):
        current_page = "home"
        course_org = CourseOrg.objects.get(id=int(org_id))
        course_org.click_nums += 1
        course_org.save()
        all_courses = course_org.course_set.all()[:3]
        all_teachers = course_org.teacher_set.all()[:1]
        return render(request,'org-detail-homepage.html',{
            'all_courses':all_courses,
            'all_teachers':all_teachers,
            'course_org':course_org,
            'current_page':current_page
        })


class OrgCourseView(View):
    # 机构细分页之1
    def get(self,request,org_id):
        current_page = "course"
        course_org = CourseOrg.objects.get(id=int(org_id))
        all_courses = course_org.course_set.all()
        return render(request,'org-detail-course.html',{
            'all_courses':all_courses,
            'course_org':course_org,
            'current-page':current_page
        })


class OrgTeacherView(View):
    # 机构细分页之2
    def get(self,request,org_id):
        current_page = "teacher"
        course_org = CourseOrg.objects.get(id=int(org_id))
        all_teachers = course_org.teacher_set.all()
        return render(request,'org-detail-teachers.html',{
            'all_teachers':all_teachers,
            'course_org':course_org,
            'current_page':current_page
        })


class OrgDescView(View):
    # 机构细分页之3
    def get(self,request,org_id):
        current_page = "desc"
        course_org = CourseOrg.objects.get(id=int(org_id))
        return render(request,'org-detail-desc.html',{
            'course_org':course_org,
            'current-page':current_page
        })


class AddFavView(View):
    # 用户收藏
    def post(self,request):
        fav_id = request.POST.get('fav_id',0)
        fav_type = request.POST.get('fav_type',0)

        if not request.user.is_authenticated():
            return HttpResponse('{"status":"fail", "msg":"用户未登录"}', content_type='application/json')
        exist_records = UserFavorite.objects.filter(user=request,fav_id=int(fav_id),fav_type=int(fav_type))
        if exist_records:
            exist_records.delete()
        else:
            user_fav_new = UserFavorite()
            if int(fav_id) > 0 and int(fav_type) > 0:
                user_fav_new.fav_id = int(fav_id)
                user_fav_new.fav_type = int(fav_type)
                user_fav_new.save()


class TeacherListView(View):  # 教师列表
    def get(self,request):
        all_teachers = Teacher.objects.all()

        sort = request.GET.get('sort',"")
        if sort:
            if sort == "hot":
                all_teachers = all_teachers.order_by('-click_nums')

        try:
            page = request.GET.get('page',1)
        except PageNotAnInteger:
            page = 1

        p = Paginator(all_teachers,4,request=request)
        teachers = p.page(page)

        return render(request,'teachers-list.html',{
            "all_teachers":teachers,
            "sort":sort,
        })


class TeacherDetailView(View):
    def get(self, request, teacher_id):
        teacher = Teacher.objects.get(id=int(teacher_id))
        teacher.click_nums += 1
        teacher.save()
        all_courses = Course.objects.filter(teacher=teacher)

        has_teacher_faved = False
        if request.user.is_authenticated():
            if UserFavorite.objects.filter(user=request.user, fav_type=3, fav_id=teacher.id):
                has_teacher_faved = True

        has_org_faved = False
        if request.user.is_authenticated():
            if UserFavorite.objects.filter(user=request.user, fav_type=2, fav_id=teacher.org.id):
                has_org_faved = True

        return render(request, "teacher-detail.html", {
            "teacher":teacher,
            "all_courses":all_courses,
            "has_teacher_faved": has_teacher_faved,
            "has_org_faved":has_org_faved
        })
