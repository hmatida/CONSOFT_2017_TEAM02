<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<template:admin>
	<body>
	<body>
		<div class="cotainer">
			<div class="row">
				<div class="col-md-12">
					<div class="container">
						<h4>Comitês</h4>
						<p>Listagem de comitês cadastrados:</p>
						<table class="table table-striped">
							<thead>
								<tr>
									<td>Nome</td>
									<td>Conferência</td>
									<td>Nº Max Partc.</td>
									<td>Participantes</td>
								</tr>
							</thead>
							<c:forEach items="${listComite}" var="comite">
								<tr>
									<td>${comite.nome}</td>
									<td>${comite.conferencia.nome_abre }
									<td>${comite.nroMaxParticipantes}</td>
									<td>${comite.participantes}</td>
									
							<td>
								<div class="btn-group pull-right" role="group">
									<a class="btn btn-sm btn-primary"
										href=/comite/form-input_partc/${comite.id}><i
										class="glyphicon glyphicon-user"></i> + Part</a>

									<a class="btn btn-sm btn-info"
										href=/comite/view-detail/${comite.id}><i
										class="glyphicon glyphicon-eye-open"></i> Detalhes</a>
										
									<a class="btn btn-sm btn-warning"
										href=/comite/update/${comite.id}><i
										class="glyphicon glyphicon-pencil"></i> Editar</a>

									<a class="delete btn btn-sm btn-danger"
										action="/comite/delete"
										href=/comite/delete/${comite.id}><i
										class="glyphicon glyphicon-remove"></i> Excluir</a>
								</div>
							</td>		
							</tr>
							</c:forEach>
						</table>
						<div class="panel-footer">
							<a class="btn btn-sm btn-success"
								href=/comite/form-input>Adicionar</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<script src="assets/js/jquery-2.1.4.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/scripts.js"></script>

	</body>
</template:admin>