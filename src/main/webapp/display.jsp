
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Data</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <style>
            .btn-primary .btn-danger, a{
                color:white;
                text-decoration: none;
            }
        </style>
    </head>
    <body>
       <div class="container">
    <button class="btn btn-primary my-5"> <a href="index.jsp" class="text-light">Add User</a> </button>
    </div>

    <table class="table my-4" border="1">
  <thead>
    <tr>    
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Mobile</th>
      <th scope="col">Password</th>
      <th scope="col">Action</th>
    
    </tr>
  </thead>
  
  <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root","");
      Statement st=con.createStatement();
      ResultSet rs = st.executeQuery("select * from crud");
      
        while(rs.next()){
        %>
        
        <tr>
             <td><%=rs.getString("id")%></td>
             <td><%=rs.getString("name")%></td>
             <td><%=rs.getString("email")%></td>
             <td><%=rs.getString("mobile")%></td>
             <td><%=rs.getString("password")%><td>
             <button type="button" class="btn btn-primary"><a href="update.jsp?id=<%=rs.getString("id")%>">Update</a></button>
             <button type="button" class="btn btn-danger"><a onclick="return confirmDelete();" href="delete.jsp?id=<%=rs.getString("id")%>">Delete</a></button>
             
        </tr>
        <%
            }
        %>
          </table>
          <script>
  function confirmDelete() {
        return confirm("Are you sure you want to delete this item?");
    }    
          </script>
    </body>
</html>
