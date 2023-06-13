<%-- Document : login Created on : May 22, 2023, 10:10:20 PM Author : truon --%>
<%@page import="model.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<% 
User auth = (User) request.getSession().getAttribute("auth");

if(auth != null) {
    response.sendRedirect("home.jsp");
}
%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <%@include file = "CSS/home-css.jsp" %>
        <style>
            @keyframes rung {
                0% {
                    transform: translateX(0);
                }
                10%, 30%, 50%, 70%, 90% {
                    transform: translateX(-4px);
                }
                20%, 40%, 60%, 80% {
                    transform: translateX(4px);
                }
                100% {
                    transform: translateX(0);
                }
            }

        </style>


</head>
<div class="header">
    <div class="navigation">
        <a id="home" href="home.jsp">Home</a>
        <a href="login.jsp">Login</a>
        <a href="register.jsp">Register</a>
    </div>
</div>
<body>


    <div class="container">
        <h1>Login</h1>
        <form method="post" action="loginServlet">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br><br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br><br>
            <p class="error-message">Tài khoản hoặc mật khẩu không hợp lệ. Vui lòng thử lại.</p>
            <% 
            String error = (String) request.getSession().getAttribute("errorLogin");
            if (error != null && error.equals("true")) { %>
            <style>
            .error-message {
            display: block;
            padding-bottom: 10px;
            color: red;
            animation: rung 0.5s;;
            </style>
            <% } 
            else { %>
            <style>
            .error-message {
            display: none;
            }
            </style>
            <%
            }
            request.getSession().setAttribute("errorLogin", "false");
            %>

            <input type="submit" value="Đăng nhập">
        </form>
    </div>

</body>

</html>