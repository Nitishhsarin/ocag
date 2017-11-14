<div id='sidebar'>
<?php
if(isset($_SESSION['type']))
{
		if($_SESSION['type']=='admin' || $_SESSION['type']=="faculty")
		{
			echo "<h3>Create</h3>";
			if($_SESSION['type']=="admin")
			{	
				echo " 
					<li><a href='studentregistration.php'>Student</a></li>
					<li><a href='addstudentgroup.php'>Student Group</a></li>
					<li><a href='uploadstudent.php'>Upload Student List</a></li>
					<li><a href='facreg.php'>Faculty</a></li>
					<li><a href='addfacgroup.php'>Faculty Group</a></li>
					<li><a href='uploadfaculty.php'>Upload Faculty List</a></li>
				";
				
			}
			if($_SESSION['type']=="faculty")
			{
				echo "	
					<li><a href='addstudentgroup.php'>Student Group</a></li>
					<li><a href='addproblem.php'>Problem</a></li>
					<li><a href='addtest.php'>Test</a></li>
				";
			}
		}
		echo "
		<h3>View</h3>
		";
		if($_SESSION['type']=='admin')
		{
			echo "
				<li><a href='students.php'>Students</a></li>
				<li><a href='studentgroups.php'>Student Groups</a></li>
				<li><a href='viewfaculty.php'>Faculties</a></li>
				<li><a href='viewfacultygroups.php'>Faculty Groups</a></li>
			";
	
		}
		if($_SESSION['type']=="faculty")
		{
			echo "
				<li><a href='studentgroups.php'>Student Groups</a></li>
				<li><a href='viewproblems.php'>Problems</a></li>
				<li><a href='alltests.php'>Tests</a></li>
			";
		}
		if($_SESSION['type']=="student")
		{
			echo "
				<li><a href='practice.php'>Practice Problems</a></li>
				<li><a href='mytests.php'>My Tests</a></li>
			";
		}
	
}
?>
</div>
