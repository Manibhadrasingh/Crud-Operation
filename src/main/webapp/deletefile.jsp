
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String id  = request.getParameter("id");
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root","");
Statement st = conn.createStatement();
String sql1 = "select * from datawithfile where id = '"+id+"'";
ResultSet rs = st.executeQuery(sql1);
rs.next();
String fileName = rs.getString("photo");
String filePath = "/Users/manibhadrasingh/NetBeansProjects/CrudApplication/src/main/webapp/uploads";
File f = new File(fileName,filePath);
f.delete();

String sql2 = "delete from datawithfile where id = '"+id+"'";
int result = st.executeUpdate(sql2);

if(result > 0){
response.sendRedirect("displayfile.jsp");
    }
    else{
    out.print("error");
    }
 %>
    