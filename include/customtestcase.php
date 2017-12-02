<?php
echo "
<form method='post'  enctype='multipart/form-data' action='./functions/evalcustom.php?pcode=$probcode'> 
	<table id='nptable'>
		<tr>
 		<td valign='top'>
  			<label><strong> Custom Input :</strong></label>
 		</td>
 ";
 if(isset($_GET['inp'])){
 	$inp = $_GET['inp'];
 	$out = $_GET['out'];
 	echo "
 	<td>
 			<textarea name='input_desc' cols='25' rows='4'>$inp</textarea>
 		</td>
 		<td valign='top'>
  			<label><strong> Expected Output :</strong></label>
 		</td>
 		<td>  </td>
 		<td>
 			<textarea  name='output_desc' cols='25' rows='4'>$out</textarea>
 		</td>
 		";
}
else{
	echo "
 		<td>
 			<textarea  name='input_desc' cols='25' rows='4'></textarea>
 		</td>
 		<td valign='top'>
  			<label><strong> Expected Output :</strong></label>
 		</td>
 		<td>  </td>
 		<td>
 			<textarea  name='output_desc' cols='25' rows='4'></textarea>
 		</td>
";
	}
echo "		
		<td>
		<input type='submit' id='submit_button' value='Check Output' />
		</td>
		</tr>
	</table>
			</form>
";
?>
