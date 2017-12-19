<?php
		$probcode=$_GET['pcode'];
		$language= ".cpp";
		chdir("./../");
		chdir("correctcodes");
		$compiler="g++ -lm";
		$extension=".cpp";
		$newfilename=$probcode.$extension;
		echo shell_exec("$compiler -o $probcode.out $newfilename 2>&1;");
		$inputfile = $probcode."in.txt";
		$outputfile = $probcode."out.txt";
		$input = $_POST['input_desc'];
		file_put_contents($inputfile,$input);
		echo shell_exec("./$probcode.out < $inputfile > $outputfile");
		$expectedoutput=file_get_contents("./$outputfile");
		echo $expectedoutput;
		header("Location: ./../problem.php?pcode=$probcode&inp=$input&out=$expectedoutput");
?>
