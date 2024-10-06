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
            <table border="1" style="border: 1px solid #ddd; border-radius: 5px;">
            <tr>
                <td><label for="username">Username:</label></td>
                <td><input type="text" id="id" name="id" required></td>
            </tr>
            <tr>
                <td><label for="password">Password:</label></td>
                <td><input type="password" id="pwd" name="pwd" required></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;">
                    <input type="submit" value="Submit">
                </td>
            </tr>
        </table>
        </form>
    </body>
</html>
