<%-- Document : home Created on : May 23, 2023, 11:52:49 AM Author : truon --%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="connection.DBcon" %>
<%@page import="model.*" %>
<%@page import="dao.ProductDAO" %>
<%@page import="java.util.*" %>

<% 
    User auth=(User) request.getSession().getAttribute("auth"); 
    if(auth !=null) {
    request.setAttribute("auth", auth); 
%>
<style>
    #login {
        display: none;
    }
</style>
<% 
}
else {
%>
<style>
    #logout {
        display: none;
    }
</style>
<% 
}
ProductDAO pd = new ProductDAO(DBcon.getConnection());
List<Product> products = pd.getAllProducts();
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
            <a id="order" href="cart.jsp">Cart</a>
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
                    <h4 class="gia-san-pham"><%= p.getPrice() %> VNÐ </h4>
                    <img src="./product-image/<%= p.getImage() %>" alt="Product Image">
                    <a class="btn-chi-tiet" href="productDetailServlet?productId=<%=p.getId()%>">Xem chi tiết</a>

                    <a class="btn-them-gio-hang">Thêm vào giỏ hàng</a>
                </div>
                <% }
                }
                %>


            </div>
        </div>

    </body>

</html>