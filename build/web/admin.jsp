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
        <%@include file="CSS/admin-css.jsp" %>
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
        <div class="container ">
            
            <div class="option">
                <h3>QL sản phẩm</h3>
                <button class="btn-chi-tiet">Thêm</button>
                <button class="btn-chi-tiet">Sua</button>
                <button class="btn-chi-tiet">xoa</button>
            </div>


            <div class="content">
                <div class="container them">
                    <h3>Thêm</h3>
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
                </div>
                <div class="container sua">
                    <h3>Sua</h3>
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
                </div>
                <div class="container xoa">
                    <h3>xoa</h3>
                    <form action="deleteProductServlet" method="POST">
                        <label for="productId">ID sản phẩm:</label>
                        <input type="text" id="productId" name="productId" required><br>

                        <input type="submit" value="Xóa sản phẩm">
                    </form>
                </div>
            </div>
        </div>

    </body>

    <script>
        window.onload = function () {

            var btnThem = document.querySelector(".btn-chi-tiet:nth-child(1)");
            var btnSua = document.querySelector(".btn-chi-tiet:nth-child(2)");
            var btnXoa = document.querySelector(".btn-chi-tiet:nth-child(3)");
            var divThem = document.querySelector(".container.them");
            var divSua = document.querySelector(".container.sua");
            var divXoa = document.querySelector(".container.xoa");


            btnThem.onclick = function () {
                divThem.style.display = "block";
                divSua.style.display = "none";
                divXoa.style.display = "none";
            };


            btnSua.onclick = function () {
                divThem.style.display = "none";
                divSua.style.display = "block";
                divXoa.style.display = "none";
            };


            btnXoa.onclick = function () {
                divThem.style.display = "none";
                divSua.style.display = "none";
                divXoa.style.display = "block";
            };
        };
    </script>

</html>
