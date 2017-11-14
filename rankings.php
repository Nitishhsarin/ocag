<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/beautify.css"/>
<title>O.C.A.G</title>
</head>
<body>
<div id="wrapper">
<?php
require('functions/checkidentity.php');
if(!(isloggedin("any")==true))
{
	header('Location: homepage.php');
}
else
{
	include("include/head.php");
	include('include/mysql_test.php');
	echo '
	<div id="content">
	';
	$errorstr="";
	$testid='';
	if(isset($_GET['testid']))
		$testid=strip_tags(mysqli_real_escape_string($db,$_GET['testid']));
	$testid=strtoupper($testid);
	$username=$_SESSION['username'];
	$show=false;
	if($_SESSION['type']=="admin" || $_SESSION['type']=="faculty")
		$show=true;
	else
	{
		$query="select * from test_attemptedby where rollno='$username' and testid='$testid'";
		$res=mysqli_query($db,$query);
		if(!($res))
		{
			$errorstr="Error in prequery";
			
		}
		else if(mysqli_num_rows($res)!=1)
		{
			$errorstr="You are not authorised to access the leaderboard";
			
		}
		else
			$show=true;
	}
	if($show==true)
		include("include/rankingstable.php");
	else
		echo $errorstr;
	
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
