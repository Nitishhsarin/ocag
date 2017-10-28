<?php
echo "
<div class='nav-bar'>
	<a href='homepage.php'>Home</a>
	<a href='practice.php'>Practice</a>
	";
	if(!isset($_SESSION['type']) || $_SESSION['type']=="student")
	{
		echo "<a href='mytests.php'>Tests</a>";
	}
	if(isset($_SESSION['type']) && $_SESSION['type']=="faculty")
	{
		echo "<a href='alltests.php'>Tests</a>";
	}
	if(session_id()=="")
		session_start();
	if(isset($_SESSION['username']) && isset($_SESSION['type']))
	{
		$username=$_SESSION['username'];
		echo "
		<a href='user.php?user=$username'>$username</a>
		<a href='functions/logout.php'>Logout</a>
		";
	}
	else
	{
		echo "
		<a href='login.php'>Sign In</a>
		<a href='studentregistration.php'>Sign Up</a>
		";
	}
	echo '
</div>';
?>
