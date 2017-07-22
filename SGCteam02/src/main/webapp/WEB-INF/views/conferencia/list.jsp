<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<template:admin>

	<div>
		<div class="cotainer">
			
				<div class="col-md-12">
					
						<h2 class="basic-tittle">Conferencia Cadastradas</h2>
						
						<p>Listagem de conferencia já cadastradas:</p>
						<table class="table table-condensed table-bordered table-striped table-hover">
							<thead>
								<tr>
									<td>Nome</td>
									<td>Abreviação</td>
									<td>Organizador</td>
									<td>Sub-título</td>
									<td>Sub-título secundário</td>
									<td>url</td>
									<td>Cidade</td>
									<td>E-mail</td>
									<td>E-mail retorno</td>
									<td>Moeda</td>
									<td>Nº Max de Partic</td>
								</tr>
							</thead>
							<c:forEach items="${listConferencia}" var="conf">
								<tr>
									<td>${conf.nome}</td>
									<td>${conf.nome_abre}</td>
									<td>${conf.nome_organizador}</td>
									<td>${conf.sub_tit}</td>
									<td>${conf.sub_tit_sec}</td>
									<td>${conf.url}</td>
									
									<td>${conf.email}</td>
									<td>${conf.emailRetorno}</td>
									<td>${conf.moeda}</td>
									<td>${conf.numMaxParticipantes}</td>
									<td>
										<div class="btn-group pull-right">
											<a class="delete btn btn-sm btn-primary"
												action="/conferencia/listForConf"
												href=/conferencia/listForConf/${conf.id}><i
												class="glyphicon glyphicon-eye-open"></i> Detalhes</a>
										</div>
									</td>
									<td>
										<div class="btn-group pull-right">
											<a class="btn btn-sm btn-warning"
												action="/conferencia/listForConf"
												href=/conferencia/update/${conf.id}><i
												class="glyphicon glyphicon-pencil"></i> Editar</a>
										</div>
									</td>
									<td>
										<div class="btn-group pull-right">
											<a class="delete btn btn-sm btn-danger"
												action="/conferencia/delete"
												href=/conferencia/delete/${conf.id}><i
												class="glyphicon glyphicon-remove"></i> Excluir</a>
										</div>
									</td>
								</tr>
							</c:forEach>
							</table>
						<div class="panel-footer">
							<a class="btn btn-sm btn-success" href=/conferencia/form-input><i
												class="glyphicon glyphicon-plus"> </i>Adicionar</a>
						</div>
					</div>
				</div>
			</div>
		

		<script src="assets/js/jquery-2.1.4.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/scripts.js"></script>


</template:admin>