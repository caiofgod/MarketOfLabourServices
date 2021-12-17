<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/12/16/016
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-cn">
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
    <title>校园招聘</title>
    <link rel="stylesheet" href="css/homepage.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/jobFair.css">
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
<div class="pic">
    <img src="${base}image/contact/head-img.jpg" alt="">
</div>
<div class="contain">
    <div class="left">
        <div class="schWant">
            <ul>
                <li>校园招聘</li>
                <li class="hover"><a href="jobFairRoute.jsp"> <img src="${base}image/contact/job-checked.png">校招行程</a></li>
                <li class="last hover"><a href="jobFairFlow.jsp"><img src="${base}image/contact/job-checked.png">招聘流程</a> </li>
            </ul>
        </div>
        <div class="dynamic">
            <div class="t"><img src="${base}image/contact/job-checked.png">招聘动态</div>
            <div class="dynamicContent"><img src="${base}image/contact/job-rectangle.png">暂无内容</div>
        </div>
    </div>
    <div class="right">
        <div class="title"><img src="${base}image/contact/job-checked.png">&emsp;&emsp;&emsp;&emsp;&emsp;校招行程</div>
        <div class="travelContent">
            <table>
                <tr>
                    <th>地区</th>
                    <th>目标院校</th>
                    <th>时间</th>
                    <th>场地</th>
                </tr>
                <tr>
                    <td>上海</td>
                    <td>同济大学（四平路）</td>
                    <td>10月20日<br>15:00-17:00</td>
                    <td>经纬楼3楼演讲厅</td>
                </tr>
                <tr>
                    <td>上海</td>
                    <td>同济大学（四平路）</td>
                    <td>10月20日<br>15:00-17:00</td>
                    <td>经纬楼3楼演讲厅</td>
                </tr>
                <tr>
                    <td>上海</td>
                    <td>同济大学（四平路）</td>
                    <td>10月20日<br>15:00-17:00</td>
                    <td>经纬楼3楼演讲厅</td>
                </tr>
            </table>
        </div>
    </div>
</div>
</body>
</html>
