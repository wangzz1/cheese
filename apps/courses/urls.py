# _*_ coding:utf-8 _*_
from django.conf.urls import url,include
from views import CourseListView,CourseDetailView,CourseInfoView,CourseCommentView,AddCommentsView,VideoPlayView

urlpatterns = [
    # 所有课程列表页url
    url(r'^list/$',CourseListView.as_view(),name="course_list"),
    # 课程详情页
    url(r'^detail/(?P<course_id>\d+)/$',CourseDetailView.as_view(),name="course_detail"),
    # 课程目录页
    url(r'^info/(?P<course_id>\d+)/$', CourseInfoView.as_view(), name="course_info"),
    # 课程评论页
    url(r'^comment/(?P<course_id>\d+)/$', CourseCommentView.as_view(), name="course_comment"),

    url(r'^add_comment/$', AddCommentsView.as_view(), name="add_comment"),

    url(r'^video/(?P<video_id>\d+)/$',VideoPlayView.as_view(),name="video_play"),

]