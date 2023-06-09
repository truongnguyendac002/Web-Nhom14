<%-- 
    Document   : order
    Created on : May 23, 2023, 12:52:21 PM
    Author     : truon
--%>
<%@page import="model.*" %>
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
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
        <%@include file = "CSS/cart-css.jsp" %>
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
            <div class="list">
                <table>
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
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>
                                <form action="" method="post" class="form-inline">
                                <div>
                                    <a class="btn btn-nho btn-giam"><i class="fas"></i></a>
                                    <input type="text" name="quantity" class="form-quan" readonly> <!--So luong sp-->
                                    <a class="btn btn-nho btn-tang"><i class="fas"></i></a>
                                </div>
                                </form>
                            </td>
                            <td><a class="btn btn-nho btn-danger" href="">XOA</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
