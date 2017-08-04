<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<template:admin>
<body>
	<div>
		<div class="container">
			<h2 class="basic-title">Comite - Cadastro</h2>
			<div class="row">
				<div class="col-md-12">
					<div class="col-md-3">
					</div>
					<div class="col-md-6">
					<form method="post" action="/comite/participante">
						<div class="form-group">
								<label for="Nome">Nome: </label> 
								<input disabled type="text" value="${comite.nome}" class="form-control" id="nomeDoComite" name="nomeDoComite" />
						</div>
						
						<div class="form-group">
						<label for="membros_comite" name="membros_comite">Número máximo de participantes</label>
							<input disabled type="number" class="form-control col-xs-3" id="nroParticipantes" name="nroParticipantes" value="${comite.nroMaxParticipantes}" />
						</div>
						
							<div class="form-group">
						<label for="membros_comite" name="membros_comite">Número de participantes</label>
							<input disabled type="number" class="form-control col-xs-3" id="nroParticipantes" name="nroParticipantes" value="${comite.participantes}" />
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
