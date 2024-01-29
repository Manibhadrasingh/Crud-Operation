<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String mobile = request.getParameter("mobile");
String password = request.getParameter("password");

out.print(name);    
out.print("<br/>");
out.print(email);
out.print("<br/>");
out.print(mobile);
out.print("<br/>");
out.print(password);
out.print("<br/>");

try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root","");

    Statement st = con.createStatement();
    int result = st.executeUpdate("insert into crud(name,email,mobile,password) values('"+name+"','"+email+"','"+mobile+"','"+password+"')");

    if(result != 0) {
        response.sendRedirect("display.jsp");
    } else {
        out.print("Connection Failed");
    }

    con.close();
} catch (Exception e) {
    out.print("Error: " + e.getMessage());
}
%>
