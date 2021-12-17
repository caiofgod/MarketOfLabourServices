<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/12/16/016
  Time: 20:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}"/>
    <script>
        <c:set var="nostring" value=""/>
        <c:if test="${!nostring.equals(requestScope.alert)&&requestScope.alert!=null}">
        alert("${requestScope.alert}")
        </c:if>
    </script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>联系我们</title>
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/contact.css">
    <style>

    </style>
</head>
<body>
<div class="bgc-img">
    <div class="banner flex flex-center spacing-around">
        <div class="ban-left flex flex-content">
            <div class="ban-logo">
                <h1>招聘</h1>
                <img src="${base}image/homepage-logo.png">
                <span></span>
            </div>
            <div class="ban-title">
                <ul class="flex flex-content">
                    <li><a href="seeker/home">首页</a></li>
                    <li><a href="html/social-recruit.jsp">社会招聘</a></li>
                    <li class="pull-list">
                        <a href="html/school-recruit.jsp">校园招聘</a>
                        <ul class="pull-list-item">
                            <li><a href="html/jobFairRoute.jsp">校招行程</a></li>
                            <li><a href="html/jobFairFlow.jsp">校招流程</a></li>
                        </ul>
                    </li>
                    <li><a href="html/contact.jsp">联系我们</a></li>
                </ul>
            </div>
        </div>
        <div class="ban-right">
            <ul class="flex flex-content">
                <li><a href="seeker/register">注册</a></li>
                <li><a href="seeker/logon">登录</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="container flex flex-column">
    <div class="con-content flex ">
        <div class="con-left flex flex-column flex-between">
            <div class="con-top">
                <p class="con-page"><a href="#">联系我们</a></p>
            </div>
            <div class="con-bottom">
                <p class="con-page"><a href="#">招聘动态</a></p>
                <div style="width:80%;height:1px; background-color:#ccc;margin: 0 auto"></div>
                <p class="con-page">暂无内容</p>
            </div>
        </div>
        <div class="con-right flex flex-column flex-between">
            <p class="con-page">联系我们</p>
            <div style="width:80%;height:1px; background-color:#ccc;margin: 0 auto"></div>
            <div class="office-loc">
                <h3>xx路办公点</h3>
                <ul>
                    <li>地址</li>
                    <li>电话</li>
                    <li>传真</li>
                    <li>邮件</li>
                </ul>
            </div>
            <div class="office-loc">
                <h3>xx路办公点</h3>
                <ul>
                    <li>地址</li>
                    <li>电话</li>
                    <li>传真</li>
                    <li>邮件</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="con-footer">
        <div style="width:80%;height:1px; background-color:#ccc;margin: 0 auto"></div>
        <p class="foot-page">©2016  上海二三四五网络科技有限公司  京ICP备05051632号 京公网安备 11010802020454号</p>
    </div>
</div>
</body>
</html>
