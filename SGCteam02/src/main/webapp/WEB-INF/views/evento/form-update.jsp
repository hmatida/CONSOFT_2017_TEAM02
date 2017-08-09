<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<template:admin>
	<body>
		<div class="container-fluid">
			<h3>Cadastro de eventos da conferência</h3>
		</div>
		<div class="row">
		<form method="post" action="/evento/updateSave/${evento.id}">
			<div class="col-md-12">
				<div class="col-md-2"></div>
				<div class="col-md-8 form-group">
					<div class="col-md-6">
						<label for="conferencia" name="conferencia">Conferencia</label> 
						<select	name="conferencia" class="form-control">
							<c:forEach items="${conferencia}" var="conf">
								<option value=${conf.id}>${conf.nome_abre}</option>
							</c:forEach>
						</select>
					</div>
					<div class="col-md-6">
						<label for="local" name="local">Local</label> 
						<select class="form-control" name="local">
							<c:forEach items="${local}" var="loc">
								<option value=${loc.id}>${loc.endereco}</option>
							</c:forEach>
						</select>
					</div>
						<div class="form-group">
							<label for="tipo"> Tipo </label> <input type="text"
								class="form-control" id="tipo" name="tipo" value="${evento.tipo}" />
						</div>
						<div class="form-group">
							<label for="tipo"> Título </label> <input type="text"
								class="form-control" id="titulo" name="titulo" value="${evento.titulo}"/>
						</div>
						<label for="tipo"> Descrição </label>
						<textarea class="form-control" rows="3" id="descricao" name="descricao">${evento.descricao}</textarea>
						
						<div class="col-md-4 form-group">
						<label for="tp_cobranca"> Tipo cobrança: </label>
						<select class="form-control" id="tp_cobranca" name="tp_cobranca" onKeyUp="Teste()">
							  <option value="in">Inclusa na conferencia</option>
							  <option value="nin">À parte</option>
							</select>
						</div>
						<div class="form-group">	
							<div class="col-md-2 form-group">
								<label for="preco"> Preço </label> <label>
								<input type="number" step="0.01" class="form-control" id="preco"
								name="preco" placeholder="$" value="${evento.preco}"/>
							</label>
							</div>
							<div class="col-md-2">
							</div>
						</div>
				<div class="col-md-8 form-group">
						<div class="form-group">
							<label for="date"> Data inicial </label> <label class="col-xs-5">
								<input type="date" class="form-control" id="dataInicio"
								name="dataInicio" />
							</label>
						</div>
						<div class="form-group">

							<label for="date"> Data final </label> <label class="col-xs-5">
								<input type="date" class="form-control" id="dataFim"
								name="dataFim" />
							</label>
						</div>
						<button type="submit" class="btn btn-default">Salvar</button>
						</form>
						<a href="/evento/list">
								<button class="btn btn-info">Voltar</button>
								</a>
				</div>
				<div class="col-md-2"></div>
		</div>
		</div>
	</div>
</template:admin>