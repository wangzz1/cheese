# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2018-05-03 22:36
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0007_video_my_url'),
    ]

    operations = [
        migrations.AlterField(
            model_name='video',
            name='url',
            field=models.CharField(blank=True, default='', max_length=300, null=True, verbose_name='\u89c6\u9891\u5730\u5740'),
        ),
    ]
