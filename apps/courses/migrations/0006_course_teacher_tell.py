# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2018-05-03 14:13
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0005_course_teacher'),
    ]

    operations = [
        migrations.AddField(
            model_name='course',
            name='teacher_tell',
            field=models.CharField(default='', max_length=250, verbose_name='\u8bfe\u7a0b\u6559\u5e08\u5bc4\u8bed'),
        ),
    ]
