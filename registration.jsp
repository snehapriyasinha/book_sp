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
           <br>Enter Username: <input type="text" name="uid">
           <br>Enter Password: <input type="password" name="uname">
           <br>Enter Email: <input type="text" name="email">
           <br>Enter Image: <input type="file"  name="image">
           <br><button type="submit">SUBMIT</button>
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
