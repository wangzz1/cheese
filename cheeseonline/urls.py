# _*_ coding=utf-8 _*_
"""cheeseonline URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.9/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Add an import:  from blog import urls as blog_urls
    2. Import the include() function: from django.conf.urls import url, include
    3. Add a URL to urlpatterns:  url(r'^blog/', include(blog_urls))
"""
from django.conf.urls import url,include
from django.contrib import admin
from django.views.generic import TemplateView
import xadmin
from django.views.static import serve

# from users.views import LoginView
from users.views import LoginView,RegisterView,ActiveUserView,SearchView,LogoutView,IndexView
from organization.views import OrgView
from cheeseonline.settings import MEDIA_ROOT

urlpatterns = [
    url(r'^xadmin/', xadmin.site.urls),
    url('^$',IndexView.as_view(),name="index"),
    url(r'^search/$',SearchView.as_view(),name="search_page"),
    url('^login/$',LoginView.as_view(), name="login"),
    url('^logout/$',LogoutView.as_view(), name="logout"),
    url('^register/$',RegisterView.as_view(), name="register"),
    url(r'^captcha',include('captcha.urls')),
    url(r'^active/(?P<active_code>.*)/$',ActiveUserView.as_view(),name="user_active"),

    # 机构url分发
    url(r'^org/',include('organization.urls',namespace="org")),

    # 课程url分发
    url(r'^course/',include('courses.urls',namespace="course")),

    # 配置上传文件访问处理函数
    url(r'^media/(?P<path>.*)$', serve, {"document_root":MEDIA_ROOT}),

    # 个人中心url分发
    url(r'^users/', include('users.urls', namespace="users")),

]

handler404 = 'users.views.Not_found404'
handler500 = 'users.view.Error500'

