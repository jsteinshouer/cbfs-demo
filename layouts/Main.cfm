<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>CBFS Demo</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="##">CBFS Demo</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="##navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarText">
		<ul class="navbar-nav me-auto mb-2 mb-lg-0">
			<li class="nav-item">
				<a class="nav-link" href="/main/list">Documents</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="/">Upload New</a>
			</li>
		</ul>
		</div>
	</div>
	</nav>
	<div class="col-lg-8 p-3 py-md-5">
	<!--- <nav class="nav">
		<a class="nav-link" href="/">Upload</a>
		<a class="nav-link" href="/main/list">Documents</a>
	</nav> --->

	<!---Container And Views --->
	<div class="container">#renderView()#</div>
	</div>
</body>
</html>
</cfoutput>
