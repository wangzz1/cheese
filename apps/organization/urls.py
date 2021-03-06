# _*_ coding:utf-8 _*_
from django.conf.urls import url,include
from .views import OrgView,OrgHomeView,OrgCourseView,OrgTeacherView,OrgDescView,AddFavView,TeacherListView,TeacherDetailView

urlpatterns = [
    # 课程机构列表页url
    url(r'^list/$',OrgView.as_view(),name="org_list"),
    url(r'^home/(?P<org_id>\d+)/$',OrgHomeView.as_view(),name='org_home'),
    url(r'^course/(?P<org_id>\d+)/$',OrgCourseView.as_view(),name='org_course'),
    url(r'^teacher/(?P<org_id>\d+)/$',OrgTeacherView.as_view(),name='org_teacher'),
    url(r'^desc/(?P<org_id>\d+)/$',OrgDescView.as_view(),name='org_desc'),

    # 课程机构收藏
    url(r'^add_fav/$',AddFavView.as_view(),name='add_fav'),
    # 教师列表
    url(r'^teacher/list/$',TeacherListView.as_view(),name="teacher_list"),
    # 教师详情页
    url(r'^teacher/detail/(?P<teacher_id>\d+)/$',TeacherDetailView.as_view(),name='teacher_detail'),


]