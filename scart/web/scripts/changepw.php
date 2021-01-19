<script>
    window.onunload = refreshParent;
    function refreshParent() {
        window.opener.location.reload();
    }
</script>

<?php  
session_start();
$conn = mysqli_connect('localhost', 'root', '');
if (!$conn){
    die("Database Connection Failed" . mysqli_error());
}
$mydb = mysqli_select_db($conn,'web');
if (!$mydb){
    die("Database Selection Failed" . mysqli_error());

}

if(isset($_POST['opw']) AND isset($_POST['npw']) AND isset($_POST['cpw'])){
	

$un=mysqli_escape_string($conn,$_SESSION['username']);

$opw=md5(mysqli_escape_string($conn,$_POST['opw']));
$npw=md5(mysqli_escape_string($conn,$_POST['npw'])); // md5 for encrypting
$cpw=md5(mysqli_escape_string($conn,$_POST['cpw']));


if(!empty($_POST['opw']) AND !empty($_POST['npw']) AND !empty($_POST['cpw']) ){
	
	$qu="SELECT password FROM users WHERE username='$un' AND password='$opw.'";
	
$res=mysqli_query($conn,$qu);

	if($res){
		
		if($npw==$cpw){
		
		
			$upqu="UPDATE users SET password='".$npw."' WHERE username='".$un."'";
			if(mysqli_query($conn,$upqu)){
				
				session_destroy(); //destroy old session
			echo ("<Script language='JavaScript'>
    window.alert('Update Success. Please login using your new password')
	window.close();
    </Script>");
			
			}
			else echo ("<Script language='JavaScript'>
    window.alert('Update unsuccess')
    window.location.href='../passwordChange.php';
	
    </Script>");
			
		
		}echo ("<Script language='JavaScript'>
    window.alert('Password doesn't match')
    window.location.href='../passwordChange.php';
    </Script>");
	
	}else
	echo ("<Script language='JavaScript'>
    window.alert('Enter correct password')
    window.location.href='../passwordChange.php';
    </Script>");
	
	
}else
{
echo ("<Script language='JavaScript'>
    window.alert('Password is empty')
    window.location.href='../passwordChange.php';
    </Script>");
}
}
?>

