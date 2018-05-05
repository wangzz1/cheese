# _*_ coding:utf-8 _*_
from django.http import HttpResponse
from django.shortcuts import render
from django.views.generic.base import View
from pure_pagination import Paginator,EmptyPage,PageNotAnInteger

from models import Course,Video
from operation.models import CourseComments, UserCourse
from utils.mix_in_utils import LoginRequiredMixin


# Create your views here.


class CourseListView(View):  # 公开课页面
    def get(self,request):
        all_courses = Course.objects.all().order_by("-click_nums")

        # 课程排序
        sort = request.GET.get('sort', "")
        if sort:
            if sort == "add_time":
                all_courses = all_courses.order_by("-add_time")

    # 给课程分页
        try:
            page = request.GET.get('page',1)
        except PageNotAnInteger:
            page = 1

        p = Paginator(all_courses,9,request=request)
        courses = p.page(page)

        return render(request,'course-list.html',{
            "all_courses":courses,
            "sort":sort,

        })


class CourseDetailView(View):  # 课程（简介）信息页面

    def get(self,request,course_id):
        course = Course.objects.get(id=int(course_id))
        course.click_nums += 1
        course.save()

        tag = course.tag
        if tag:
            relate_courses = Course.objects.filter(tag=tag)[:3]
        else:
            relate_courses = []

        return render(request,'course-detail.html',{
            "course":course,
            "relate_courses":relate_courses
        })


class CourseInfoView(LoginRequiredMixin,View):  # 课程章节页面

    def get(self, request, course_id):
        course = Course.objects.get(id=int(course_id))
        course.students += 1
        course.save()

        return render(request, "course-video.html", {
            "course":course,
        })


class CourseCommentView(LoginRequiredMixin,View):  # 课程留言页
    def get(self,request,course_id):
        course = Course.objects.get(id=int(course_id))
        all_Comments = CourseComments.objects.filter(course=course).order_by("-add_time")

        return render(request, "course-comment.html", {
            "course": course,
            "all_Comments":all_Comments
        })


class AddCommentsView(View):  # 增加用户评论
    def post(self,request):
        if not request.user.is_authenticated():  # 判断登录状态
            return HttpResponse('{"status":"fail","msg":"用户未登录"}',content_type='application/json')

        course_id = request.POST.get("course_id",0)
        comments = request.POST.get("comments","")
        if course_id > 0 and comments:
            # 简单的逻辑，course_comments是数据库中的评论，目的是把用户的名字，评论内容，添加时间？加入数据库
            course_comments = CourseComments()
            course = Course.objects.get(id=int(course_id))  # 取评论者的用户名
            course_comments.course = course  # 新课程
            course_comments.comments = comments  # 新评论
            course_comments.user = request.user  # 新用户名
            course_comments.save()
            return HttpResponse('{"status":"success","msg":"评论成功"}',content_type='application/json')
        else:
            return HttpResponse('{"status":"fail","msg":"评论失败"}', content_type='application/json')


class VideoPlayView(View):
    def get(self,request,video_id):
        video = Video.objects.get(id=int(video_id))
        course = video.lesson.course
        course.students += 1
        course.save()
        return render(request, "course-play.html", {
            "course": course,
            "video":video
        })
