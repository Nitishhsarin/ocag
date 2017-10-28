<?php
require('./checkidentity.php');
if(!( isloggedin("faculty")==true))
{
	header('Location: ./../homepage.php');
}
else
{
	ini_set('display_errors',1);
	ini_set('display_startup_errors',1);
	include('./../include/mysql_faculty.php');
	error_reporting(-1);
	mysqli_autocommit($db,false);

	$errorstr="";
	$status=true;
	
	$teststodelete=array();
	if(isset($_POST['teststodelete']))
	{
		$teststodelete=$_POST['teststodelete'];
	}
	
	$query="delete from test_main where testid=";
	foreach($teststodelete as $testid)
	{
		$testid=strip_tags(mysqli_real_escape_string($db,$testid));
		$res=mysqli_query($db,$query."'$testid'");
		//echo $query.$testid;
		if(!($res))
		{
			$status=false;
			$errorstr="Error in delete query";
			
			goto end;
		}
	}
	end:
	if($status)
	{
		mysqli_commit($db);
		mysqli_close($db);
		header("Location: ./../alltests.php?prev=done&msg=test deleted successfully");
	}
	else
	{
		mysqli_rollback($db);
		mysqli_close($db);
		//echo "$errorstr";
		header("Location: ./../alltests.php?prev=fail&error=Couldn't delete test: $errorstr");
	}
	;
}
?>
