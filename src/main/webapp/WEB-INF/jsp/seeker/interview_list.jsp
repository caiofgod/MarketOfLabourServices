<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/12/16/016
  Time: 22:17
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
    <title>Title</title>
    <link rel="stylesheet" href="css/list.css">
</head>
<body>
<div class="contain">
    <div class="topTittle">
        <div class="title">所有简历</div>
        <img src="${base}image/list/downArrow.png" alt="">
    </div>
    <div class="content interview">
        <ul>
            <li>
                <div class="onePiece">
                    <div class="topLine row">
                        <div class="post col-md-2"><a href="">&emsp;&emsp;店长</a></div>
                        <div class="company col-md-4">建湖玛格全屋定制</div>
                        <div class="salary col-md-2">7000~18000元</div>
                        <div class="position col-md-2">近湖镇</div>
                        <div class="date col-md-2">2021-08-16</div>
                    </div>
                    <div class="detail">
                        &emsp;&emsp;全职 / 25-40K
                        <button>接受面试</button>
                        <button>拒绝面试</button>
                    </div>
                </div>
            </li>
            <li>
                <div class="onePiece">
                    <div class="topLine row">
                        <div class="post col-md-2"><a href="">&emsp;&emsp;店长</a></div>
                        <div class="company col-md-4">建湖玛格全屋定制</div>
                        <div class="salary col-md-2">7000~18000元</div>
                        <div class="position col-md-2">近湖镇</div>
                        <div class="date col-md-2">2021-08-16</div>
                    </div>
                    <div class="detail">
                        &emsp;&emsp;全职 / 25-40K
                        <button>接受面试</button>
                        <button>拒绝面试</button>
                    </div>
                </div>
            </li>
            <li>
                <div class="onePiece">
                    <div class="topLine row">
                        <div class="post col-md-2"><a href="">&emsp;&emsp;店长</a></div>
                        <div class="company col-md-4">建湖玛格全屋定制</div>
                        <div class="salary col-md-2">7000~18000元</div>
                        <div class="position col-md-2">近湖镇</div>
                        <div class="date col-md-2">2021-08-16</div>
                    </div>
                    <div class="detail">
                        &emsp;&emsp;全职 / 25-40K
                        <button>接受面试</button>
                        <button>拒绝面试</button>
                    </div>
                </div>
            </li>

        </ul>
    </div>
</div>
</body>
</html>
