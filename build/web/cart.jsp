<%-- 
    Document   : order
    Created on : May 23, 2023, 12:52:21 PM
    Author     : truon
--%>
<%@page import="model.*" %>
<%@page import="java.util.*" %>
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

<%
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
List<Cart> cartProduct = null;
if(cart_list != null) {
    productDao pDao = new productDao(DbCon.getConnection());
    cartProduct = pDao.getCartProducts(cart_list);
    request.setAttribute("cart_list", cart_list);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
        <%@include file = "CSS/cart-css.jsp" %>
        <%@include file = "CSS/head.jsp" %>
        <style type="text/css">
            .table tbody td {
                vertical-align: middle;
            }
            .btn-decre, .btn-incre {
                box-shadow: none;
                font-size: 25px;
            }
        </style>
    </head>
    <div class="header">
        <div class="navigation">
            <a id="home" href="home.jsp">Home</a>
            <a id="cart" href="cart.jsp">Cart</a>
            <a id="login" href="login.jsp">Login</a>
            <a id="logout" href="logoutServlet">Logout</a>
        </div>
    </div>
    <body>
        <div class="container">
            <div class="d-flex py-3">
                <h3>Tong gia: 1000000 vnd</h3>
                <a class="mx-3 btn btn-primary">Thanh toan</a>
            </div>
            <table class="table table-lought">
                <thead>
                    <tr>
                        <th scope="col">Ten san pham</th>
                        <th scope="col">Phan loai</th>
                        <th scope="col">So luong</th>
                        <th scope="col">Thanh tien</th>
                        <th scope="col">Xoa san pham</th>
                    </tr>
                </thead>
                <tbody>
                <% 
                if(cart_list != null) {
                    for(Cart c:cartProduct) { %>
                        <tr>
                            <td><%= c.getName() %></td>
                            <td><%= c.getCategory() %></td>
                            <td><%= c.getPrice() %></td>
                            <td>
                                <form action="" method="post" class="form-inline">
                                    <input type="hidden" name="id" value="<%= c.getId() %>" class="form-input">
                                    <div class="form-group d-flex justify-content-between">
                                        <a class="btn btn-sm btn-decre"><i class="fas fa-minus-square"></i></a>
                                        <input type="text" name="quantity" class="form-quan" readonly> <!--So luong sp-->
                                        <a class="btn btn-sm btn-incre"><i class="fas fa-plus-square"></i></a>
                                    </div>
                                </form>
                            </td>
                            <td><a class="btn btn-sm btn-danger" href="">XOA</a></td>
                        </tr>
                    <% }
                }
                %>  
                </tbody>
            </table>
        </div>
    </body>
</html>
