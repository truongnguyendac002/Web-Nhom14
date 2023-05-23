<%-- 
    Document   : product-detail
    Created on : May 23, 2023, 7:31:26 PM
    Author     : truon
--%>
<%@page import="connection.DBcon" %>
<%@page import="model.*" %>
<%@page import="dao.ProductDAO" %>
<%@page import="java.util.*" %>
<%@ page import="java.lang.Integer" %>
<%@ page import="model.Product" %>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product detail</title>
        <%@include file = "CSS/css1.jsp" %>
        <%
        String productId = request.getParameter("id");
        int productIdInt = Integer.parseInt(productId);
        ProductDAO productDAO = new ProductDAO(DBcon.getConnection()); 
        Product product = productDAO.getProductById(productIdInt); 
        %>
        <style>
            .content {
                width: 100%;
                max-width: 800px;
                margin: 20px auto;
                padding: 20px;
                background-color: #fff;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            }

            h2 {
                text-align: center;
                color: #333;
                margin-bottom: 20px;
            }

            .content p {
                margin-bottom: 10px;
            }

            .content img {
                width: 100%;
                height: auto;
                display: block;
                margin-top: 10px;
            }

        </style>
    </head>
    <div class="header">
        <div class="navigation">
            <a href="home.jsp">Home</a>
            <a href="order.jsp">Order</a>
            <a href="login.jsp">Login</a>
            <a href="logoutServlet">Logout</a>
        </div>
    </div>
    <body>
        <div class="content">
            <h2>Product Detail</h2>
            <p><strong>ID:</strong> <%= product.getId() %></p>
            <p><strong>Name:</strong> <%= product.getName() %></p>
            <p><strong>Category:</strong> <%= product.getCategory() %></p>
            <p><strong>Price:</strong> <%= product.getPrice() %> VNÐ</p>
            <img src="./product-image/<%= product.getImage() %>" alt="Product Image">
        </div>

    </body>
</html>
