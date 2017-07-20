<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<template:admin>

	<body>
	<div>
		<div class="cotainer">
			
				<div class="col-md-12">
					
						<h2 class="basic-tittle">Conferencia Cadastradas</h2>
						
						<p>Listagem de conferencia  cadastradas:</p>
			
						<c:forEach items="${listConferencia}" var="conf">
						<table class="table table-condensed table-bordered table-striped table-hover" id="listForConf">
							<thead>
								<tr>
									<td>Nome</td>
									<td>Abreviação</td>
									<td>Organizador</td>
									<td>Sub-título</td>
									<td>Sub-título secundário</td>
									<td>Url</td>
									<td>Cidade</td>
									<td>E-mail</td>
									<td>E-mail retorno</td>
									<td>Moeda</td>
									<td>Nº de Participantes</td>
								</tr>
							</thead>
								<tr>
									<td>${conf.nome}</td>
									<td>${conf.nome_abre}</td>
									<td>${conf.nome_organizador}</td>
									<td>${conf.sub_tit}</td>
									<td>${conf.sub_tit_sec}</td>
									<td>${conf.url}</td>
									<td>${conf.cidade}</td>
									<td>${conf.email}</td>
									<td>${conf.email_ret}</td>
									<td>${conf.moeda}</td>
									<td>${conf.n_participantes}</td>
								</tr>
								</table>								
								<table class="table table-condensed table-striped">
									<thead>
										<tr>
											<td>Título evento</td>
											<td>Tipo Evento</td>
											<td>Início</td>
											<td>Fim</td>
										</tr>
									</thead>
									<c:forEach items="${conf.eventos}" var="eventos">
										<tr>
											<td>${eventos.titulo}</td>
											<td>${eventos.tipo}</td>
											<td><fmt:formatDate value="${eventos.dataInicio.time}" pattern="dd/MM/yyyy"/></td>
											<td><fmt:formatDate value="${eventos.dataFim.time}" pattern="dd/MM/yyyy"/></td>
										</tr>
									</c:forEach>
								</table>
							</c:forEach>
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
	</body>
</template:admin>