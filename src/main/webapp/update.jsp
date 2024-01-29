

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    String id = request.getParameter("id");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root","");
    Statement st = con.createStatement();
    String sql = "select * from crud where id="+id;
    PreparedStatement pstmt = con.prepareStatement(sql);
    ResultSet rs = pstmt.executeQuery();
    while(rs.next()){
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crud Operation</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <style>
            .up-head{
                text-align: center;
                color:forestgreen;
                margin-top: 40px;
            }
            .submit{
                margin-top: 10px;
            }
        </style>
    </head>
    <body>
        <h4 class="up-head">Update data from database using JSP</h4>
<div class="container my-5">
  <form method="post" action="update-process.jsp">
      <input type="hidden" name="id" value="<%=rs.getString("id")%>">

    <div class="form-group">
      <label>Name</label><br>
      <input type="text" class="form-control" placeholder="Enter your name" name="name" autocomplete="off" value="<%=rs.getString("name")%>">
    </div>

    <div class="form-group">
      <label>Email</label><br>
      <input type="email" class="form-control" placeholder="Enter your email" name="email" autocomplete="off" value="<%=rs.getString("email")%>">
    </div>

    <div class="form-group">
      <label>Mobile</label><br>
      <input type="text" class="form-control" placeholder="Enter your mobile number" name="mobile" autocomplete="off" value="<%=rs.getString("mobile")%>">
    </div>

    <div class="form-group">
      <label>Password</label><br>
      <input type="password" class="form-control" placeholder="Enter your password" name="password" autocomplete="off" value="<%=rs.getString("password")%>">
    </div>
    <button type="submit" class="btn btn-primary submit" name="submit">Update</button>
  </form>
     
</div>
     <%
        }
        %>

    </body>
</html>
