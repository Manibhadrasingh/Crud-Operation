2<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>

<%
  String id = request.getParameter("id");
  String name = request.getParameter("name");
  String email = request.getParameter("email");
  String mobile =request.getParameter("mobile");
  String password = request.getParameter("password");
  
if(id!=null){
    Connection con = null;
    PreparedStatement ps = null;
    int id1 = Integer.parseInt(id);
    try{
      Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root","");
        String sql = "update crud set name=?,email=?,mobile=?,password=? where id="+id;
        ps = con.prepareStatement(sql);
        ps.setString(1,name);
        ps.setString(2,email);
        ps.setString(3,mobile);
        ps.setString(4,password);
        
        int i = ps.executeUpdate();
        if(i>0){
//            out.print("Record Updated Successfully.");
                response.sendRedirect("display.jsp");
    }
    else{
            out.print("There is a problem in updating Record.");
    }
    }
    catch(SQLException a){
    request.setAttribute("error", a);
      out.println(a);
    }
 
    }
%>