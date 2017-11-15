<?php
	if(session_id()=="")
		session_start();
	echo "
	<div class='nav-bar'>";
if(isset($_SESSION['type'])){
		if(isset($_SESSION['type']) && $_SESSION['type']=="student")
		{
			echo " <a href='practice.php'>Practice</a>
			<a href='mytests.php'>Tests</a>";
		}
		if(isset($_SESSION['type']) && $_SESSION['type']=="faculty")
		{
			echo "<a href='alltests.php'>Tests</a>";
		}
	}
		if(isset($_SESSION['username']) && isset($_SESSION['type']))
		{
			$username=$_SESSION['username'];
			echo "
			<a href='user.php?user=$username'>$username</a>
			<a href='functions/logout.php'>Logout</a>
			";
		}
		echo '
	</div>';
?>
