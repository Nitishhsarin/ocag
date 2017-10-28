<?php
require('checkidentity.php');
if(!(isloggedin("admin")==true))
{
	header('Location: ./../homepage.php');
}
else
{
	ini_set('display_errors',1);
	ini_set('display_startup_errors',1);
	include('./../include/mysql_admin.php');
	error_reporting(-1);
	mysqli_autocommit($db,false);

	$errorstr="";
	$status=true;
	
	$studentstodelete=array();
	if(isset($_POST['studentstodelete']))
	{
		$studentstodelete=$_POST['studentstodelete'];
	}
	$query="delete from users where userid=";	
	foreach($studentstodelete as $rollno)
	{
		$rollno=strip_tags(mysqli_real_escape_string($db,$rollno));
		$res=mysqli_query($db,$query."'$rollno'");
		if(!($res))
		{
			$status=false;
			$errorstr="Error in delete query";
			goto end;
		}
		$res2=shell_exec("rm -rf ./../codes/$rollno");
		
		if($res2)
		{
			$errorstr="Error in deleting files for $rollno";
			goto end;//it may just be that the user was not in the database..no need of goto end maybes
		}
	}
	end:
	if($status)
	{
		mysqli_commit($db);
		mysqli_close($db);
		header("Location: ./../students.php?prev=done&msg=Students deleted successfully");
	}
	else
	{
		mysqli_rollback($db);
		mysqli_close($db);
		//echo "$errorstr";
		header("Location: ./../students.php?prev=fail&error=Couldn't delete students: $errorstr");
	}
	;
}
?>
