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
             @keyframes rung {
                0% {
                    transform: translateX(0);
                }
                10%, 30%, 50%, 70%, 90% {
                    transform: translateX(-4px);
                }
                20%, 40%, 60%, 80% {
                    transform: translateX(4px);
                }
                100% {
                    transform: translateX(0);
                }
            }
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


            a {
                color: #fff;
                margin-right: 10px;
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