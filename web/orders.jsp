<%-- 
    Document   : orders
    Created on : Jun 14, 2023, 10:51:39 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    User auth = (User) request.getSession().getAttribute("auth");
    if(auth != null) {
        request.setAttribute("auth", auth);
    } else {
        response.sendRedirect("login.jsp");
    }
    
    ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
    if(cart_list != null) {
        request.setAttribute("cart_list", cart_list);
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đơn hàng</title>
        <%@include file="CSS/home-css.jsp" %>
        <%@include file="CSS/head.jsp" %>
    </head>
    <body>
        <div class="container">
            <div class="card-header my-3">Tất cả sản phẩm</div>
            <table class="table table-light">
                <thead>
                    <tr>
                        <th scope="col">Ngày đặt hàng</th>
                        <th scope="col">Tên sản phẩm</th>
                        <th scope="col">Loại hàng</th>
                        <th scope="col">Số lượng</th>
                        <th scope="col">Đơn giá</th>
                        <th scope="col">Hủy đơn</th>
                    </tr>
                </thead>
                <tbody>
                    
                </tbody>
            </table>
        </div>
    </body>
</html>
