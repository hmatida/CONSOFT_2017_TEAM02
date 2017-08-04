<%@attribute name="extraScripts" fragment="true"%>
<%@attribute name="extraStyles" fragment="true"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>SGC</title>

<!-- bootstrap -->
<link rel="stylesheet"
	href="<c:url value='/assets/css/bootstrap.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='/assets/css/bootstrap-theme.min.css'/>">

<!-- style -->
<link rel="stylesheet" href="<c:url value='/assets/css/index.css'/>">
<link rel="stylesheet" href="<c:url value='/assets/css/forms.css'/>">
<jsp:invoke fragment="extraStyles" />

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
				<a class="navbar-brand" href="/inicio">Página Inicial</a>
			</div>

			<div class="collapse navbar-collapse" id="menu">
				<ul class="nav navbar-nav">
					
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Comitê <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/comite/form-input"><span
									class="glyphicon glyphicon-plus-sign"></span> Criar comitê</a></li>
							<li><a href="/comite/list"><span
									class="glyphicon glyphicon-list-alt"></span> Listar comitê</a></li>

						</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Gerenciar <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="<c:url value='/cadusuario/list'/>"><span
									class="glyphicon glyphicon-list-alt"></span> Usuário</a></li>
							<li><a href="<c:url value='/cadgrupo/list'/>"><span
									class="glyphicon glyphicon-list-alt"></span> Grupos</a></li>
									<li><a href="<c:url value='/revisoes/list'/>"><span
									class="glyphicon glyphicon-list-alt"></span > Revisões</a></li>
									<li><a href="<c:url value='/cadlocal/list'/>"><span
									class="glyphicon glyphicon-list-alt"></span> Locais</a></li>

						</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Trabalhos <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="<c:url value='/trabalho/list'/>"><span
									class="glyphicon glyphicon-list-alt"></span>Submetidos</a></li>
							<li><a href="<c:url value='/grupos/listar'/>"><span
									class="glyphicon glyphicon-menu-hamburger"></span>Submeter</a></li>
									<li><a href="<c:url value='/avaliacoes/index'/>"><span
									class="glyphicon glyphicon-menu-hamburger"></span>Avaliações</a></li>

						</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Param Conferencias <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="<c:url value='/conferencia/form-input'/>"><span
									class="glyphicon glyphicon-plus-sign"></span>Cadastrar</a></li>
							<li><a href="<c:url value='/fasesConferencia/form-input'/>"><span
									class="glyphicon  glyphicon-plus-sign"></span>Cadastrar Fases</a></li>
									<li><a href="<c:url value='/sessao/form-input'/>"><span
									class="glyphicon glyphicon-plus-sign"></span>Cad Sessão</a></li>
									<li><a href="<c:url value='/conferencia/list'/>"><span									
									class="glyphicon glyphicon-list-alt"></span>Listar Conferencias</a></li>
									<li><a href="<c:url value='/evento/list'/>"><span
									class="glyphicon glyphicon-list-alt"></span>Eventos da Conferencia</a></li>

						</ul></li>
						<ul class="nav navbar-nav">
						<li>
							<a href="/">Sair</a>
						</li>
						</ul>
				</ul>

			</div>
		</div>
	</nav>

	<!-- FINAL NAV -->
	<jsp:doBody />

	<script src="<c:url value='/assets/js/jquery-2.1.4.min.js'/>"></script>
	<script src="<c:url value='/assets/js/bootstrap.min.js'/>"></script>
	<script src="<c:url value='/assets/js/scripts.js'/>"></script>
	<jsp:invoke fragment="extraScripts" />

</body>
</html>