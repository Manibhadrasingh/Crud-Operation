
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    .line{
    width: 800px;
    border: 0.5px solid black;
    margin: 100px auto;
}

.registration{
    text-align: center;
    font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
}
.main-head{
    font-size: 48px;
  
}
.welcome{
    font-size: 16px;
    font-weight: 700;
    margin-bottom: 35px;
}
.input{
    width: 280px;
    margin: 6px;
    padding: 14px;
    font-size: 16px;
    font-weight: 500;
    color: black;
    border: 0.3px solid grey;
    border-radius: 6px;
    color: black;
}

.btn{
    width: 200px;
    padding: 16px;
    font-size: 16px;
    font-weight:300;
    border-radius: 30px;
    color:#fff;
    background-color: black;
    border: none;
    margin-top: 15px;
}
.mem{
    color: black;
}
.margin-last{
    margin-bottom: 50px;
}
.break{
    color: gray;
    margin-top: 40px;
}
.last-line{
    color: gray;
    font-weight: 500;
    font-size: 10px;
}
</style>
<body>
    <form action="logincode.jsp" method="post">
    <div class="line">    </div>
    <div class="registration">
        <h1 class="main-head">Login</h1>
        <p class="welcome">Welcome back!</p>
        <input type="email" class="input" name="email" placeholder="Enter your email" required name="email"><br>
        <input type="password" class="input" name="password" placeholder="Enter your passsword" required name="password"><br>
 
        <button class="btn">Login</button>
        <div class="break">
        <p>Not a member? <a href="#" class="mem">Sign up</a></p>
        <p class="margin-last"><a href="#" class="mem">Forget your password?</a></p>
  
        <p class="last-line"> By continuing, you agree to Crud's <a href="#" class="mem">terms</a></p>
        <p class="last-line">and acknowledge you've read our <a href="#" class="mem">privacy policy</a></p>

    </form>

</body>
</html>