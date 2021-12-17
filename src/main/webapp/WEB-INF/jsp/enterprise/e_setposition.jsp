<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/12/13/013
  Time: 20:48
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
<!-- 发布信息页面 -->
<div class="reg-register">
    <form action="" method="post">
        <!-- 发布内容 -->
        <table class="reg-regist">
            <thead>
            <h2>招聘信息发布</h2>
            </thead>
            <div class="box-line"></div>
            <tbody>
            <tr>
                <td>职位（必填）：</td>
                <td>
                    <input id="position" list="work-post" name="position" required maxlength="40" placeholder="例:会计"/>
                    <datalist id="work-post">
                        <c:forEach items="${requestScope.positionList}" var="position">
                            <option>${position.name}</option>
                        </c:forEach>
                    </datalist>
                </td>
            </tr>
            <tr>
                <td>性别要求:</td>
                <td>
                    <select id="sex-sel" name="sex_limit_id">
                        <option value="0" selected>不限</option>
                        <c:forEach items="${requestScope.sexList}" var="sex">
                            <option value="${sex.id}">${sex.name}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td>工作类型:</td>
                <td>
                    <select name="type_id" id="com-character">
                        <option value="0" selected>不限</option>
                        <c:forEach items="${requestScope.typeList}" var="type">
                            <option value="${type.id}">${type.name}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td>工资下限（必填）:</td>
                <td>
                    <input type="number" name="salary_floor" required>
<%--                    <select id="slary-down">--%>
<%--                        <option>请选择</option>--%>
<%--                        <option>不限</option>--%>
<%--                        <option>3000以下</option>--%>
<%--                        <option>3000-5000</option>--%>
<%--                        <option>5000-10000</option>--%>
<%--                        <option>10000以上</option>--%>
<%--                    </select>--%>
                </td>
            </tr>
            <tr>
                <td>工资上限（必填）:</td>
                <td>
                    <input type="number" name="salary_ceiling" required>
<%--                    <select id="slary-up">--%>
<%--                        <option>请选择</option>--%>
<%--                        <option>不限</option>--%>
<%--                        <option>3000以下</option>--%>
<%--                        <option>3000-5000</option>--%>
<%--                        <option>5000-10000</option>--%>
<%--                        <option>10000以上</option>--%>
<%--                    </select>--%>
                </td>
            </tr>
            <tr>
                <td>招聘人数（必填）:</td>
                <td>
                    <input type="number" name="number" required>
                </td>
            </tr>
            <tr>
                <td>学历要求:</td>
                <td>
                    <select name="edu_floor_id">
                        <option value="0" selected>不限</option>
                        <c:forEach items="${requestScope.educationList}" var="education">
                            <option value="${education.id}">${education.name}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td>年龄上限(上限）:</td>
                <td>
                    <input type="number" name="age_ceiling" required>
                </td>
            </tr>
            <tr>
                <td>工作任务（必填）:</td>
                <td>
                    <textarea name="duty" cols="53" rows="5" required></textarea>
                </td>
            </tr>
            <tr>
                <td>招聘要求（必填）:</td>
                <td>
                    <textarea name="demand" cols="53" rows="5" required></textarea>
                </td>
            </tr>
            </tbody>
        </table>
        <!-- 用户协议 -->
        <div class="reg-check">

            <label class="user-read">
                <input type="checkbox" name="user-check" class="checked" required>
                我已阅读<a id="user-agreement">用户协议</a>
            </label>
        </div>
        <div class="reg-button">
            <input type="submit" class="reg-submit">
        </div>
    </form>
    <!-- 提交按钮 -->

</div>
</body>
</html>
