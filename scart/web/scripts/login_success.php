
<html>
<body>

<?php
session_start();
$_SESSION['username'];
$_SESSION["price"]=array();// for cart
$_SESSION["title"]=array();
$_SESSION["imagName"]=array();
  
header("location:../index.php");
?> 

</body>
</html>