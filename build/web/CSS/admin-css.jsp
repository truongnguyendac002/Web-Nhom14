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
                font-family: Arial;
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

            form {
                width: 780px;
            }

            a {
                text-decoration: none;
            }
            .container {
                display: none;
            }
            body {
                font-family: Arial, sans-serif;
                background-color: #f2f2f2;
            }

            .body {
                max-width: 800px;
                margin: 0 auto;
                padding: 40px;
                margin-top: 60px;
                background-color: #fff;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            }

            .option {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 20px;
            }

            .option h3 {
                margin: 0;
            }

            .nut {
                display: block;
                padding: 10px 15px;
                background-color: #337ab7;
                color: #fff;
                border: none;
                border-radius: 4px;
                font-size: 14px;
                cursor: pointer;
            }

            .nut:hover {
                background-color: #23527c;
            }

            .content {
                display: flex;
                justify-content: space-between;
            }

            .container {
                display: none;
            }

            .container h3 {
                margin: 0 0 10px;
            }

            .container input[type="text"] {
                width: 100%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 3px;
                margin-bottom: 10px;
            }

            .container input[type="submit"] {
                width: 801px;
                padding: 10px;
                background-color: #333;
                color: #fff;
                border: none;
                border-radius: 3px;
                cursor: pointer;
            }

            .container input[type="submit"]:hover {
                background-color: #222;
            }
            input[type="file"] {
                display: none;
            }

            .custom-file-upload {
                display: inline-block;
                padding: 6px 12px;
                cursor: pointer;
                border: 1px solid #ccc;
                border-radius: 4px;
                background-color: #f1f1f1;
                color: #333;
                margin-bottom: 10px;
            }

            .custom-file-upload:hover {
                background-color: #e9e9e9;
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