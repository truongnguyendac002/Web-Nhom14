<%-- 
    Document   : admin
    Created on : Jun 13, 2023, 5:35:10 PM
    Author     : truon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="connection.DBcon" %>
<%@page import="model.*" %>
<%@page import="dao.*" %>
<%@page import="java.util.*" %>

<% 
User auth=(User) request.getSession().getAttribute("auth"); 
if (auth == null || !auth.getEmail().equals("admin")){
    response.sendRedirect("login.jsp");
}

ProductDAO pd = new ProductDAO(DBcon.getConnection());
List<Product> products = pd.getAllProducts();
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <%@include file="CSS/home-css.jsp" %>
    </head>

    <div class="header">
        <div class="navigation">
            <a id="home" href="home.jsp">Home</a>
            <a id="adminPage" href="admin.jsp">Admin</a>
            <a id="cart" href="cart.jsp">Cart</a>
            <a id="login" href="login.jsp">Login</a>
            <a id="logout" href="logoutServlet">Logout</a>

        </div>
    </div>

    <body>
        <div class="content">
            <!-- Mã nguồn chức năng thêm-sửa-xóa sản phẩm -->
            <div id="product-management">
                <h3>Quản lý sản phẩm</h3>

                <form action="addProductServlet" method="POST">
                    <label for="productId">ID:</label>
                    <input type="text" id="productId" name="productId" required><br>

                    <label for="productName">Tên sản phẩm:</label>
                    <input type="text" id="productName" name="productName" required><br>

                    <label for="productCategory">Danh mục:</label>
                    <input type="text" id="productCategory" name="productCategory" required><br>

                    <label for="productPrice">Giá:</label>
                    <input type="text" id="productPrice" name="productPrice" required><br>

                    <label for="productImage">Ảnh:</label>
                    <input type="text" id="productImage" name="productImage" required><br>

                    <input type="submit" value="Thêm sản phẩm">
                </form>

                <form action="updateProductServlet" method="POST">
                    <label for="productId">ID sản phẩm:</label>
                    <input type="text" id="productId" name="productId" required><br>

                    <label for="productName">Tên sản phẩm mới:</label>
                    <input type="text" id="productName" name="productName" required><br>

                    <label for="productCategory">Danh mục mới:</label>
                    <input type="text" id="productCategory" name="productCategory" required><br>

                    <label for="productPrice">Giá mới:</label>
                    <input type="text" id="productPrice" name="productPrice" required><br>

                    <label for="productImage">Ảnh mới:</label>
                    <input type="text" id="productImage" name="productImage" required><br>

                    <input type="submit" value="Cập nhật sản phẩm">
                </form>

                <form action="deleteProductServlet" method="POST">
                    <label for="productId">ID sản phẩm:</label>
                    <input type="text" id="productId" name="productId" required><br>

                    <input type="submit" value="Xóa sản phẩm">
                </form>
            </div>

        </div>

    </body>
</html>
