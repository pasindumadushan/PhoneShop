<?php
session_start();

$host="localhost"; 
$username="root";
$password="";
$db_name="web";
$tbl_name="users";

// Connect to server and select databse.
$con=mysqli_connect("$host", "$username", "$password")or die("cannot connect");
mysqli_select_db($con,"$db_name")or die("cannot select DB");

// get un from session
if(isset($_SESSION["username"])){ // check if the session is set, or will be a error
$un=$_SESSION["username"];
$sql="SELECT * FROM $tbl_name WHERE username='$un'";
$c_sql=mysqli_query($con,$sql);
$row=mysqli_fetch_array($c_sql,MYSQLI_ASSOC);

}