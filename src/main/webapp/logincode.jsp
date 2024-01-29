

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
String email = request.getParameter("email");
String password = request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root","");
Statement st=con.createStatement();

//out.print(email);
//out.print("<br/>");
//out.print(password);
String sql = "select * from crud where email='"+email+"'and password='"+password+"'";
ResultSet rs = st.executeQuery(sql);
if(rs.next()){
out.print("Login successfully");
session.setAttribute("email", email);
response.sendRedirect("profile.jsp");
    }
    else{
    out.print("email or password are incorrect");
    }

%>s