# _*_ coding=utf-8 _*_

from .models import CourseComments,UserFavorite,UserMessage,UserCourse,UserBlog
import xadmin


class CourseCommentsAdmin(object):
    list_display = ['user','course','comments','add_time']
    search_fields = ['user','course','comments']
    list_filter = ['user','course','comments','add_time']


class UserFavoriteAdmin(object):
    list_display = ['user','fav_id','fav_type','add_time']
    search_fields = ['user','fav_id','fav_type']
    list_filter = ['user','fav_id','fav_type','add_time']


class UserMessageAdmin(object):
    list_display = ['user','message','has_read','add_time']
    search_fields = ['user','message','has_read']
    list_filter = ['user','message','has_read','add_time']


class UserCourseAdmin(object):
    list_display = ['user','course','add_time']
    search_fields = ['user','course']
    list_filter = ['user','course','add_time']


class UserBlogAdmin(object):
    list_display = ['user','content','add_time']
    search_fields = ['user','content']
    list_filter = ['user','content','add_time']


xadmin.site.register(CourseComments,CourseCommentsAdmin)
xadmin.site.register(UserFavorite,UserFavoriteAdmin)
xadmin.site.register(UserMessage,UserMessageAdmin)
xadmin.site.register(UserCourse,UserCourseAdmin)
xadmin.site.register(UserBlog,UserBlogAdmin)