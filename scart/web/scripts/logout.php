<?php
$previous = $_SERVER['HTTP_REFERER']; // get previous location
session_start();

session_destroy();
header("location:$previous");
?>