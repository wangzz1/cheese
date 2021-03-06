# _*_ coding=utf-8 _*_
from .models import Course,Lesson,Video
import xadmin


class CourseAdmin(object):
    list_display = ['name','desc','detail','degree','learn_times','students','fav_nums','image','click_nums','add_time']
    search_fields = ['name','desc','detail','degree','learn_times','students','fav_nums','image','click_nums']
    list_filter = ['name','desc','detail','degree','learn_times','students','fav_nums','image','click_nums','add_time']
    exclude = ['click_nums', 'fav_nums']


class LessonAdmin(object):
    list_display = ['course','name','add_time']
    search_fields = ['course','name']
    list_filter = ['course__name','name','add_time']


class VideoAdmin(object):
    list_display = ['lesson','name','add_time']
    search_fields = ['lesson','name']
    list_filter = ['lesson','name','add_time']


xadmin.site.register(Course,CourseAdmin)
xadmin.site.register(Lesson,LessonAdmin)
xadmin.site.register(Video,VideoAdmin)