# -*- coding:utf-8 -*-
from random import Random
from django.core.mail import send_mail

from users.models import EmailVerfiyRecord
from cheeseonline.settings import EMAIL_FROM

# 生成随机字符串
def random_str(randomlength=8):
    str = ''
    chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'
    lenth = len(chars) - 1
    random = Random()
    for i in range(randomlength):
        str = str + chars[random.randint(0,lenth)]
    return str


# 发送注册邮件
def send_register_email(email,send_type="register"):
    email_record = EmailVerfiyRecord()
    yanzheng = random_str(20)

    email_record.code = yanzheng
    email_record.email = email
    email_record.send_type = send_type

    email_record.save()

    email_title = ""
    email_body = ""

    if send_type == "register":
        email_title = "cheese——知识就是力量！"
        email_body = "请点击链接激活账号:http://127.0.0.1:8000/active/{0}".format(yanzheng)

        send_status = send_mail(email_title,email_body,EMAIL_FROM,[email])
        if send_status:
            pass






