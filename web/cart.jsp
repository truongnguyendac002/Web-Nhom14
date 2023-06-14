<%-- 
    Document   : order
    Created on : May 23, 2023, 12:52:21 PM
    Author     : truon
--%>
<%@page import="java.text.DecimalFormat" %>
<%@page import="model.*" %>
<%@page import="java.util.*" %>
<%@page import="connection.DBcon" %>
<%@page import="dao.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
DecimalFormat dcf = new DecimalFormat("#.##");
request.setAttribute("dcf", dcf);
User auth = (User) request.getSession().getAttribute("auth");

ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
List<Cart> cartProduct = null;
if(cart_list != null) {
    ProductDAO pDao = new ProductDAO(DBcon.getConnection());
    cartProduct = pDao.getCartProducts(cart_list);
    double total = pDao.getTotalPrice(cart_list);
    request.setAttribute("cart_list", cart_list);
    request.setAttribute("total", total);

}
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
        <%@include file = "CSS/home-css.jsp" %>
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
            <a id="home" href="home.jsp">Trang chủ</a>
            <a id="cart" href="cart.jsp">Giỏ hàng<span class="badge badge-warning label-warning">${ cart_list.size() }</span></a>
            <a id="login" href="login.jsp">Đăng nhập</a>
            <a id="logout" href="logoutServlet">Đăng xuất</a>
        </div>
    </div>
    <body>
        <div class="container">
            <div class="d-flex py-3">
                <h3>Tong gia: ${ (total>0)?dcf.format(total):0}₫ </h3>
                <a class="mx-3 btn btn-primary">Thanh toan</a>
            </div>
            <table class="table table-lought">
                <thead>
                    <tr>
                        <th scope="col">Ten san pham</th>
                        <th scope="col">Phan loai</th>
                        <th scope="col">Ðon giá</th>
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
                        <td><%= dcf.format(c.getPrice()) %></td>
                        <td>
                            <form action="buy-now" method="post" class="form-inline">
                                <input type="hidden" name="id" value="<%= c.getId() %>" class="form-input">
                                <div class="form-group d-flex justify-content-between ">
                                    <a class="btn btn-sm btn-decre" href="incDecQuantity?action=dec&id=<%= c.getId() %>"><i class="fas fa-minus-square"></i></a>
                                    <input type="text" name="quantity" class="form-control " value="<%= c.getQuantity() %>" readonly> <!--So luong sp-->
                                    <a class="btn btn-sm btn-incre" href="incDecQuantity?action=inc&id=<%= c.getId() %>"><i class="fas fa-plus-square"></i></a>
                                    <button type="submit" class="btn btn-primary btn-sm">Mua</button>
                                </div>
                            </form>
                        </td>
                        <td><%= dcf.format(c.getPrice()) %></td>
                        <!--<td><a class="btn btn-sm btn-danger" href="remove-from-cart?id=<%= c.getId() %>">XOA</a></td>-->
                        <td>
                            <form method="post" action="remove-from-cart?id=<%= c.getId() %>">
                                <button class="btn btn-sm btn-danger" type="submit">XOA</button>
                            </form>
                        </td>
                    </tr>
                    <% }
                }
                    %>  
                </tbody>
            </table>
        </div>
    </body>
</html>
