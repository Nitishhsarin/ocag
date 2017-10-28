<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<title>O.C.A.G</title>
</head>
<body>
<div id='wrapper'>
<?php 
require('./functions/checkidentity.php');
if(!(isloggedin("any")==true))
{
	header('Location: homepage.php');
}
else
{
	include('include/head.php');
	include('include/navigation.php');
	include('include/passchange.php');
	include('include/bottom.php');
}
?>
</div>
</body>
</html>