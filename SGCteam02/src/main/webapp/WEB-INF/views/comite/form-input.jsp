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
					<form method="post" action="/comite">
						<div class="form-group">
								<label for="Nome">Nome: </label> <input type="text"
									class="form-control" id="nome" name="nome" />
						</div>
						<div class="form-group">
								<label for="comite" name="comite">Conferencia</label> 
								<select	name="conferencia" class="form-control">
									<c:forEach items="${conferencia}" var="itens">
										<option value=${itens.id}>${itens.nome_abre}</option>
									</c:forEach>
								</select>
							</div>
						<div class="form-group">
						<label for="membros_comite" >Número máximo de participantes</label>
							<input type="number" class="form-control col-xs-3" id="nroParticipantes" name="nroMaxParticipantes" />
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
