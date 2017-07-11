<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" href="<c:url value='/assets/css/bootstrap.min.css'/>">
<link rel="stylesheet" href="<c:url value='/assets/css/bootstrap-theme.min.css'/>">
<link rel="stylesheet" href="<c:url value='/assets/js/bootstrap.min.js'/>">


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home page</title>
</head>

<body>
	<div class="row">
		<div class="col-md-12">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						 <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
					</button> <a class="navbar-brand" href="#">Brand</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active">
							<a href="#">Link</a>
						</li>
						<li>
							<a href="#">Link</a>
						</li>
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									<a href="#">Action</a>
								</li>
								<li>
									<a href="#">Another action</a>
								</li>
								<li>
									<a href="#">Something else here</a>
								</li>
								<li class="divider">
								</li>
								<li>
									<a href="#">Separated link</a>
								</li>
								<li class="divider">
								</li>
								<li>
									<a href="#">One more separated link</a>
								</li>
							</ul>
						</li>
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" />
						</div> 
						<button type="submit" class="btn btn-default">
							Submit
						</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li>
							<a href="#">Link</a>
						</li>
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									<a href="#">Action</a>
								</li>
								<li>
									<a href="#">Another action</a>
								</li>
								<li>
									<a href="#">Something else here</a>
								</li>
								<li class="divider">
								</li>
								<li>
									<a href="#">Separated link</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
				
			</nav>
			<div class="container-fluid">
			<h3>
				Cadastro de local
			</h3>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<form method="post" action="">
				<div class="form-group">
					 
					<label for="endereco">
						Endereço
					</label>
					<input type="text" class="form-control" id="endereco" name="endereco" />
				</div>
				<div class="form-group">
					 
					<label for="numero">
						Número
					</label>
					<input type="text" class="form-control" id="numero" name="numero"/>
				</div>
				<div class="form-group">
					 
					<label for="cep">
						CEP
					</label>
					<input type="text" class="form-control" id="cep" name="cep" />
				</div>
				<div class="form-group">
					<label for="bairro">
						Bairro
					</label>
					<input type="text" class="form-control" id="bairro" name="bairro"/>
				</div>
				<div class="form-group">
					<label for="sala">
						Sala
					</label>
					<input type="text" class="form-control" id="sala" name="sala"/>
				</div>
				
				<button type="submit" class="btn btn-default">
					Submit
				</button>
			</form>
		</div>
		<div class="col-md-2">
		</div>
	</div>
</div>

	<script src="assets/js/jquery-2.1.4.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/scripts.js"></script>

</body>
</html>