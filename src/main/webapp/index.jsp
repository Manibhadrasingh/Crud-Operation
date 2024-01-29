

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                margin-top: 10px
            }
        </style>
    </head>
    <body>
<div class="container my-5">
  <form method="post" action="coding.jsp">

    <div class="form-group">
        <h4 class="up-head">User Registration</h4>
      <label>Name</label><br>
      <input type="text" class="form-control" placeholder="Enter your name" name="name" autocomplete="off">
    </div>

    <div class="form-group">
      <label>Email</label><br>
      <input type="email" class="form-control" placeholder="Enter your email" name="email" autocomplete="off">
    </div>

    <div class="form-group">
      <label>Mobile</label><br>
      <input type="text" class="form-control" placeholder="Enter your mobile number" name="mobile" autocomplete="off">
    </div>

    <div class="form-group">
      <label>Password</label><br>
      <input type="password" class="form-control" placeholder="Enter your password" name="password" autocomplete="off">
    </div>
    <button type="submit" class="btn btn-primary submit" name="submit">Submit</button>
  </form>
</div>

    </body>
</html>
