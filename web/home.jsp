<%-- Document : home Created on : May 23, 2023, 11:52:49 AM Author : truon --%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="connection.DBcon" %>
<%@page import="model.*" %>
<%@page import="dao.*" %>
<%@page import="java.util.*" %>

<% 
User auth=(User) request.getSession().getAttribute("auth"); 
ProductDAO pd = new ProductDAO(DBcon.getConnection());
List<Product> products = pd.getAllProducts();
%>

<%
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if(cart_list != null) {
    request.setAttribute("cart_list", cart_list);
}
%>

<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <%@include file="CSS/home-css.jsp" %>
    </head>
    <div class="header">
        <div class="navigation">

            <a id="home" href="home.jsp">Home</a>
            <a id="cart" href="cart.jsp">Cart<span class="badge badge-warning label-warning">${ cart_list.size() }</span></a>
            <a id="adminPage" href="admin.jsp">Admin</a>
            <a id="cart" href="cart.jsp">Cart</a>
            <a id="login" href="login.jsp">Login</a>
            <a id="logout" href="logoutServlet">Logout</a>


        </div>
    </div>

    <body>
        <div class="content">
            <div class="Tieu-de">Tất cả sản phẩm</div>
            <div class="hang">
                <%
                if( !products.isEmpty()) {
                    for (Product p: products) { 
                %>
                <div class="the-san-pham">
                    <h3 class="ten-san-pham"><%= p.getName() %>  </h3>
                    <h4 class="gia-san-pham"><%= Double.valueOf(p.getPrice()).intValue()%> VNÐ </h4>
                    <img src="./product-image/<%= p.getImage() %>" alt="Product Image">
                    <a class="btn-chi-tiet" href="productDetailServlet?productId=<%=p.getId()%>">Xem chi tiết</a>
                    <a class="btn-them-gio-hang" href="addToCartServlet?id=<%= p.getId() %>">Thêm vào giỏ hàng</a>
                </div>
                <% }
                }
                %>


            </div>
        </div>

    </body>

</html>