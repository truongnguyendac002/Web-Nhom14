<%-- Document : login Created on : May 22, 2023, 10:10:20 PM Author : truon --%>
<%@page import="model.*" %>
<%@page import="java.util.*" %>
<%@page import="connection.DBcon" %>
<%@page import="dao.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<% 
User auth = (User) request.getSession().getAttribute("auth");

if(auth != null) {
    response.sendRedirect("home.jsp");
}
%>


<%
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if(cart_list != null) {
    request.setAttribute("cart_list", cart_list);
}
%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng nhập</title>
        <%@include file = "CSS/login-css.jsp" %>
        <%@include file = "CSS/home-css.jsp" %>


    </head>
    <div class="header">
        <div class="navigation">
            <a id="home" href="home.jsp">Trang chủ</a>
            <a id="nam" href="nam.jsp">Đồ nam</a>
            <a id="nu" href="nu.jsp">Đồ nữ</a>
            <a id="treem" href="treem.jsp">Đồ trẻ em</a>
            <a id="cart" href="cart.jsp">Giỏ hàng<span class="badge badge-warning label-warning">${ cart_list.size() }</span></a>
            <a href="login.jsp">Đăng nhập</a>
            <a href="register.jsp">Đăng ký</a>
        </div>
    </div>
    <body>

        <div class="container">
            <h1>Đăng nhập</h1>
            <form method="post" action="loginServlet">
                <label for="username">Tài khoản</label>
                <input type="text" id="username" name="username" required><br><br>
                <label for="password">Mật khẩu</label>
                <input type="password" id="password" name="password" required><br><br>
                <p class="error-message">Tài khoản hoặc mật khẩu không hợp lệ. Vui lòng thử lại.</p>
                <% 
                String error = (String) request.getSession().getAttribute("errorLogin");
                if (error != null && error.equals("true")) { %>
                <style>
                    .error-message {
                        display: block;
                        padding-bottom: 10px;
                        color: #DC143C;
                        animation: rung 0.5s;
                        ;
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
                request.getSession().setAttribute("errorLogin", "false");
                %>

                <input type="submit" value="Đăng nhập">
            </form>
        </div>

    </body>

</html>