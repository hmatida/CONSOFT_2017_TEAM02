<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<template:admin>
	<body>
		<div class="container-fluid">
			<h3>Cadastro de eventos da conferência</h3>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-2"></div>
				<div class="col-md-8 form-group">
					<form method="post" action="/evento">
						<label for="conferencia" name="conferencia">Conferencia</label> <select
							name="conferencia">
							<c:forEach items="${conferencia}" var="conf">
								<option value=${conf.id}>${conf.nome_abre}</option>
							</c:forEach>
						</select> <label for="local" name="local">Local</label> <select
							name="local">
							<c:forEach items="${local}" var="loc">
								<option value=${loc.id}>${loc.endereco}</option>
							</c:forEach>
						</select>

						<div class="form-group">
							<label for="tipo"> Tipo </label> <input type="text"
								class="form-control" id="tipo" name="tipo" />
						</div>
						<div class="form-group">
							<label for="tipo"> Título </label> <input type="text"
								class="form-control" id="titulo" name="titulo" />
						</div>
						<div class="form-group">
							<label for="date"> Data inicial </label> <label class="col-xs-3">
								<input type="date" class="form-control" id="dataInicio"
								name="dataInicio" />
							</label>
						</div>
						<div class="form-group">

							<label for="date"> Data final </label> <label class="col-xs-3">
								<input type="date" class="form-control" id="dataFim"
								name="dataFim" />
							</label>
						</div>
						<button type="submit" class="btn btn-default">Salvar</button>
					</form>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>
</template:admin>