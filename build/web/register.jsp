<%-- Document : register Created on : May 22, 2023, 10:10:20 PM Author : truon --%>
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
        <title>Đăng ký</title>
        <%@include file = "CSS/register-css.jsp" %>
    </head>
    <div class="header">
        <div class="navigation">
            <a id="home" href="home.jsp">Trang chủ</a>
            <a href="login.jsp">Đăng nhập</a>
            <a href="register.jsp">Đăng ký</a>
        </div>
    </div>
    <body>


        <div class="container">
            <h1>Đăng ký</h1>
            <form method="post" action="registerServlet">
                <label for="username">Tài khoản</label>
                <input type="text" id="username" name="username" required><br><br>
                <label for="name">Tên</label>
                <input type="text" id="name" name="name" required><br><br>
                <label for="phone">Số điện thoại</label>
                <input type="text" id="phone" name="phone" required><br><br>
                <label for="password">Mật khẩu</label>
                <input type="password" id="password" name="password" required><br><br>
                
                
                <p class="error-message">Tên tại khoản đã tồn tại</p>
                <%
                    String error = (String) request.getSession().getAttribute("errorRegister");
                    if (error != null && error.equals("true")) { %>
                    <style>
                    .error-message {
                        display: block;
                        padding-bottom: 10px;
                        color: #DC143C;
                        animation: rung 0.5s;
                    }
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
                    request.getSession().setAttribute("errorRegister", "false");

                %>
                
                <input type="submit" value="Đăng ký">

            </form>
        </div>

    </body>

</html>
