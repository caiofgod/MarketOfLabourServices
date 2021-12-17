<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/12/12/012
  Time: 12:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <c:url var="base" value="/"/>
    <base href="${base}"/>
    <script>
        <c:set var="nostring" value=""/>
        <c:if test="${!nostring.equals(requestScope.alert)&&requestScope.alert!=null}">
        alert("${requestScope.alert}")
        </c:if>
    </script>
</head>
<body>

<%--    <form enctype="multipart/form-data" action="re">--%>
<%--        <input >--%>
<%--    </form>--%>

</body>
</html>
