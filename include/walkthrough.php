<table style='font-size:16px; margin-left:50%' >
	<tr>
		<td>
	    	<li class="lh" id="t1" onclick="toggle('tab1')"> Student </li>
    	</td>
    	<td>
	    	<li class="lh" id="t2" onclick="toggle('tab2')" > Faculty </li>
    	</td>
    </tr>
</table>

<div id="display_content" onload="toggle('tab1')"></div>

<div id="tab1" class="content_tab">
	<img src='media/student_walkthrough.jpg'/>
</div>
<div id="tab2" class="content_tab">
	<img src='media/faculty_walkthrough.jpg'/>
</div>
	
<script language='javascript' type='text/javascript'>
var selected;
function toggle(selected)
{
	var currtab, i;
	document.getElementById("display_content").innerHTML=document.getElementById(selected).innerHTML;
	switch(selected)
	{
		case 'tab1':
		    currtab='t1';
		break;
		case 'tab2':
		    currtab='t2';
		break;
	}
	for(i=1;i<=2;i++)
	{
		document.getElementById("t"+i).style.borderBottom='#fafafa solid 3px';
	}
	document.getElementById(currtab).style.borderBottom='#396070 solid 3px';
}
</script>
