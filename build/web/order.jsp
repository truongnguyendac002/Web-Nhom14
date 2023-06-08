<%-- 
    Document   : order
    Created on : May 23, 2023, 12:52:21 PM
    Author     : truon
--%>
<%@page import="model.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
User auth = (User) request.getSession().getAttribute("auth");

if(auth == null) {
    response.sendRedirect("home.jsp");
%>
<style>
    #logout {
        display: none;
    }
</style>
<% 
}
else{
%>
<style>
    #login {
        display: none;
    }
</style>
<% 
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order</title>
        <%@include file = "CSS/css1.jsp" %>
    </head>
    <div class="header">
        <div class="navigation">
            <a id="home" href="home.jsp">Home</a>
            <a id="order" href="order.jsp">Order</a>
            <a id="login" href="login.jsp">Login</a>
            <a id="logout" href="logoutServlet">Logout</a>
        </div>
    </div>
    <body>

    </body>
</html>
