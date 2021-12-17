<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/12/11/011
  Time: 22:50
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
    <title>Document</title>
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/com-decription.css">
    <style>
        .bgc-img{
            width: 100%;
            height: 240px;
            background-color: rgb(10, 10, 10);
            background:url('${base}image/contact/head-image.jpg') no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body>
<div class="com-description">
    <div class="bgc-img"></div>
    <div class="com-detail">
        <div class="com-box">
            <div class="intro-head">
                <h2>公司介绍</h2>
                <p class="get"><a href="enterprise/getResumeList">查看已收简历</a></p>
                <p class="set"><a href="enterprise/setposition">发布招聘信息</a></p>
                <div style="width:80%;height:1px; background-color:#ccc;margin:auto"></div>
            </div>
            <div class="com-content">
                <ul>
                    <li>
                        <p><b>公司名称:</b>${sessionScope.enterprise.name}</p>
                    </li>
                    <li>
                        <p><b>公司类型:</b>${sessionScope.enterprise.type}</p>
                    </li>
                    <li>
                        <p><b>公司规模:</b>${sessionScope.enterprise.scale}</p>
                    </li>
                    <li>
                        <p><b>官网:</b>www.baidu.com</p>
                    </li>
                    <li>
                        <p><b>公司简介:</b></p>
                        <p>
                            ${sessionScope.enterprise.introduction}
                        </p>
                        <p>本公司2000年1月1日创立于中关村，公司创始人李彦宏拥有“超链分析”技术专利，也使中国成为美国、俄罗斯、和韩国之外，全球仅有的4个拥有搜索引擎核心技术的国家之一。百度每天响应来自100余个国家和地区的数十亿次搜索请求，是网民获取中文信息和服务的最主要入口，服务10亿互联网用户。
                        </p>
                    </li>
                    <li>
                        <p>
                            <b>详细地址:</b>
                            ${sessionScope.enterprise.province}
                            ${sessionScope.enterprise.city}
                            ${sessionScope.enterprise.county}
                            ${sessionScope.enterprise.detail}
                        </p>
                    </li>
                </ul>
            </div>
        </div>


    </div>
</div>
</body>
</html>
