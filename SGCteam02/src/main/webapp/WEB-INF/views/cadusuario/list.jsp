<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<template:admin>
	<div>
		<div class="cotainer">

			<div class="col-md-12">

				<h2 class="basic-tittle">Usuarios Cadastrados</h2>

				<p>Listagem de usuários cadastradas:</p>
				<table
					class="table table-condensed table-bordered table-striped table-hover">
					<thead>
						<tr>
							<td>Nome</td>
							<td>Sobrenome</td>
							<td>cpf:</td>
							<td>E-mail</td>
							<td>Data Nasc.</td>
							<td>Login:</td>
							<td>Função:</td>

						</tr>
					</thead>
					<c:forEach items="${user}" var="itens">
						<tr>
							<td>${itens.nome}</td>
							<td>${itens.sobrenome}</td>
							<td>${itens.cpf}</td>
							<td>${itens.email}</td>
							<td><fmt:formatDate value="${itens.dataNascimento.time}"
								pattern="dd/MM/yyyy"/></td>
							<td>${itens.login}</td>
							<td>
								<div class="btn-group pull-right">
									<a class="btn btn-sm btn-primary" action="/cadusuario/form-update"
										href=/cadusuario/form-update/${itens.idUsuario}><i
										class="glyphicon glyphicon-pencil"></i>Editar</a>

									<a class="delete btn btn-sm btn-danger"
										action="/conferencia/delete"
										href=/cadusuario/delete/${itens.idUsuario}><i
										class="glyphicon glyphicon-remove"></i> Excluir</a>

								</div>
							</td>
						</tr>
					</c:forEach>
				</table>
				<div class="panel-footer">
					<a class="btn btn-sm btn-success" href=/cadusuario/form-input><i
						class="glyphicon glyphicon-plus"> </i>Adicionar</a>
				</div>
			</div>
		</div>
	</div>


	<script src="assets/js/jquery-2.1.4.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/scripts.js"></script>

</template:admin>