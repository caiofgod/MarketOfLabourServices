<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/12/11/011
  Time: 18:26
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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>求职端登录页面</title>
    <style>
        body,div,dl,dt,p,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,form,fieldset,input,textarea,blockquote,th,td {
            padding:0;
            margin:0 auto; font-family: "宋体"}
        .wap{ margin:0 auto; width:955px;}
        .top{ height:150px; padding-left:85px;}
        .middle{ height:296px;background:url('${base}image/bgtp.gif') no-repeat; height:296px;position:relative; width:955px;}
        .dl{width:312px;height:230px;position:absolute;right:60px;top:30px}
        .dlti{font-size:24px;color:#333;position:absolute;top:5px;
        }
        .dlmi{ float:left; width:312px; line-height:45px;font-size:17px;color:#333;position:absolute;top:70px;}
        .dlmi input{ float:right; height:28px; width:228px; border:1px solid #DDDDDD;position:absolute;left:77px;}
        .dlj{ color:#666;position:absolute;top:180px;left:77px;width: 113px;}
        .dlau{position:absolute;left:205px;top:171px;height:45px;width:45px;font-size:16px;
        }
        .dlau1{position:absolute;left:263px;top:171px;height:45px;width:45px;font-size:16px;}
        .dlau1 a{ background:url('${base}image/dlau1.gif') no-repeat; display:block; width:45px; height:45px;}
        .end{position:absolute;font-size:15px;color:#999;float:left;width:809px;left: 85px;top: 304px;
        }
        .end a{ color:#999; text-decoration:none;float:right;}
    </style>
</head>
<body>
<form action="seeker/logon" method="post" id="Form1" name="Form1" onsubmit="return submitForm1();">
    <div class="wapbg">
        <div class="wap">
            <div class="top"><img style="padding-top:80px" src="${base}image/qzddlym.png" width="474px" height="61px"></div>
            <div class="middle">
                <div class="dl"><div class="dlti">登录个人中心</div>
                    <div class="dlmi">
                        <p>手机号:</p>
                        <input style="position:absolute; top:7px;" name="tel" 　id="xh" type="text" value="">
                        <p>密码:</p>
                        <input style="position:absolute; top:54px;" name="password" id="pwd" type="password" value="">
                        <br>
                    </div>
                    <br>
                    <div class="dlj" style="display:none;">
                        <input style="margin-right:5px;" name="jzmmid" id="jzmmid" type="checkbox" value="1">记住用户名
                    </div>
                    <input type="submit" id="btnSubmit" class="dlau" title="点击登录" value="" style=" border: 0;background: url('${base}image/dlau.gif') no-repeat;">
                    <div class="dlau1">
                        <a href="#"></a>
                    </div>
                </div>
                <div class="end">
                    <a href="seeker/register">注册个人账号</a>
                </div>
            </div>
        </div>
    </div>
</form>
</body>
</html>
