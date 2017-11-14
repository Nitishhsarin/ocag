<!DOCTYPE html>
<html>
<head>
<link rel='stylesheet' type='text/css' href='css/style.css' />

<title>O.C.A.G</title>

</head>

<body>
<div id='wrapper'>
<?php 
require('functions/checkidentity.php');
if(!(isloggedin("any")==true))
{
	header('Location: login.php');
}
else
{
	include('include/head.php');
	ini_set('display_errors',1);
	ini_set('display_startup_errors',1);
	error_reporting(-1);
	$status=true;
	$errorstr='';
	$user=$_GET['user'];
	$user=strtoupper($user);
	include('include/mysql_view.php');
	$user=strip_tags(mysqli_real_escape_string($db,$user));
	$query="select type from users where userid='$user'";
	$res=mysqli_query($db,$query);
	if(!($res))
	{
		$status=false;
		$errorstr="Error in accessing Database";
		$errorstr=mysqli_error($db);
		goto end;
	}
	if(mysqli_num_rows($res)!=1)
	{	
		$status=false;
		$errorstr="No user exists by username $user";
		goto end;	
	}
	$res=mysqli_fetch_array($res);
	$type=$res['type'];
	$page='';
	if($type=="student")
		$page="student.php?rollno=";
	else if($type=="faculty")
		$page="faculty.php?facultyid=";
	else if($type=="admin")
		$page="admin.php?adminid=";
	if($page=="")
	{	
		$status=false;
		$errorstr="Error occurred";
		goto end;
	}
	echo "Location: ./$page$user";
	header("Location: ./$page$user");
	end:
	if(!($status))
		echo $errorstr;
	
	include('include/bottom.php'); 
}
?>
</div>

</body>

</html>
