<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/12/16/016
  Time: 22:08
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
    <div class="content resume">
        <ul>
            <li>
                <div class="onePiece">
                    <div class="topLine row">
                        <div class="name col-md-1"><a href="">张先生</a></div>
                        <div class="intro col-md-4">男 / 39岁 / 大专 / 10年以上</div>
                        <div class="salary col-md-2">7000~10000元</div>
                        <div class="post col-md-3">车间</div>
                        <div class="date col-md-2">2021-08-16</div>
                    </div>
                    <div class="detail row">
                        <div class="pic col-md-1"><img src="${base}image/list/man.png" alt=""></div>
                        <div class="introduce col-md-10">
                            <div class="top">
                                全职 / 盐城市 / 我目前已离职，可快速到岗
                            </div>
                            <div class="detailIntro">
                                掌握各类电源（控制电源、驱动电源）、光源模组和LED灯具成品组装生产制作、熟悉SMT贴装流程和管理。对现场5S管理、安全管理、成本意识、员工培训等管理工具都能灵活运用。
                            </div>
                        </div>
                        <div class="fileDownload col-md-1">
                            <a href=""><img src="${base}image/list/download.png"><div>下载简历</div></a>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="onePiece">
                    <div class="topLine row">
                        <div class="name col-md-1"><a href="">张先生</a></div>
                        <div class="intro col-md-4">男 / 39岁 / 大专 / 10年以上</div>
                        <div class="salary col-md-2">7000~10000元</div>
                        <div class="post col-md-3">车间</div>
                        <div class="date col-md-2">2021-08-16</div>
                    </div>
                    <div class="detail row">
                        <div class="pic col-md-1"><img src="${base}image/list/man.png" alt=""></div>
                        <div class="introduce col-md-10">
                            <div class="top">
                                全职 / 盐城市 / 我目前已离职，可快速到岗
                            </div>
                            <div class="detailIntro">
                                掌握各类电源（控制电源、驱动电源）、光源模组和LED灯具成品组装生产制作、熟悉SMT贴装流程和管理。对现场5S管理、安全管理、成本意识、员工培训等管理工具都能灵活运用。
                            </div>
                        </div>
                        <div class="fileDownload col-md-1">
                            <a href=""><img src="${base}image/list/download.png"><div>下载简历</div></a>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="onePiece">
                    <div class="topLine row">
                        <div class="name col-md-1"><a href="">张先生</a></div>
                        <div class="intro col-md-4">男 / 39岁 / 大专 / 10年以上</div>
                        <div class="salary col-md-2">7000~10000元</div>
                        <div class="post col-md-3">车间</div>
                        <div class="date col-md-2">2021-08-16</div>
                    </div>
                    <div class="detail row">
                        <div class="pic col-md-1"><img src="${base}image/list/man.png" alt=""></div>
                        <div class="introduce col-md-10">
                            <div class="top">
                                全职 / 盐城市 / 我目前已离职，可快速到岗
                            </div>
                            <div class="detailIntro">
                                掌握各类电源（控制电源、驱动电源）、光源模组和LED灯具成品组装生产制作、熟悉SMT贴装流程和管理。对现场5S管理、安全管理、成本意识、员工培训等管理工具都能灵活运用。
                            </div>
                        </div>
                        <div class="fileDownload col-md-1">
                            <a href=""><img src="${base}image/list/download.png"><div>下载简历</div></a>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</div>
</body>
</html>
