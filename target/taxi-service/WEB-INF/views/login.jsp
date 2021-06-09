<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/login.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/login" method="post">
    <h4 style="color:red">${errorMsg }</h4>
    <div class="container">
        <label><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="username" required>

        <label><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="password" required>

        <button type="submit">Login</button>
    </div>
</form>
<div class="container" style="background-color:#f1f1f1">
    <form method="get" action="${pageContext.request.contextPath}/drivers/add">
        <button type="submit" class="register-button">Register</button>
    </form>
</div>
</body>
</html>
