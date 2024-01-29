
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>

<%
    String id = request.getParameter("id");
    String driver = "com.mysql.jdbc.Driver";
    String host = "jdbc:mysql://localhost:3306/crud";
    String username = "root";
    String password = "";
    Class.forName(driver);
    Connection con = DriverManager.getConnection(host,username,password);
    String sql = "delete from crud where id=?";
    PreparedStatement pstmt = con.prepareStatement(sql);
    pstmt.setInt(1,Integer.parseInt(id));
    int rowsAffected = pstmt.executeUpdate();
    
    if(rowsAffected!=0){
       response.sendRedirect("display.jsp");
    
    }
    else{
    out.print("Data has not been deleted");
    }
    
%>