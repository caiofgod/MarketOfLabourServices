<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/12/11/011
  Time: 22:50
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
    <title>招聘</title>
    <link rel="stylesheet" href="${base}css/homepage.css">
    <link rel="stylesheet" href="${base}css/main.css">
    <style>
        body {
            width:100%;
            height:100%;
            z-index:-10;
            min-width: 1000px;
            background-color: rgb(10, 10, 10);
            background: url('${base}image/homepage-bgc.jpg') no-repeat;
            background-size: contain;
        }
        <%--@font-face {--%>
        <%--    font-family: 'iconfont';--%>
        <%--    src: url('${base}font/iconfont.woff2?t=1639279811687') format('woff2'),--%>
        <%--    url('${base}font/iconfont.woff?t=1639279811687') format('woff'),--%>
        <%--    url('${base}font/iconfont.ttf?t=1639279811687') format('truetype');--%>
        <%--}--%>
    </style>
</head>
<body>
<div class="homepage-container">
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
                        <li><a href="${base}html/contact.jsp">联系我们</a></li>
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
    <div class="homepage-header">
        <div class="head-search">
            <input type="text" class="search-frame" placeholder=" 搜索公司或职位" maxlength="16">
            <button class="icon-butt"></button>
        </div>
    </div>
    <div class="homepage-content flex flex-content">
        <div class="work-type">
            <ul class="flex flex-column flex-content spacing-around">
                <li><a href="#">互联网/IT/电子/通信</a></li>
                <li><a href="#">房地产/建筑</a></li>
                <li><a href="#">金融业</a></li>
                <li><a href="#">教育培训/科研</a></li>
                <li><a href="#">广告/传媒/文化/体育</a></li>
                <li><a href="#">制药/医疗</a></li>
            </ul>
        </div>
        <div class="hot-industry flex flex-content">
            <div class="main-work">
                <a href="#"><img src="${base}image/hot-work3.png" width="450" height="192" alt="!" class="head-img"></a>
            </div>
            <div class="add-work">
                <ul class="flex flex-column flex-content">
                    <li class="work-img"><a href="#"><img src="${base}image/hot-work1.jpg" width="755" height="434" alt="!" ></a></li>
                    <li class="work-img"><a href="#"><img src="${base}image/hot-work.png" width="800" height="444" alt="!"></a></li>
                    <li class="work-img"><a href="#"><img src="${base}image/hot-work2.jpg" width="432" height="210" alt="!"></a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="homepage-footer flex flex-content spacong-bentween">
        <div class="foot-left">
            <h3>热招职位</h3>
            <span><a href="#">更多>></a></span>
            <ul>
                <li><a href="#">HRBP</a></li>
                <li><a href="#">人力资源专员</a></li>
                <li><a href="#">iOS开发工程师</a></li>
                <li><a href="#">市场推广经理</a></li>
                <li><a href="#">运营专员(数据分析)</a></li>
                <li><a href="#">网站编辑</a></li>
            </ul>
        </div>
        <div class="footer-mid">
            <h3>长招职位</h3>
            <span><a href="#">更多>></a></span>
            <p>iOS开发工程师</p>
        </div>
        <div class="foot-right">
            <img src="${base}image/homepage-code.jpg" width="500" height="500" alt="!">
        </div>
    </div>
</div>
</body>
</html>
