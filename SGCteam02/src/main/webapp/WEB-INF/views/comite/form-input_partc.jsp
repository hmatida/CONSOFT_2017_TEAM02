<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<template:admin>
<body>
	<div>
		<div class="container">
			<h2 class="basic-title">Comite - Cadastro de membros do comitê</h2>
			<div class="row">
				<div class="col-md-12">
					<div class="col-md-3">
					</div>
					<div class="col-md-6">
					<form method="post" action="/comite/participante/${comite.id}">
						<div class="form-group">
								<label for="Nome">Nome: </label> 
								<input disabled type="text" value="${comite.nome}" class="form-control"/>
								<input type="text" value="${comite.nome}" class="hidden" id="nome" name="nome"/>
						</div>
						
						<div class="form-group">
						<label for="membros_comite" name="membros_comite">Número máximo de participantes</label>
							<input disabled type="number" class="form-control col-xs-3" id="nroParticipantes" value="${comite.nroMaxParticipantes}" />
							<input type="number" class="hidden" id="nroParticipantes" name="nroMaxParticipantes" value="${comite.nroMaxParticipantes}" />
						</div>
						
							<div class="form-group">
						<label for="membros_comite" name="membros_comite">Número de participantes</label>
							<input disabled type="number" class="form-control col-xs-3" id="nroParticipantes" value="${comite.participantes}" />
							<input type="number" class="hidden" id="nroParticipantes" name="nroParticipantes" value="${comite.participantes}" />
						</div>
						
						<div class="form-group">
						<label for="membros_comite" name="membros_comite">Conferencia</label>
							<input disabled type="text" class="form-control" id="nroParticipantes" value="${comite.conferencia.nome_abre}" />
							<input type="text" class="hidden" id="nroParticipantes" value="${comite.conferencia.id}" name="conferencia"/>
						</div>
						
						<div class="form-group">
								<label for="comite" >Adicionar usuário</label> 
								<select	name="usuarios" class="form-control">
									<c:forEach items="${usuarios}" var="users">
										<option value="${users.idUsuario}">${users.nome} ${users.sobrenome}</option>
									</c:forEach>
								</select>
							</div>

						<br>
						<br>
							<button type="submit" class="btn btn-primary">Salvar</button>
						</div>
			</div>
			<div class="col-md-3">
			</div>
		</div>
	</div>
	</body>
</template:admin>
