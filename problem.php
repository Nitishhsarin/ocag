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
	header('Location: login.php');
}
else
{
	
	ini_set('display_errors',1);
	ini_set('display_startup_errors',1);
	error_reporting(-1);
	include("include/head.php");
	
	include('include/mysql_view.php');
	$username='';
	$usertype='';
	if(isset($_SESSION['username']))
		$username=$_SESSION['username'];
	if(isset($_SESSION['type']))
		$usertype=$_SESSION['type'];

	$errorstr='';
	$status=true;
	
        $probcode='';	

        $testid='';
	$istest=false;

	$show=false;
	echo '	
		<div id="content">
	';
        if(isset($_GET['pcode']))
        {
			$probcode=strip_tags(mysqli_real_escape_string($db,$_GET['pcode']));
			$probcode=strtoupper($probcode);
			$res=mysqli_query($db,"select * from problems where problem_code='$probcode'");
			if(!($res))
			{
				$status=false;
				$errorstr="Error in query";
				goto end;
			}
			if(mysqli_num_rows($res)!=1)
			{
				$status=false;
				$errorstr="Problem $probcode does't exist";
				goto end;
			}
		
			$r=mysqli_fetch_array($res);
			if($r['type']=="practice" || ($_SESSION['type']=="faculty" || $_SESSION['type']=="admin"))
			{
				$show=true;
			}
			else
			{
				$errorstr="Problem not available for viewing";
			}
      	}
	else if(isset($_POST['attempt']) )
	{	
		$istest=true;
		if(isset($_POST['problem_code']))
			$probcode=strip_tags(mysqli_real_escape_string($db,$_POST['problem_code']));
		if(isset($_POST['testid']))
			$testid=strip_tags(mysqli_real_escape_string($db,$_POST['testid']));
		if($_SESSION['type']=="student")
		{
			include('./functions/studauthorised.php');
			$res=isstudentauthorised($db,$username,$testid);
			if($res==2 || $res==3)
			{
				//echo "not allowed";
				header("Location: ./test.php?testid=$testid");
				goto end;
			}
			else if($res==1)
			{
				if(isproblemintest($db,$probcode,$testid)==1)
					$show=true;
				else
					$show=false;
			}
			else
			{
				echo $res;
				goto end;
			}
		}
		else if($_SESSION['type']=="student" || $_SESSION['type']=="faculty")
		{
			$errorstr="";
			$show=true;
		}
	}
	
	echo "<br>";
	if($show!=true)
		goto end;
	if($istest==true)
		echo "<a href='./test.php?testid=$testid'><input type='button' value='Back to Problems' class='bbutton' ></a>";
	echo "<br><a href='./usersubmit.php?pcode=$probcode' class='bbutton'>View Submissions </a>";
	
	$languagesallowed=array();
	$query="select language from problems_languagesallowed where problem_code='$probcode'";
	$res=mysqli_query($db,$query);
	while($l=mysqli_fetch_array($res))
	{
		$s=$l['language'];
		$languagesallowed[]=$s;
		//echo $s;
	}
	if(file_exists("./problems/$probcode/title"))
     		$problemtitle=nl2br(file_get_contents("./problems/$probcode/title"));
	else
		$problemtitle='';
	if(file_exists("./problems/$probcode/statement"))
		$problemstatement=nl2br(file_get_contents("./problems/$probcode/statement"));
	else
		$problemstatement='';
	if(file_exists("./problems/$probcode/input_desc"))
		$input_desc=nl2br(file_get_contents("./problems/$probcode/input_desc"));
	else
		$input_desc='';
	if(file_exists("./problems/$probcode/output_desc"))
	      	$output_desc=nl2br(file_get_contents("./problems/$probcode/output_desc"));
	else
		$output_desc='';
	if(file_exists("./problems/$probcode/constraints"))
		$constraints=nl2br(file_get_contents("./problems/$probcode/constraints"));
	else
		$constraints='';
	if(file_exists("./problems/$probcode/sampleip"))
	      	$sampleip=nl2br(file_get_contents("./problems/$probcode/sampleip"));
	else
		$sampleip='';
	if(file_exists("./problems/$probcode/sampleop"))
	     	$sampleop=nl2br(file_get_contents("./problems/$probcode/sampleop"));
	else
		$sampleop='';
	if(file_exists("./problems/$probcode/sampleexp"))
	     	$sampleexp=nl2br(file_get_contents("./problems/$probcode/sampleexp"));
	else
		$sampleexp='';
	
      	include("./include/title.php");
      	include("./include/problem.php"); 
     	include("./include/io.php"); 
	include("./include/explanation.php");
		
	include("./include/submit.php"); 
	

	end:
		echo "$errorstr
	</div> <!-- end #content -->
	";
      include("./include/side.php");
    
	      
      include("./include/bottom.php"); 
}
?>
</div> <!-- End #wrapper -->

</body>

</html>
