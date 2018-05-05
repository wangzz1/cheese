# _*_ coding=utf-8 _*_
from __future__ import unicode_literals
from datetime import datetime

from django.db import models
from organization.models import CourseOrg,Teacher


# Create your models here.


class Course(models.Model):
    course_org = models.ForeignKey(CourseOrg,verbose_name=u"所属课程机构",null=True,blank=True)
    name = models.CharField(max_length=50,verbose_name=u"课程名")
    desc = models.CharField(max_length=300,verbose_name=u"课程描述")
    detail = models.TextField(verbose_name=u"课程详情")
    teacher = models.ForeignKey(Teacher,verbose_name=u"机构教师",null=True,blank=True)
    degree = models.CharField(choices=(("cj",u"初级"),("zj",u"中级"),("gj",u"高级")),max_length=2,verbose_name=u"难度")
    learn_times = models.IntegerField(default=0,verbose_name=u"学习时长(分钟数)")
    students = models.IntegerField(default=0,verbose_name=u"学习人数")
    fav_nums = models.IntegerField(default=0,verbose_name=u"收藏人数")
    image = models.ImageField(upload_to="courses/%Y/%m",verbose_name=u"封面图",max_length=100)
    click_nums = models.IntegerField(default=0,verbose_name=u"点击数")
    tag = models.CharField(default="", verbose_name=u"课程标签", max_length=20)
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")
    teacher_tell = models.CharField(default='', max_length=250, verbose_name=u"课程教师寄语")

    class Meta:
        verbose_name = u"课程"
        verbose_name_plural = verbose_name

    def les_nums(self):  # 获取章节数
        return self.lesson_set.all().count()

    def get_learm_user(self):  # 获取5个最近学习此课程的用户用于展示
        return self.usercourse_set.all()[:5]

    def get_course_lesson(self):  # 获取所有章节
        return self.lesson_set.all()

    def __unicode__(self):
        return self.name


class Lesson(models.Model):
    course = models.ForeignKey(Course,verbose_name=u"课程")
    name = models.CharField(max_length=100,verbose_name=u"章节名")
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")

    class Meta:
        verbose_name = u"章节"
        verbose_name_plural = verbose_name

    def get_lesson_video(self):  # 获取章节视频
        return self.video_set.all()

    def __unicode__(self):
        return self.name


class Video(models.Model):
    lesson = models.ForeignKey(Lesson,verbose_name=u"章节")
    name = models.CharField(max_length=100, verbose_name=u"视频名")
    url = models.CharField(max_length=300,verbose_name=u"视频地址",default="",null=True,blank=True)
    my_url = models.FileField(verbose_name=u"视频文件",upload_to='courses/%Y/%m',null=True,blank=True)
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")

    class Meta:
        verbose_name = u"视频"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.name
