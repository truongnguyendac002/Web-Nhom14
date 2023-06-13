<%-- Document : css1 Created on : May 23, 2023, 12:55:38 PM Author : truon --%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="connection.DBcon" %>
<%@page import="model.*" %>
<%@page import="dao.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            * {
                margin: 0px;
                padding: 0px;
            }


            body {
                font-family: Arial;
                background-color: #f2f2f2;
            }

            .header {
                background-color: #333;
                color: #fff;
                padding: 20px;
                text-align: center;
            }

            .navigation a {
                color: #fff;
                margin-right: 10px;
            }

            a {
                text-decoration: none;
            }

            .container {
                max-width: 400px;
                margin: 0 auto;
                padding: 40px;
                margin-top: 60px;
                background-color: #fff;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            }

            h1 {
                text-align: center;
                color: #333;
            }

            form {
                margin-top: 20px;
            }

            label {
                display: block;
                margin-bottom: 5px;
                color: #333;
            }

            input[type="text"],
            input[type="password"] {
                width: 95%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 3px;
            }

            input[type="submit"] {
                width: 100%;
                padding: 10px;
                background-color: #333;
                color: #fff;
                border: none;
                border-radius: 3px;
                cursor: pointer;
            }

            .content {
                width: 100%;
                max-width: 1200px;
                margin: 0 auto;
                padding: 20px;
            }

            .Tieu-de {
                font-size: 24px;
                font-weight: bold;
                margin-bottom: 20px;
            }

            .hang {
                display: flex;
                flex-wrap: wrap;
            }



            .the-san-pham {
                background-color: #fff;
                padding: 10px;
                margin: 10px;
                width: 29.33%;
                border-radius: 5px;
                text-align: center;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            }

            .ten-san-pham {
                font-size: 18px;
                margin-bottom: 10px;
            }

            .the-san-pham img {
                width: 100%;
                height: auto;
                margin-bottom: 10px;
            }

            .btn-chi-tiet,
            .btn-them-gio-hang {
                display: block;
                width: 100%;
                padding: 8px 0px;
                color: #fff;
                border: none;
                border-radius: 4px;
                font-size: 14px;
                cursor: pointer;
                margin-bottom: 5px;
            }

            .btn-them-gio-hang {
                background-color: #5cb85c;
            }
            .btn-chi-tiet {
                background-color: #337ab7;
            }
            h4.gia-san-pham {
                padding-bottom: 11px;
            }
            #adminPage {
            display: none;
            }
        </style>
    </head>
    <% 
if(auth !=null) {
    if (auth.getEmail().equals("admin")){
    %>
    <style>
        #adminPage {
            display: inline;
        }
    </style>
    <% 
        }

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
    %>

</html>