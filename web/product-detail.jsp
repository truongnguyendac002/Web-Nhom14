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


<% 
    User auth=(User) request.getSession().getAttribute("auth"); 

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chi tiết sản phẩm</title>
        <%@include file = "CSS/product-detail-css.jsp" %>
        <%
        String productId =(String)request.getAttribute("productId");
        int productIdInt = Integer.parseInt(productId);
        ProductDAO productDAO = new ProductDAO(DBcon.getConnection());
        Product product = productDAO.getProductById(productIdInt);
        UserDAO userDAO = new UserDAO(DBcon.getConnection());
        %>
    </head>
    <div class="header">
        <div class="navigation">
            <a id="home" href="home.jsp">Trang chủ</a>
            <a id="nam" href="nam.jsp">Đồ nam</a>
            <a id="nu" href="nu.jsp">Đồ nữ</a>
            <a id="treem" href="treem.jsp">Đồ trẻ em</a>
            <a id="cart" href="cart.jsp">Giỏ hàng<span class="badge badge-warning label-warning">${ cart_list.size() }</span></a>
            <a id="login" href="login.jsp">Đăng nhập</a>
            <a id="logout" href="logoutServlet">Đăng xuất</a>
            <a id="register"  href="register.jsp">Đăng ký</a>
        </div>
    </div>
    <body>
        <div class="content" >
            <h2><%= product.getName() %></h2>
            <p><strong>Tên sản phẩm:</strong> <%= product.getName() %></p>
            <p><strong>Loại hàng:</strong> <%= product.getCategory() %></p>
            <p><strong>Giá:</strong> <%= Double.valueOf(product.getPrice() ).intValue() %> VNÐ</p>
            <a class="btn-them-gio-hang" href="addToCartServlet?id=<%= product.getId() %>">Thêm vào giỏ hàng</a>
            <img src="./product-image/<%= product.getImage() %>" alt="Product Image">
        </div>
        <div class = "comment content">
            <div class="comment-form">
                <form method="post" action="addCommentServlet">
                    <input type="text" name="detail" placeholder="Nhập bình luận" required><br>
                    <input type="hidden" name="productId" value="<%= product.getId() %>">
                    <input type="submit" value="Bình luận">
                </form>
            </div>

            <ul class="comment-list ">

                <% CommentDAO commentDAO = new CommentDAO(DBcon.getConnection());
                   List<Comment> comments = commentDAO.getCommentsByProduct(product.getId());
               
                   for (Comment comment : comments) { %>
                <li class="comment-item">
                    <div class="comment-user"><%= userDAO.getUserById(comment.getUserId()).getName() %></div>
                    <div class="comment-content"><%= comment.getDetail() %></div>
                </li>
                <% } %>
            </ul>
        </div>

    </body>
</html>
