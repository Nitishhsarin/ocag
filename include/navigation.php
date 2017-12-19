<?php
	if(session_id()=="")
		session_start();
	echo "
	<div class='nav-bar'>";
		if(isset($_SESSION['username']) && isset($_SESSION['type']))
		{
			$username=$_SESSION['username'];
			echo "
			<a href='user.php?user=$username'>$username</a>
			<a href='functions/logout.php'>Logout</a>
			";
		}
		else {
			echo " <a href='index.php'>Login</a>";
		}
		echo '
	</div>';
?>
