<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<template:admin>
	<div class="cotainer">
		<div class="row">
			<div class="col-md-12">
				<div class="container">
					<h4>Eventos por Conferencia</h4>
					<p>Listagem de conferencia já cadastradas:</p>

					<form method="post" action="/evento/confList">
						<label for="conferencia" name="conferencia">Selecione a
							conferencia</label> <select class="col-md-6" name="conferencia">
							<c:forEach items="${conferencia}" var="conf">
								<option value=${conf.id}>${conf.nome_abre}</option>
							</c:forEach>
						</select>
						<button type="submit" class="btn btn-default"
							action="/evento/confList" href=/evento/confList/${conf.id}>
							Buscar</button>
					</form>

					<table class="table table-striped">
						<thead>
							<tr>
								<td>Título</td>
								<td>Tipo evento</td>
								<td>Início</td>
								<td>Endereço</td>
								<td>Bairro</td>
								<td>Número</td>
								<td>Cep</td>
								<td>Sala</td>
							</tr>
						</thead>
						<c:forEach items="${eventos}" var="even">
							<tr>
								<td>${even.titulo}</td>
								<td>${even.tipo}</td>
								<td>${even.dataInicio.time}</td>
								<td>${even.dataFim.time}</td>
								<td>${even.local.endereco}</td>
								<td>${even.local.bairro}</td>
								<td>${even.local.numero}</td>
								<td>${even.local.cep}</td>
								<td>${even.local.sala}</td>
								<td>
									<div class="btn-group pull-right">
										<a class="btn btn-sm btn-primary" action="/evento/update"
											href=/evento/update/${conf.id}><i
											class="glyphicon glyphicon-pencil"></i>Editar</a>
								</td>
								<td><a class="delete btn btn-sm btn-danger"
									action="/evento/delete"
									href=/evento/delete/${conf.id}><i
										class="glyphicon glyphicon-remove"></i> Excluir</a></td>

								</div>
								</td>
							</tr>
						</c:forEach>
					</table>
					<div class="panel-footer">
						<a class="btn btn-sm btn-success" href=/evento/form-input>Adicionar</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</template:admin>