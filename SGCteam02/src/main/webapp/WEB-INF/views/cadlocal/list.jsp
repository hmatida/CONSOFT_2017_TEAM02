<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<template:admin>

	<body>
		<div class="cotainer">
			<div class="row">
				<div class="col-md-12">
					<div class="container-fluid">
						<h3>Cadastro de local</h3>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="container">
							<h4>Locais cadastrados</h4>
							<table class="table table-striped">
								<thead>
									<tr>
										<td>Endereço</td>
										<td>Número</td>
										<td>CEP</td>
										<td>Bairro</td>
										<td>Sala</td>
									</tr>
								</thead>
								<c:forEach items="${listlocal}" var="local">
									<tr>
										<td>${local.endereco}</td>
										<td>${local.numero}</td>
										<td>${local.cep}</td>
										<td>${local.bairro}</td>
										<td>${local.sala}</td>
										
										<td>
										<div class="btn-group pull-right">
											<a class="btn btn-sm btn-primary"
												action="/fasesConferencia/update"
												href=/cadlocal/update/${local.id}> Editar</a> <a
												class="delete btn btn-sm btn-danger"
												action="/fasesConferencia/delete"
												href=/cadlocal/delete/${local.id}> Excluir</a>

										</div>
									</td>
									</tr>
								</c:forEach>
							</table>
							
							<div class="panel-footer">
							<a class="btn btn-sm btn-success"
								href=/cadlocal/form-input>Adicionar</a>
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