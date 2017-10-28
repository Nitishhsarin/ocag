<?php
function isloggedin($status)
{
	if(session_id()=="")
		session_start();
	if(!(isset($_SESSION['username']) && isset($_SESSION['type']) ))
		return false;
	if($status=="any")
		return true;
	if($status==$_SESSION['type'])
	{
		return true;
	}
	return false;
}

?>
