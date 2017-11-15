<?php
session_start();
$_SESSION=array();
session_destroy();
setcookie('PHPSESSID','',time()-100);
header("Location: ../index.php");
?>
