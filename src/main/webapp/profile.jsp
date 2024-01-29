<%-- 
    Document   : profile
    Created on : 30-Aug-2023, 9:36:09 am
    Author     : manibhadrasingh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
//    securing page via session
Object email = session.getAttribute("email");
if(email==null){
response.sendRedirect("login.jsp");
    }
    else{
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile JSP</title>
    </head>
    <body>
        <h1>Profile</h1>
        <%
        String email1 = session.getAttribute("email").toString();
        out.print(email1);
        %>
        <br><br>
        <a href="logout.jsp">Logout</a>
    </body>
</html>

<%
    }
%>