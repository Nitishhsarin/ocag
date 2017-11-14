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
		$status=false;
		$errorstr="";
		
		include("include/head.php");
		include('include/mysql_view.php');
		echo "
		<div id='content'>
		<h3 style='text-align:center';>
		Practice
		</h3>
		<table id='table'>
		<tr>
			<th><strong>Problem Hash</strong></th>
			<th><strong>Title</strong></th>
			<th><strong>Accepted Submissions</strong></th>
			<th><strong>Total Submissions</strong></th>
			<th><strong>Solved By</strong></th>
		</tr>
		";
		
		$query="select * from problems where type='practice'";
		$res=mysqli_query($db,$query);
		if(!($res))
		{
			$status=false;
			$errorstr="Cannot access problems";
			goto end;
		}	
		$i=0;
		if($res)
		while($r=mysqli_fetch_array($res))
		{
			$problem_title=$r['problem_title'];
			$problem_code=$r['problem_code'];
			$solvedby=$r['solvedby'];
			$acceptedsubmissions=$r['acceptedsubmissions'];
			$totalsubmissions=$r['totalsubmissions'];
			
			echo "
			<tr";
			if($i%2==1)
				echo " class='alt'";
			echo ">
			
		 	<td>
				<a href='problem.php?pcode=$problem_code'>$problem_code</a>
		 	</td>
			<td>
		  		<label>$problem_title</label>
		 	</td>
			<td>$acceptedsubmissions</td>
			<td>$totalsubmissions</td>
			<td>$solvedby</td>
			</tr>
			";
			$i++;
		}
		
		end:
		
		if(!($status))
		{
			echo $errorstr;
		}
		echo "
		</table>
		</div>
		";
		include("include/side.php"); 
		include("include/bottom.php");
	}
	?>

	</div>

	</body>

</html>
