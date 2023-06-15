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

            input[type="text"] {
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
                max-width: 800px;
                margin: 20px auto;
                padding: 20px;
                background-color: #fff;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            }

            
            

            
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
            
            h2 {
                text-align: center;
                color: #333;
                margin-bottom: 20px;
            }

            .content p {
                margin-bottom: 10px;
            }

            .content img {
                width: 100%;
                height: auto;
                display: block;
                margin-top: 10px;
            }
            .comment {
                margin-top: 20px;
            }

            .comment-form {
                margin-bottom: 20px;
            }

            .comment-form input[type="submit"] {
                padding: 8px 16px;
                margin-top: 10px;
                background-color: #337ab7;
                color: white;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }
            .comment-form input[type="text"] {
                width: 778px;
            }
            .comment-list {
                list-style-type: none;
                padding: 0;
            }

            .comment-item {
                margin-bottom: 10px;
                padding: 10px;
                background-color: #f9f9f9;
                border: 1px solid #ddd;
                border-radius: 5px;
            }

            .comment-user {
                font-weight: bold;
            }

            .comment-content {
                margin-top: 5px;
            }
            .btn-them-gio-hang {
                padding: 8px;
                width: fit-content;
            }
        </style>
    </head>
    <% 
if(auth !=null) {
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