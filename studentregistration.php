<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/beautify.css"/>
<title>O.C.A.G</title>
</head>
<body>
<div id='wrapper'>
<?php 
require('functions/checkidentity.php');
if(!(isloggedin("admin")==true || ( isset($_GET['edit']) && (isloggedin("student")==true && $_SESSION['username']==$_GET['edit']))))
{
	header('Location: homepage.php');
}
else
{
	include('include/head.php');
	include('include/studentregform.php');
	include('include/bottom.php');
}
?>
</div>
</body>
</html>
