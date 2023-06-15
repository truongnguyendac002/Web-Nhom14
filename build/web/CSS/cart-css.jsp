<%-- 
    Document   : cart-css
    Created on : Jun 9, 2023, 5:04:07 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            *{
                margin: 0px;
                padding: 0px;
            }
            body {
                font-family: Arial, sans-serif;
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
            
            a{
                text-decoration: none;
            }
            
            div .form-group {
                justify-content: center;
            }
            
            .container {
                margin: 20px auto;
                max-width: 100%;
            }

            .py-3 {
                padding-top: 15px;
                padding-bottom: 15px;
            }

            .btn-primary {
                background-color: #007bff;
                color: #fff;
            }

            .table-lought {
                width: 100%;
                margin-bottom: 1rem;
                color: #212529;
            }

            .table-lought th {
                vertical-align: bottom;
                border-bottom: 2px solid #dee2e6;
                padding: 8px;
                text-align: left;
            }

            .table-lought td {
                padding: 8px;
                vertical-align: middle;
                border-top: 1px solid #dee2e6;
            }
            
            .form-group {
                width: 60%;
            }

            .btn-decre,
            .btn-incre {
                box-shadow: none;
                font-size: 25px;
                width: 30px;
                height: 30px;
                padding: 0;
                border: none;
                background-color: transparent;
            }

            .btn-decre i,
            .btn-incre i {
                margin: 0;
            }
            
            .btn-decre {
                color: #fff;
                background-color: #28a745;
            }

            .btn-incre {
                color: #fff;
                background-color: #28a745;
            }

            .btn-danger {
                background-color: #dc3545;
                color: #fff;
            }
            
            .btn-primary {
                display: block;
                width: 10%;
                padding: 8px 0px;
                color: #fff;
                border: none;
                border-radius: 4px;
                font-size: 14px;
                cursor: pointer;
                margin-bottom: 5px;
                justify-content: center;
            }
            
            .btn-buy {
                width: 20%;
            }

        </style>
    </head>
</html>
