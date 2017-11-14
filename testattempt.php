<!DOCTYPE html>
<html>
<head> <link rel="stylesheet" type="text/css" href="css/beautify.css" />

<title>O.C.A.G</title>

</head>
<body>
<div id="wrapper">

<?php 
require('functions/checkidentity.php');
if(!(isloggedin("faculty")==true))
{
	header('Location: login.php');
}
else
{
	include("include/head.php");
	echo "
	<div id='content'>
	";
	include("include/test_attemptedby_table.php");
	echo "
	</div>
	";
	include("includes/side.php"); 
	include("includes/bottom.php"); 
}
?>
</div>

</body>

</html>
