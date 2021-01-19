<html>
<head>
<meta charset="utf-8">
<title>Your Password</title>
  <link rel="stylesheet" href="css/register/style.css">
</head>

<body>
  <div class="container" style=" width: 395px;">
    <section class="register">
    
   <h1>Change Password</h1>
   <br>
   <br>
   <br>
            <% if(session.getAttribute("user")!=null){%>
            
            <% if(request.getAttribute("msg")!=null){ %>
   <br>       
   <b style="font-size: 18px"><%= request.getAttribute("msg")%>  </b>    
   <br>  
  <% }
   %>
   
   
   
      <br>
      <br>
      <br>
      <form method="post" action="ChangePW">
      <div>
      <h3>Old Password</h3>
      <input type="password" name="opw" value="" placeholder="Old Password">
      <h3>New Password</h3>
      <input type="password" name="npw" value="" placeholder="New Password">
      <h3>Confirm New Password</h3>
      <input type="password" name="cpw" value="" placeholder="Confirm Password">
    
      <p class="submit"><input type="submit" name="commit" value="Change"></p>
     
    
    <td>
    
            <input type="reset" style="float:right">
	
                <% 
	
	}   else 
        {
    out.println ("<h1>Please login to change the password </h1>");%>
    <input type="submit" name="Login" id="submit" value="Login" onClick="window.open('scripts/login.php');window.close()">


        <% }%>

        <a href="UserServlet"><img src="images/user/back.jpg" width="60" height="40" alt=""/></a>
        </br>
        </td>
      </form>
    </section>
  </div>

</body>
</html>