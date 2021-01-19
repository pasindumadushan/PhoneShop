<?php
session_start();
$cnt=count($_SESSION['title']); // counting values
for($i=$cnt;$i>0;$i--){

array_pop($_SESSION['title']);
}

header("location:../cart.php");
?>