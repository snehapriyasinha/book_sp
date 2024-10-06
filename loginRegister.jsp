<%-- 
    Document   : loginRegister
    Created on : 6 Oct 2024, 1:11:39 pm
    Author     : sneha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Login</h1>
        <form action="LoginServlet" method="get">
            <br>Enter User ID: <input type="text" name="id" id="id">
            <br>Enter Password: <input type="text" name="pwd" id="pwd">
            <br><button type="submit">SUBMIT</button>
        </form>
    </body>
</html>
