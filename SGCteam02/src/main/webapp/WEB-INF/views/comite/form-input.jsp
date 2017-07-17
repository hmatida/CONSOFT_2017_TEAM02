<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<template:admin>
	<div>
		<div class="container">
			<h2 class="basic-title">Comite - Cadastro</h2>

			<div class="row">
				<div class="col-md-12">


					<form method="post" action="/comite">
						<div class="form-group">
							<div class="col-md-6">
								<label for="Nome">Nome: </label> <input type="text"
									class="form-control" id="nomeDoComite" name="nomeDoComite" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-6">
								<label for="comite" name="comite">Conferencia</label> <select
									name="comite">
									<c:forEach items="${comite}" var="itens">
										<option value=${itens.id}>${itens.nome_abre}</option>
									</c:forEach>
								</select>
							</div>
							<br>

						</div>
						<br>
						<div class="form-group">
							<div class="col-md-6">
						<label for="membros_comite" name="membros_comite">Selecione
							os membros do comite:</label><!-- <select name="membros_comite" multiple>
							 
							<c:forEach items="${membros_comite}" var="itens">
								<option value=${itens.id}>${itens.nome}</option>
							</c:forEach>
						</select>
						 -->
						</div></div>
						<div class="col-md-6">

							<button type="submit" class="btn btn-primary">Salvar</button>
						</div>
				</div>


			</div>
		</div>
	</div>
</template:admin>
