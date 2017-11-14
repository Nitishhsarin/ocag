<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/beautify.css"/>

<title>O.C.A.G</title>

</head>

<body>
<div id="wrapper">
<?php 
require('functions/checkidentity.php');
if(!(isloggedin("any")==true))
{
	header('Location: login.php');
}
else
{
	include("include/head.php");
	echo '
	<div id="content">
	';
	include("include/facultytable.php");
	echo '
	</div>
	';
	include("include/side.php");
	include("include/bottom.php"); 
}
?>
</div>

</body>

</html>
