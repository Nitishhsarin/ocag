<!DOCTYPE html>

<html>

<head> <link rel="stylesheet" type="text/css" href="css/beautify.css"/>

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
	include("include/studentgroup.php");
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
