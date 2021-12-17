<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/12/11/011
  Time: 18:25
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
    <title>用人单位注册</title>
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/register.css">

</head>
<body>
<!-- 注册信息页面 -->
<div class="reg-register">
    <form action="enterprise/register" method="post">
        <!-- 注册内容 -->
        <table class="reg-regist">
            <thead>
            <h2>公司注册信息</h2>
            </thead>
            <div class="box-line"></div>
            <tbody>
            <tr>
                <td>公司名(必填):</td>
                <td>
                    <input type="text" name="name" required maxlength="40">
                </td>
            </tr>
            <tr>
                <td>公司所在省:</td>
                <td>
                    <input id="province" list="provinces" name="province" placeholder="例:辽宁省"/>
                    <datalist id="provinces">
                        <c:forEach items="${requestScope.provinceList}" var="province">
                            <option>${province.name}</option>
                        </c:forEach>
                    </datalist>
                </td>
            </tr>
            <tr>
                <td>公司所在市:</td>
                <td>
                    <input id="city" list="cities" name="city" placeholder="例:北京市"/>
                    <datalist id="cities">
                        <option value="哈尔滨市">
                        <option value="长春市">
                        <option value="沈阳市">
                    </datalist>
                </td>
            </tr>
            <tr>
                <td>公司所在县/区:</td>
                <td>
                    <input id="county" list="counties" name="county" placeholder="例:海淀区"/>
                    <datalist id="counties">
                        <option value="香坊区">
                        <option value="南岗区">
                        <option value="巴彦县">
                    </datalist>
                </td>
            </tr>
            <tr>
                <td>公司详细地址:</td>
                <td>
                    <input type="text" name="detail" placeholder="公司详细地址、门牌号等">
                </td>
            </tr>
            <tr>
                <td>公司规模表:</td>
                <td>
                    <select name="scale_id" id="com-size">
                        <option value="0">请选择</option>
                        <c:forEach items="${requestScope.scaleList}" var="scale">
                            <option value="${scale.id}">${scale.name}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td>公司行业:</td>
                <td>
                    <select name="industry_id" id="com-industry">
                        <option value="0">请选择</option>
                        <c:forEach items="${requestScope.industryList}" var="industry">
                            <option value="${industry.id}">${industry.name}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td>公司性质:</td>
                <td>
                    <select name="type_id" id="com-character">
                        <option value="0">请选择</option>
                        <c:forEach items="${requestScope.typeList}" var="type">
                            <option value="${type.id}">${type.name}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td>HR姓名(必填):</td>
                <td>
                    <input name="hr_name" type="text" placeholder="不超过16个字符" required maxlength="16">
                </td>
            </tr>
            <tr>
                <td>HR电话(必填):</td>
                <td>
                    <input name="hr_tel" type="text" placeholder="不超过11个字符"
                           required maxlength="11">
                </td>
            </tr>
            <tr>
                <td>密码(必填):</td>
                <td>
                    <input name="password" type="password" placeholder="不超过16个字符，数字、英文、标点均可" maxlength="16" minlength="8" required>
                </td>
            </tr>
            <tr>
                <td>确认密码(必填):</td>
                <td>
                    <input name="check_password" type="password" placeholder="不超过16个字符，数字、英文、标点均可" maxlength="16" minlength="8" required>
                </td>
            </tr>
            <tr>
                <td>公司简介:</td>
                <td class="reg-introduction">
              <textarea id="com-detail" name="introduction" rows="5" cols="53">
              </textarea>
                </td>
            </tr>
            </tbody>
        </table>
        <!-- 用户协议 -->
        <div class="reg-check">

            <label  class="user-read">
                <input type="checkbox" name="user-check" class="checked" required>
                我已阅读<a id="user-agreement">用户协议</a>
            </label>
        </div>
        <div class="reg-button">
            <input type="submit" class="reg-submit"/>
        </div>
    </form>
    <!-- 提交按钮 -->
</div>
</body>
</html>
