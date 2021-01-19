<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Registration Form</title>
  <link rel="stylesheet" href="../css/register/style.css">
  
  
</head>

<body>
  <div class="container">
    <section class="register">
    
 <h1>Register for The Phone Shop </h1>
      
    <?php 
    $_ms=isset($_GET["msg"])?$_GET["msg"]:""
       ;?> 
	   <?php echo "<br>".$_ms."<br>"?>
    
      <br>
      <form method="post" action="confirm.php">
      <div>
      <h3>Personal Details</h3>
      <input type="text" name="fN" value="" placeholder="First Name *">
      <input type="text" name="mN" value="" placeholder="Middle Name">
      <input type="text" name="lN" value="" placeholder="Last Name *">
      
      <input type="text" name="username" value="" placeholder="Username*">
      
      
      </div>
      <div>
      <h3>Password</h3>
      <input type="password" name="password" value="" placeholder="Your Password *">
      <input type="password" name="confirm" value="" placeholder="Confirm Your Password *">
      
      </div>
      <div>
      
    <h3>Contact Details</h3> 
    
     
     <input type="text" name="email" value="" placeholder="E-mail Address *">
      <input type="text" name="mNo" value="" placeholder="Mobile Number *"> 
      <input type="text" name="lNo" value="" placeholder="Land Number"> 
      <input type="text" name="addr" value="" placeholder="Your Address *"> 
      <input type="text" name="country" value="" placeholder="Your country"> 
		<p style="color:#C03; float:right">* 	Required Fields</p>
      </div>
        <label>
          <input type="checkbox" name="remember_me" id="remember_me" value="agree">
           I agree to the User Agreement.
        </label>
      <p class="submit"><input name="submit" type="submit" value="Sign Up""></p>
      </form>
    </section>
  </div>

</body>
</html>