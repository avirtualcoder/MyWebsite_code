import requests
import re
from bs4 import BeautifulSoup
import pandas as pd

def get_news_link(url):                                     #提取新闻链接
    html=requests.get(url)                                 #保存响应html流
    soup=BeautifulSoup(html.text,features='html.parser')    #解析html源码为Unicode文档，soup实例对象
    a=soup.find_all('li',class_="category-content")         #根据网页构造提取标签，提取class为category-content的li标签，含标签
    links=[]
    for i in a:
        link=i.a.get('href')                                #因为a标签在li标签下，所以tag.a.get(attr)的方式来提取标签属性中的内容
        links.append(link)
    return links                                                 #返回新闻链接列表列表

def get_news(url):                       #获取新闻标题，时间及内容
    html=requests.get(url)               #保存响应请求url的html流
    soup=BeautifulSoup(html.text,features='html.parser')        #选择解析器解析html
    Title=soup.find_all('div',class_='single-newstitle')        #根据tag，class,id等信息从soup对象中提取信息成结果集含标签
    Time=soup.find_all(class_='single-newstime')                #结果为一个bs4的结果集<class 'bs4.element.ResultSet'>
    Content=soup.find_all('div',class_='single-content')        #这些提取方式可用正则表达式提取，不用解析为soup对象即可正则匹配
    # all_connent=soup.find_all('div',{"class":"page"})

    for i in Title:                             #迭代提取标题结果集中的字符串并去标签 .string为标签中第一个的字符串，get_text为所有
        title.append(i.get_text())
        print('标题：  '+i.get_text())

    for i in Time:
        time.append(i.get_text())
        print("时间：  "+i.get_text())

    for i in Content:
        str_text=i.get_text()        #获取single-content内容div标签里的文本

        dict = {'0': '零', '1': '一', '2': '二', '3': '三', '4': '四', '5': '五', '6': '六', '7': '七', '8': '八', '9': '九'}
        for j in dict.keys():       #将文本中的数字汉化
            str_text=str_text.replace(j,dict[j])

        txt=re.findall(r'[\u4e00-\u9fa5]+',str_text)     #正则表达式匹配出所有汉字成列表---正则提取方法
        middle=''
        txt=middle.join(txt)
        content.append(txt)                 #用middle字符串连接列表中的字符串
        print("正文：  "+txt)

id=[]
title=[]
time=[]
content=[]
number=0
url='http://web.fosu.edu.cn/school-news/'
for page in range(1,11):
    a=get_news_link(url)
    for link in a:
         get_news(link)
         number=number+1
         id.append(number)
         print('当前爬了{}篇\n'.format(number))
    url = 'http://web.fosu.edu.cn/school-news/page/' + str(page)

#用pandas库写入本地存为CSV文件
dataframe=pd.DataFrame({'id':id,'title':title,'time':time,'content':content})       #定义列名及分配值列表
dataframe.to_csv('./news.csv',index=False)                                      #文件路径和行名显示否
print('title 长为：{} \ntime长为：{}\nid长为：{}\ncontent 长为：{}'.format(len(title),len(time),len(id),len(content)))