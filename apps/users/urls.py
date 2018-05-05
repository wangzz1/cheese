# _*_ coding=utf-8 _*_
from django.conf.urls import url,include
from .views import UserInfoView,UploadImageView,MyCourseView,MyFavView,MyMessageView

urlpatterns = [
    # 用户信息
    url(r'^info/$',UserInfoView.as_view(),name="user_info"),
    # 头像上传
    url(r'^image/upload/$',UploadImageView.as_view(),name="image_upload"),
    # 邮箱重置未完成
    # 找回密码未完成
    # 我的课程
    url(r'^mycourse/$',MyCourseView.as_view(),name="my_course"),
    #我的收藏——未完成
    url(r'^myfav/$',MyFavView.as_view(),name="my_fav"),
    #我的系统消息
    url(r'^mymessage/$',MyMessageView.as_view(),name="my_message"),
]