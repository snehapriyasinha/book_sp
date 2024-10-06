<%-- 
    Document   : registration
    Created on : 6 Oct 2024, 1:50:19 pm
    Author     : sneha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Create New Account</h1>

        <form action="LoginServlet" method="post">
           <table border="1" style="border: 1px solid #ddd; border-radius: 5px;">
            <tr>
                <td><label for="username">Username:</label></td>
                <td><input type="text" id="username" name="username" required></td>
            </tr>
            <tr>
                <td><label for="password">Password:</label></td>
                <td><input type="password" id="password" name="password" required></td>
            </tr>
            <tr>
                <td><label for="email">Email:</label></td>
                <td><input type="email" id="email" name="email" required></td>
            </tr>          
            <tr>
                <td><label for="address">Address:</label></td>
                <td><textarea id="address" name="address" rows="4" required></textarea></td>
            </tr>
            <tr>
                <td><label for="photo">Upload Photo:</label></td>
                <td><input type="file" id="photo" name="photo" accept="image/*" required></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;">
                    <input type="submit" value="Submit">
                </td>
            </tr>
        </table>
        </form>
        <%String resultData = (String)session.getAttribute("result");
            String valColor= (String)session.getAttribute("fontcolor");
            System.out.println ("COLOR"+valColor);
            if(resultData!=null){
            
            %>
            <p style="font-family:verdana;color:<%=valColor%>">
            <%out.println("STATUS:-->"+resultData);
                }
        %>
    </body>
</html>
