<?php
require('checkidentity.php');
if(!(isloggedin("any")==true))
{
	header('Location: ./../homepage.php');
}
else
{
	include('./../include/mysql_view.php');
	$username='';
	$password='';
	$confirmpassword='';
	if(isset($_POST['username']))
		$username=$_POST['username'];
	if(isset($_POST['password']))
		$password=$_POST['password'];
	if(isset($_POST['confirmpassword']))
		$confirmpassword=$_POST['confirmpassword'];
	
	$username=strip_tags(mysqli_real_escape_string($db,$username));
	$password=strip_tags(mysqli_real_escape_string($db,$password));
	$confirmpassword=strip_tags(mysqli_real_escape_string($db,$confirmpassword));
	if(!($_SESSION['type']=="admin" || ($_SESSION['username']==$username)))
	{
		echo "not enough privileges";
		echo $_SESSION['type'];
		echo $_SESSION['username'];
		echo $username;
		
	}
	else
	{
		mysqli_close($db);
		$status=true;
		$errorstr='';
		if($password=='')
		{
			$status=false;
			$errorstr="Empty password not allowed";
			goto end;
		}
		if($password!=$confirmpassword)
		{
			$status=false;
			$errorstr="Two passwords don't match";
			goto end;
		}
		
		include('./../include/mysql_password.php');
		ini_set('display_errors',1);
		ini_set('display_startup_errors',1);
		
		error_reporting(-1);
		mysqli_autocommit($db,false);

		$errorstr="";
		$status=true;
	
		
		$query="update logininfo set password=SHA1('$password') where username='$username'";
		$res=mysqli_query($db,$query);
		if(!($res))
		{
			$status=false;
			$errorstr="Error in updating the database";
			goto end;
		}
	
		end:
		
		if($status)
		{
			mysqli_commit($db);
			mysqli_close($db);
			header("Location: ./../passchange.php?user=$username&prev=done");
		}
		else
		{
			echo mysqli_error($db);	
			mysqli_rollback($db);
			mysqli_close($db);
		}
	
		;
	}
}
?>
