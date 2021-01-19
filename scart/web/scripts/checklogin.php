<?php

$host="localhost"; 
$username="root";
$password="";
$db_name="web";
$tbl_name="users";

// Connect to server and select databse.
$conn=mysqli_connect("$host", "$username", "$password")or die("cannot connect");
mysqli_select_db($conn,"$db_name")or die("cannot select DB");

// username and password sent from form
$myusername=$_POST['username'];
$mypassword=md5($_POST['password']); //md5 encrypting

$sql="SELECT * FROM $tbl_name WHERE username='$myusername' and password='$mypassword'";
$result=mysqli_query($conn,$sql);

// mysqli_num_row is counting table row
$count=mysqli_num_rows($result);

// If result matched $myusername and $mypassword, table row must be 1 row

if($count==1){
session_start();
// create a session with $myusername, $mypassword and redirect to home.php
$_SESSION["username"] =$myusername;
$_SESSION["password"];
if(isset($_SESSION["username"])){
header("location:../index.php");
}
}
else {

   
echo ("<Script language='JavaScript'>
    window.alert('Username or Password Incorrect')
    window.location.href='login.php';
    </Script>");
}

mysqli_close($conn);

?>