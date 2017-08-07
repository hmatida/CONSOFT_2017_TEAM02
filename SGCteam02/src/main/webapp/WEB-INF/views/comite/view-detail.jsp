<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<template:admin>
<body>
	<div>
		<div class="container">
			<h2 class="basic-title">Comite - Detalhes</h2>
			<div class="row">
				<div class="col-md-12">
					<div class="col-md-3">
					</div>
					<div class="col-md-6">
					<form action="/comite/list">
						<div class="form-group">
								<label for="Nome">Nome: </label> <input type="text" disabled
									class="form-control" id="nome" name="nome" value="${comite.nome}" />
						</div>
			
						<div class="form-group">
						<label for="membros_comite" >Número máximo de participantes</label>
							<input type="number" disabled class="form-control col-xs-3" id="nroParticipantes" value="${comite.nroMaxParticipantes}" name="nroMaxParticipantes" />
						</div>
						<div class="form-group">
						<label for="membros_comite" >Número de participantes</label>
							<input type="number" disabled class="form-control col-xs-3" id="nroParticipantes" value="${comite.participantes}" name="participantes" />
						</div>
						<div class="form-group">
								<label for="comite" name="comite">Participantes</label> 
								<table class="table table-striped">
									<thead>
										<tr>
											<td>Nome</td>
											<td>Sobrenome</td>
											<td>E-mail</td>
											<td>Login</td>
											<td>Nascimento</td>
										</tr>
									</thead>
									<c:forEach items="${comite.usuarios}" var="usuarios">
										<tr>
											<td>${usuarios.nome}</td>
											<td>${usuarios.sobrenome}</td>
											<td>${usuarios.email}</td>
											<td>${usuarios.login}</td>
											<td><fmt:formatDate value="${usuarios.dataNascimento.time}"
												pattern="dd/MM/yyyy"/></td>
										</tr>
									</c:forEach>
								</table>
									
							</div>
						<br>
						<br>
							<button class="btn btn-primary">Voltar</button>
						</div>
			</div>
			<div class="col-md-3">
			</div>
		</div>
	</div>
	</body>
</template:admin>
