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
        <title>Trang chủ</title>
        <%@include file="CSS/home-css.jsp" %>
    </head>
    <div class="header">
        <div class="navigation">

            <a id="home" href="home.jsp">Trang chủ</a>
            <a id="nam" href="nam.jsp">Đồ nam</a>
            <a id="nu" href="nu.jsp">Đồ nữ</a>
            <a id="treem" href="treem.jsp">Đồ trẻ em</a>
            <a id="cart" href="cart.jsp">Giỏ hàng<span class="badge badge-warning label-warning">${ cart_list.size() }</span></a>
            <a id="adminPage" href="admin.jsp">Admin</a>
            <a id="login" href="login.jsp">Đăng nhập</a>
            <a id="logout" href="logoutServlet">Đăng xuất</a>
            <a id="register"  href="register.jsp">Đăng ký</a>

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
                        <h4 class="gia-san-pham"><%= Double.valueOf(p.getPrice()).intValue()%> VNÐ</h4>
                        <img src="./product-image/<%= p.getImage() %>" alt="Product Image">
                        <a class="btn-chi-tiet" href="productDetailServlet?productId=<%=p.getId()%>">Xem chi tiết</a>
                        <a class="btn-them-gio-hang" href="addToCartServlet?id=<%= p.getId() %>">Thêm vào giỏ hàng</a>
                        <a class="btn-mua-ngay" href="buy-now?quantity=1&id=<%= p.getId() %>">Mua ngay</a>
                    </div>
                    <% }

                %>
                
                <% }
                
                %>
            </div>
            
        </div>     
    </body>

</html>