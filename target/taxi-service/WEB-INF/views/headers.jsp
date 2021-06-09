<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    <%@include file='/WEB-INF/views/css/header.css' %>
</style>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="topnav">
    <a class="active" href="/">Home</a>
    <c:if test="${sessionScope.driver_id == null}">
        <div class="login-container">
            <form method="post" action="${pageContext.request.contextPath}/login">
                <input type="text" placeholder="Username" name="username" required>
                <input type="password" placeholder="Password" name="password" required>
                <button type="submit">Login</button>
            </form>
        </div>
        <div class="register-container">
            <form method="get" action="${pageContext.request.contextPath}/drivers/add">
                <button type="submit">Register</button>
            </form>
        </div>
    </c:if>

    <c:if test="${sessionScope.driver_id != null}">
        <div class="logout-container">
            <form method="get" action="${pageContext.request.contextPath}/logout">
                <button type="submit">Logout</button>
            </form>
        </div>
    </c:if>

</div>
</body>
</html>
