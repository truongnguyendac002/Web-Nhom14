<%-- 
    Document   : product-detail
    Created on : May 23, 2023, 7:31:26 PM
    Author     : truon
--%>
<%@page import="connection.DBcon" %>
<%@page import="model.*" %>
<%@page import="dao.*" %>
<%@page import="java.util.*" %>
<%@ page import="java.lang.Integer" %>



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

        String userId = request.getParameter("userId");
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
            .comment {
                margin-top: 20px;
            }

            .comment-form {
                margin-bottom: 20px;
            }

            

            .comment-form input[type="submit"] {
                padding: 8px 16px;
                margin-top: 10px;
                background-color: #4CAF50;
                color: white;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }
            .comment-form input[type="text"] {
                padding-right: 28px;
            }
            .comment-list {
                list-style-type: none;
                padding: 0;
            }

            .comment-item {
                margin-bottom: 10px;
                padding: 10px;
                background-color: #f9f9f9;
                border: 1px solid #ddd;
                border-radius: 5px;
            }

            .comment-user {
                font-weight: bold;
            }

            .comment-content {
                margin-top: 5px;
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
        <div class = "comment content">
            <div class="comment-form">
                <form method="post" action="addCommentServlet">
                    <input type="text" name="detail" placeholder="Nhap bình luan !"><br>
                    <input type="hidden" name="productId" value="<%= product.getId() %>">
                    <input type="hidden" name="userId" value="<%= userId %>">
                    <input type="submit" value="Submit">
                </form>
            </div>

            <ul class="comment-list ">

                <% CommentDAO commentDAO = new CommentDAO(DBcon.getConnection());
                   List<Comment> comments = commentDAO.getCommentsByProduct(product.getId());
               
                   for (Comment comment : comments) { %>
                <li class="comment-item">
                    <div class="comment-user"><%= comment.getUserId() %></div>
                    <div class="comment-content"><%= comment.getDetail() %></div>
                </li>
                <% } %>
            </ul>
        </div>

    </body>
</html>
