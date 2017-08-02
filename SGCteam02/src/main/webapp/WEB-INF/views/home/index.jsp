<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet"
	href="<c:url value='/assets/css/bootstrap.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='/assets/css/bootstrap-theme.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='/assets/js/bootstrap.min.js'/>">


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome</title>

</head>

<body>

	<!-- INICIO NAV (alterar pra include)-->

	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">

			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#menu" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar">Forum</span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/">Página Inicial</a>
		</div>

		<div class="collapse navbar-collapse" id="menu"></div>
	</div>
	</nav>

	<!-- FINAL NAV -->
	<div class="container">
		<header class="row">

		<h1 class="basic-title">Bem Vindo ao Sistema de Gerenciamento de
			Conferência</h1>

		</header>
		<div class="row">
			<div role="main" class="col-md-4">
				<div class="panel panel-default">
					<div class="panel-heading">Login</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"> <i
								class="glyphicon glyphicon-user" style="width: auto"></i>
							</span> <input id="txtUsuario" runat="server" type="text"
								class="form-control" name="user" placeholder="Usuário"
								required="" />
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"> <i
								class="glyphicon glyphicon-lock" style="width: auto"></i>
							</span> <input id="txtSenha" runat="server" type="password"
								class="form-control" name="password" placeholder="Senha"
								required="" />
						</div>
					</div>					<a href=/inicio>
					<button id="btnLogin" runat="server" class="btn btn-default"
						style="width: 100%">
						ENTRAR<i class="glyphicon glyphicon-log-in"></i>
					</button>					</a>
				</div>
			</div>



			<aside role="complementary" class="col-md-8">
			<div class="panel panel-default">
				<div class="panel-heading">Cadastrar-se</div>

					
				<form class="form-group" action="cadastrar">
					<!-- Text input-->

					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">Nome: </span> <input id="nome"
								type="text" class="form-control" name="nome"
								placeholder="seu nome" required="" />
						</div>
					</div>


					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">Sobrenome: </span> <input
								id="sobrenome" type="text" class="form-control" name="sobrenome"
								placeholder="seu sobrenome" required="" />
						</div>
					</div>


					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">CPF: </span> <input id="cpf"
								type="text" class="form-control" name="cpf"
								placeholder="somente numeros" required="" />
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">Login: </span> <input id="login"
								type="text" class="form-control" name="login"
								placeholder="Nome de usuário" required="" />
						</div>
					</div>
					
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">E-mail: </span> <input id="email"
								type="text" class="form-control" name="email"
								placeholder="seuemail@servicodeemail" required="" />
						</div>
					</div>

					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">Data de Nascimento: </span> <input
								id="datanascimento" type="date" class="form-control"
								name="datanascimento" placeholder="dd/mm/aaaa" required="" />
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">Senha: </span> <input id="senha"
								type="password" class="form-control" name="senha"
								placeholder="minimo 6 digitos" required="" />
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">Sexo: </span> <input type="radio"
								name="sexo" id="rad-0" value="1" checked="checked" placeholder="masculino">
							masculino <input type="radio" name="sexo" id="rad-1" value="2" placeholder="feminino">
							feminino
						</div>
					</div>

					<div class="form-group">
						<div class="input-group">
							<button id="Cadastrar" name="Cadastrar" class="btn btn-success">Cadastrar</button>
						</div>
					</div>
				</form>
			</div>
			</aside>



		</div>
	</div>

	<script src="<c:url value='/assets/js/jquery-2.1.4.min.js'/>"></script>
	<script src="<c:url value='/assets/js/bootstrap.min.js'/>"></script>
	<script src="assets/js/scripts.js"></script>
</body>
</html>