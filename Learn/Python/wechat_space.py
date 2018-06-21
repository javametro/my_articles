# -*- coding: utf-8 -*-
import hashlib
import web
import lxml
import time
import os
import urllib2, json
import re
import random
import hashlib
import cookielib
from urllib import urlencode
from lxml import etree
from smtplib import SMTP_SSL
from email.header import Header
from email.mime.text import MIMEText

class WeixinInterface:
	def __init__(self):
		self.app_root = os.path.dirname(__file__)
		self.templates_root = os.path.join(self.app_root, 'templates')
		self.render = web.template.render(self.templates_root)
	

	def GET(self):
		data = web.input()
		signature = data.signature
		timestamp = data.timestamp
		nonce = data.nonce
		echostr = data.echostr
		token = "weixin9047"
		list = [token, timestamp, nonce]
		list.sort()
		sha1 = hashlib.sha1()
		map(sha1.update, list)
		hashcode = sha1.hexdigest()
		
		if hashcode == signature:
			return echostr

	def POST(self):
		str_xml = web.data()
		xml = etree.fromstring(str_xml)
		content = xml.find("Content").text
		msgType = xml.find("MsgType").text
		fromUser = xml.find("FromUserName").text
		toUser = xml.find("toUserName").text
		if(content == u"weather"):
			url = "http://m.ip138.com/21/shenzhen/tianqi"
			headers = {
				'Connection' : 'Keep-Alive',
				'Accept' : 'text/html, application/xhtml+xml, */*',
				'Accept-Language' : 'en-US, en; q=0.8, zh-Hans-CN; q=0.5, zh-Hans; q=0.3',
				'User-Agent' : 'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko'
			}

			req = urllib2.Request(url, headers=headers)
			opener = urllib2.urlopen(req)
			html = opener.read()
			rex = r'(?<=img src="/image/s[0-9].gif" alt=").{1,6}(?=" />)'
			rexx = r'(?<=div class="temperature">).{5,15}(?=</div>)'
			n = re.findall(rex, html)
			m = re.findall(rexx, html)
			str_weather = ""
			for(i, j) in zip(m, n):
				str_weather = str_weather + j + "	" + i + "\n"
			return self.render.repl_text(fromUser, toUser, int(time.time()), "last 5 days weather:\n" + str_weather)
		elif(content[0:4] == u"film"):
			keyword = urllib.quote(content[4:].encode("utf-8"))
			url = "http://www.wangpansou.cn/s.php?q=" + keyword
			headers = {
		
			}	
