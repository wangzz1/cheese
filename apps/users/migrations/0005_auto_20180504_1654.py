# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2018-05-04 16:54
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0004_auto_20180430_2350'),
    ]

    operations = [
        migrations.AlterField(
            model_name='userprofile',
            name='address',
            field=models.CharField(default='', max_length=100, verbose_name='\u5730\u5740'),
        ),
        migrations.AlterField(
            model_name='userprofile',
            name='mobile',
            field=models.CharField(blank=True, max_length=20, null=True, verbose_name='\u624b\u673a\u53f7'),
        ),
    ]
