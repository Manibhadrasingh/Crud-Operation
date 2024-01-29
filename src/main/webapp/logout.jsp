<%-- 
    Document   : logout
    Created on : 30-Aug-2023, 9:52:27 am
    Author     : manibhadrasingh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
session.removeAttribute("email");
response.sendRedirect("login.jsp");
%>