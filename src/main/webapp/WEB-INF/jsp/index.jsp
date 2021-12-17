<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/12/11/011
  Time: 18:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
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
    <title>登录页面</title>
    <style>
        body{
            margin: 0;
            padding: 0;
            font-family: "宋体";
            font-size: 14px;
            min-width: 1200px;
            background: #ffffff;
        }
        .list-main{
            width: 1200px;
            margin: 15px auto;
            height: auto;
            overflow: hidden;
        }
        div{
            display:block;
            margin:0;
            padding:0;
        }
        .list-main-left{
            float:left;
            width:225px;
        }
        .list-main-left .this-lmname{
            width: 205px;
            height: 80px;
            border-top: #013e1d 2px solid;
            background: #368cb6;
            padding: 20px 0 0 20px;
        }
        .list-main-left .this-lmname h1{
            font-size: 28px;
            color: #ffffff;
            line-height: 30px;
            margin: 0;
            padding: 0;
        }
        .list-main-left .this-lmname h3{
            font-size: 14px;
            color: #0f617e;
            line-height: 30px;
            margin: 0;
            padding: 0;
        }
        .list-sub{
            width: 225px;
            height: auto;
            overflow: hidden;
            margin-top: 1px;
        }
        .list-sub li{
            height: 43px;
            width: 225px;
            overflow: hidden;
        }
        .list-sub li a {
            height: 42px;
            line-height: 42px;
            width: 225px;
            display: block;
<%--            <c:url var="img1" value="/image/list_sub_bg.png"/>--%>
            background: url('${base}image/list_sub_bg.png') 190px center no-repeat #ececec;
            border-bottom: #d6d6d6 1px solid;
            font-size: 14px;
            padding-left: 25px;
        }
        a {
            text-decoration: none;
            color: #666666;
        }
        ul,li{
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: list-item;
            text-align: -webkit-match-parent;
        }
        .list-main-right{
            float: right;
            width: 870px;
            border-top: #0f617e 2px solid;
            border-left: #e5e5e5 1px solid;
            border-right: #e5e5e5 1px solid;
            border-bottom: #e5e5e5 1px solid;
            min-height: 800px;
            padding: 0 40px;
            background: #fcfcfc;
            overflow: hidden;
        }
        .list-main-right .lm_name{
<%--            <c:url value="/image/lmname-line.png" var="img2"/>--%>
            background: url('${base}image/lmname-line.png') left bottom no-repeat;
            height: 50px;
            line-height: 50px;
        }
        .list-main-right .lm_name h2 {
            float: left;
            width: 155px;
            font-size: 18px;
            color: #333333;
            font-weight: bold;
        }
        .list-main-right .lm_name span {
            float: right;
            color: #666666;
            font-size: 12px;
        }
        .list-main-right .lm_name span a {
            color: #666666;
        }
        .fy-list{
            height: auto;
            margin: 0 auto;
            padding: 20px 0;
        }
        .xtrk-box-b{
            width:100%;
            height: auto;
            box-sizing: border-box;
            overflow:hidden;
        }
        .xtrk-box-b>dl{
            display: block;
            margin: 0 12px 45px 14px;
            width: 325px;
            height: auto;
            float: left;
        }
        .xtrk-box-b>dl>dd {
            height: auto;
        }
        dd {
            display: block;
            margin-inline-start: 40px;
        }
        .xtrk-box-b>dl>dd img {
            width: 100%;
            height: auto;
        }
        img {
            border: none;
        }
    </style>
</head>
<body>
<div class="list-main">
    <div class="list-main-left ">
        <div class="this-lmname">
            <h1>首页</h1>
            <h3>THIS NAME</h3>
        </div>
        <div class="list-sub">
            <ul>
                <li><a href="">测试一</a></li>
                <li><a href="">测试二</a></li>
                <li><a href="">测试三</a></li>
                <li><a href="">测试四</a></li>
                <li><a href="">测试五</a></li>
                <li><a href="">测试六</a></li>
                <li><a href="">测试七</a></li>
                <li><a href="">测试八</a></li>
                <li><a href="">测试九</a></li>
            </ul>
        </div>
    </div>
    <div class="list-main-right">
        <div class="lm_name">
            <h2>劳务管理系统</h2>
            <span>当前位置：
                <a href="index">首页</a>
                &gt;&gt;
                <a href="">劳务管理系统</a>
            </span>
        </div>
        <div class="fy-list">
            <div class="xtrk-box-b">
                <dl>
                    <dd>
                        <a target="_blank" href="enterprise/logon">
                            <img src="${base}image/qyd.png">
                        </a>
                    </dd>
                </dl>
                <dl>
                    <dd>
                        <a target="_blank" href="seeker/home">
                        <img src="${base}image/qzd.png">
                        </a>
                    </dd>
                </dl>
            </div>
        </div>
    </div>
</div>
</body>
</html>
