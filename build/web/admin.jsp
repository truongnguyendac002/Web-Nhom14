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
            <a id="cart" href="cart.jsp">Cart</a>
            <a id="adminPage" href="admin.jsp">Admin</a>
            <a id="login" href="login.jsp">Login</a>
            <a id="logout" href="logoutServlet">Logout</a>

        </div>
    </div>

    <body>
        <div class="body">
            <div class="option">
                <h3>QL sản phẩm</h3>
                <button id="btn-them" class="nut" data-target="form-them">Thêm sản phẩm</button>
                <button id="btn-sua" class="nut" data-target="form-sua">Sửa sản phẩm</button>
                <button id="btn-xoa" class="nut" data-target="form-xoa">Xóa sản phẩm</button>


            </div>


            <div class="content">
                <div class="container them" id="form-them">
                    <h3>Thêm sản phẩm</h3>
                    <form action="addProductServlet" method="POST">
                        <label for="productId">ID:</label>
                        <input type="text" id="productId" name="productId" required><br>

                        <label for="productName">Tên sản phẩm:</label>
                        <input type="text" id="productName" name="productName" required><br>

                        <label for="productCategory">Danh mục:</label>
                        <input type="text" id="productCategory" name="productCategory" required><br>

                        <label for="productPrice">Giá:</label>
                        <input type="text" id="productPrice" name="productPrice" required><br>

                        <label for="productImage" class="custom-file-upload">Chọn ảnh</label>
                        <input type="file" id="productImage" name="productImage" required><br>


                        <input type="submit" value="Thêm sản phẩm">
                    </form>
                </div>
                <div class="container sua" id="form-sua">
                    <h3>Sửa sản phẩm</h3>
                    <form action="updateProductServlet" method="POST">
                        <label for="productId">ID sản phẩm:</label>
                        <input type="text" id="productId" name="productId" required><br>

                        <label for="productName">Tên sản phẩm mới:</label>
                        <input type="text" id="productName" name="productName" required><br>

                        <label for="productCategory">Danh mục mới:</label>
                        <input type="text" id="productCategory" name="productCategory" required><br>

                        <label for="productPrice">Giá mới:</label>
                        <input type="text" id="productPrice" name="productPrice" required><br>

                        <label for="productImage" class="custom-file-upload">Chọn ảnh</label>
                        <input type="file" id="productImage" name="productImage" required><br>


                        <input type="submit" value="Cập nhật sản phẩm">
                    </form>
                </div>
                <div class="container xoa" id="form-xoa">
                    <h3>Xóa sản phẩm</h3>
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
        const btnThem = document.getElementById('btn-them');
        const btnSua = document.getElementById('btn-sua');
        const btnXoa = document.getElementById('btn-xoa');
        const formThem = document.getElementById('form-them');
        const formSua = document.getElementById('form-sua');
        const formXoa = document.getElementById('form-xoa');

        btnThem.addEventListener('click', () => {
            formThem.style.display = 'block';
            formSua.style.display = 'none';
            formXoa.style.display = 'none';
        });

        btnSua.addEventListener('click', () => {
            formThem.style.display = 'none';
            formSua.style.display = 'block';
            formXoa.style.display = 'none';
        });

        btnXoa.addEventListener('click', () => {
            formThem.style.display = 'none';
            formSua.style.display = 'none';
            formXoa.style.display = 'block';
        });
    </script>

</html>
