<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<template:admin>

	<body>
		<div class="cotainer">
			<div class="row">
				<div class="col-md-12">
					<nav class="navbar navbar-default" role="navigation">
						<div class="navbar-header">

							<button type="button" class="navbar-toggle"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span><span
									class="icon-bar"></span><span class="icon-bar"></span><span
									class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="#">Brand</a>
						</div>

						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li class="active"><a href="#">Link</a></li>
								<li><a href="#">Link</a></li>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
									<ul class="dropdown-menu">
										<li><a href="#">Action</a></li>
										<li><a href="#">Another action</a></li>
										<li><a href="#">Something else here</a></li>
										<li class="divider"></li>
										<li><a href="#">Separated link</a></li>
										<li class="divider"></li>
										<li><a href="#">One more separated link</a></li>
									</ul></li>
							</ul>
							<form class="navbar-form navbar-left" role="search">
								<div class="form-group">
									<input type="text" class="form-control" />
								</div>
								<button type="submit" class="btn btn-default">Submit</button>
							</form>
							<ul class="nav navbar-nav navbar-right">
								<li><a href="#">Link</a></li>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
									<ul class="dropdown-menu">
										<li><a href="#">Action</a></li>
										<li><a href="#">Another action</a></li>
										<li><a href="#">Something else here</a></li>
										<li class="divider"></li>
										<li><a href="#">Separated link</a></li>
									</ul></li>
							</ul>
						</div>

					</nav>
					<div class="container-fluid">
						<h3>Cadastro de local</h3>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="container">
							<h4>Locais cadastrados</h4>
							<p>Listagem de locais j� cadastrados:</p>
							<table class="table table-striped">
								<thead>
									<tr>
										<td>Endere�o</td>
										<td>N�mero</td>
										<td>CEP</td>
										<td>Bairro</td>
										<td>Sala</td>
									</tr>
								</thead>
								<c:forEach items="${listLocal}" var="local">
									<tr>
										<td>${local.endereco}</td>
										<td>${local.numero}</td>
										<td>${local.cep}</td>
										<td>${local.bairro}</td>
										<td>${local.sala}</td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
			</div>

			<script src="assets/js/jquery-2.1.4.min.js"></script>
			<script src="assets/js/bootstrap.min.js"></script>
			<script src="assets/js/scripts.js"></script>
	</body>
</template:admin>