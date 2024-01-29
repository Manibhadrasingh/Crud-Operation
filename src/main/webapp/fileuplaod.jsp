<%-- 
    Document   : fileuplaod
    Created on : 01-Sept-2023, 8:55:41 am
    Author     : manibhadrasingh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
             .up-head{
                text-align: center;
                color:forestgreen;
                margin-top: 40px;
            }
            .submit{
                margin-top: 10px
            }
            .form-group{
                margin: 10px auto;
            }
        </style>
    </head>
    <body>
<div class="container my-5 cen">
    <form method="post" action="fileuploadcode.jsp" enctype="multipart/form-data">

    <div class="form-group">
        <h4 class="up-head">File Uploading</h4>
      <label>Name</label><br>
      <input type="text" class="form-control" placeholder="Enter your name" name="name" autocomplete="off">
    </div>
    <div class="form-group">
      <label>Email</label><br>
      <input type="email" class="form-control" placeholder="Enter your name" name="email" autocomplete="off">
    </div>
    <div class="form-group">
      <label>Password</label><br>
      <input type="password" class="form-control" placeholder="Enter your name" name="password" autocomplete="off">
    </div>
    <div class="form-group">
      <label>Mobile</label><br>
      <input type="text" class="form-control" placeholder="Enter your name" name="mobile" autocomplete="off">
    </div>

    <div class="form-group">
      <label>Upload Your Photo</label><br>
      <input type="file" class="form-control" placeholder="Upload Your Photo" name="photo" autocomplete="off">
    </div>
    <button type="submit" class="btn btn-primary submit" name="submit">Submit</button>
  </form>
    </body>
</html>
