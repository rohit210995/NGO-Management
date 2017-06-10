<%-- 
    Document   : Result
    Created on : 2 Nov, 2016, 11:12:57 PM
    Author     : Rohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            
            a{
                text-decoration: none;
                color : white;
                background-color: black;
                padding : 10px;
                border-radius: 5px;
                box-shadow: 2px 2px 2px #888888;
            }
            
        </style>    
    </head>
    <body>
<!--        <h1>The Email Has Been Sent to your Account. Click on the button below to go back and login !!! </h1>-->
        <h3><%=request.getAttribute("Message")%></h3>
        <a href="Login.jsp">Click</a>
    </body>
</html>
