<!DOCTYPE HTML>
<html>
	<head>
		<title>O.C.A.G</title>
		<link rel="stylesheet" href="css/main.css" />
	</head>
	<body class="is-loading">
			<div id="wrapper">
					<section id="main">
						<header>
							<h1>O.C.A.G</h1>
							<p>Let's Settle this on Compiler!</p>
						</header>
						<hr />
						<form method="post" action="#">
							<ul class="actions">
								<li><a href="login.php" class="button">Sign in</a></li>
							</ul>
						</form>
						<hr />
					</section>
					<footer id="footer">
					</footer>
			</div>
			<script>
				if ('addEventListener' in window) {
					window.addEventListener('load', function() { document.body.className = document.body.className.replace(/\bis-loading\b/, ''); });
					document.body.className += (navigator.userAgent.match(/(MSIE|rv:11\.0)/) ? ' is-ie' : '');
				}
			</script>

	</body>
</html>