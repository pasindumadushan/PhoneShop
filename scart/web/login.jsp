<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Login</title>
  <link rel="stylesheet" href="css/register/style.css">
</head>

<body>
  <div class="container" style=" width: 395px;">
    <section class="register">
    
   <h1>Log In to The Phone Shop</h1>
   
    <% if(request.getAttribute("msg")!=null){ %>
   <br>       
   <b style="font-size: 18px"><%= request.getAttribute("msg")%>  </b>    
   <br>  
  <% }
   %>
      
      <br>
      <form method="post" action="Checklogin">
      <div>
      <h3>User Name</h3>
      <input type="text" name="username" value="" placeholder="Username">
      <h3>Password</h3>
      <input type="password" name="password" value="" placeholder="Your Password">
    
      <p class="submit"><input type="submit" name="commit" value="Login"></p>
      </form>
    </section>
  </div>

</body>
</html>