<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<template:admin>
	<div class="cotainer">
		<div class="row">
			<div class="col-md-12">
				<div class="container">
					<h4>Eventos por Conferencia</h4>
					<p>Listagem de evento por conferência:</p>
					<form method="post" action="/eventos/list2/">
						<label for="conferencia" name="conferencia">Selecione a
							conferencia</label> 
							<select class="col-md-8 form-control" name="conferencia" id="idConfBusca">
								<option value="">Todos</option>
							<c:forEach items="${conferencia}" var="conf">
								<option value=${conf.nome}>${conf.nome}</option>
							</c:forEach>
						</select>
					</form>
					<table class="table table-striped" id="listaEventos">
						<thead>
							<tr>
								<td>Título</td>
								<td>Tipo evento</td>
								<td>Início</td>
								<td>Fim</td>
								<td>Endereço</td>
								<td>Bairro</td>
								<td>Número</td>
								<td>Cep</td>
								<td>Sala</td>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${eventos}" var="even">
							<tr>
								<td class="hidden">${even.conferencia.nome}</td>
								<td>${even.titulo}</td>
								<td>${even.tipo}</td>
								<td><fmt:formatDate value="${even.dataInicio.time}"
										pattern="dd/MM/aaaa" /></td>
								<td><fmt:formatDate value="${even.dataFim.time}"
										pattern="dd/MM/aaaa" /></td>
								<td>${even.local.endereco}</td>
								<td>${even.local.bairro}</td>
								<td>${even.local.numero}</td>
								<td>${even.local.cep}</td>
								<td>${even.local.sala}</td>
								<td>
									<div class="btn-group pull-right">
										<a class="btn btn-sm btn-primary" action="/evento/update"
											href=/evento/update/${even.id}><i
											class="glyphicon glyphicon-pencil"></i> Editar</a>
										<a class="delete btn btn-sm btn-danger"
											action="/evento/delete"
											href=/evento/delete/${even.id}><i
											class="glyphicon glyphicon-remove"></i> Excluir</a></td>

									</div>
								</td>
							</tr>
						</c:forEach>
						</tbody>	
					</table>
					<div class="panel-footer">
						<a class="btn btn-sm btn-success" href=/evento/form-input>Adicionar</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</template:admin>