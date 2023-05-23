<%-- Document : register Created on : May 22, 2023, 10:10:20 PM Author : truon --%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <%@include file = "CSS/css1.jsp" %>
    </head>
    <div class="header">
        <div class="navigation">
           
            <a href="login.jsp">Login</a>
            <a href="register.jsp">Register</a>
        </div>
    </div>
    <body>


        <div class="container">
            <h1>Register</h1>
            <form method="post" action="register.jsp">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required><br><br>
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required><br><br>
                <input type="submit" value="Đăng ký">

            </form>
        </div>

    </body>

</html>
