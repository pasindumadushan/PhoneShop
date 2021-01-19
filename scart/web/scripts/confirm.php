<?php
if ($_POST['remember_me'] == 'agree'){
$conn = mysqli_connect('localhost', 'root', '');
if (!$conn){
    die("Database Connection Failed" . mysqli_error());
}
$mydb = mysqli_select_db($conn,'web');
if (!$mydb){
    die("Database Selection Failed" . mysqli_error());

}

$un=mysqli_escape_string($conn,$_POST['username']);
$pw=md5(mysqli_escape_string($conn,$_POST['password'])); // md5 for encrypting
$cpw=md5(mysqli_escape_string($conn,$_POST['confirm']));

$lN=mysqli_escape_string($conn,$_POST['lN']);
$fN=mysqli_escape_string($conn,$_POST['fN']);
$mNo=mysqli_escape_string($conn,$_POST['mNo']);
$addr=mysqli_escape_string($conn,$_POST['addr']);
$email=mysqli_escape_string($conn,$_POST['email']);


$mN=mysqli_escape_string($conn,$_POST['mN']);
$lNo=mysqli_escape_string($conn,$_POST['lNo']);
$country=mysqli_escape_string($conn,$_POST['country']);


//checking username form database
$pwCheck=mysqli_query($conn,"SELECT * FROM users WHERE username='".$un."'");

//count no of rows

$count=mysqli_num_rows($pwCheck);


if(empty($pw) || empty($un) || empty($lN) || empty($fN) || empty($mNo) || empty($addr) || empty($email) ) { //check empty fields
header("location:register.php?msg=Required field cannot be blank. ");

}else{ 
if($pw=$cpw){
	//checking whether password and confirmation password is equal
	
$sql="insert into users(username,password,lN,fN,mNo,addr,email,mN,lNo,country) values
('".$un."', 
'".$pw."',
'".$lN."',
'".$fN."',
'".$mNo."',
'".$addr."',
'".$email."',
'".$mN."',
'".$lNo."',
'".$country."')";


$res=mysqli_query($conn,$sql);
	if($res){
	header("location:login.php?msg=You are successfully registered. Please log in ");
	}else if($count==1){

		header("location:register.php?msg=Username already exists");
		
		} 
		
	}else{
header("location:register.php?msg=Password does not match. ");	
}

}
}else
header("location:register.php?msg=Please agree to the user agreement ");	



mysqli_close($conn);




?>