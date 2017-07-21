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
			
						<div class="row">
				<div class="col-md-12">
					<form action="/conferencia/list">						
						<div class="form-group">
							<div class="col-md-6">
								<label for="Nome">Nome: </label> <input type="text"
									class="form-control" id="nome" name="nome" value="${conferencia.nome}"/>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-6">
								<label for="Numero Part">Nº Participantes</label> <input type="number"
									class="form-control" id="n_participantes" name="n_participantes" value="${conferencia.n_participantes}" />
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-md-6">
								<label for="abreviacao">Abreviação </label> <input type="text"
									class="form-control" id="abreviacao" name="nome_abre" value="${conferencia.nome_abre}"/>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-6">
								<label for="nome Organizador">Nome do Organizador </label> <input
									type="text" class="form-control" id="nome_organizador"
									name="nome_organizador" value="${conferencia.nome_organizador}" />
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-md-6">
								<label for="E-mail">E-mail:</label> <input type="text"
									class="form-control" id="email" name="email" value="${conferencia.email}"/>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-3">
								<label for="Data Evento">Data do Evento:</label> <input
									type="date" class="form-control" id="dataEvento"
									name="dataEvento" value="${conferencia.dataEvento}"/>
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-md-12">
								<label for="titulo evento">Titulo do Evento:</label> <input
									type="text" class="form-control" id="tituloevento"
									name="sub_tit" value="${conferencia.sub_tit}"/>
							</div>

						</div>
						
						<div class="form-group">
							<div class="col-md-12">
								<label for="subtitulo evento">Subtitulo do Evento:</label> <input
									type="text" class="form-control" id="subtituloevento"
									name="sub_tit_sec" value="${conferencia.sub_tit_sec}"/>
							</div>

						</div>
						
						<div class="form-group">
							<div class="col-md-6">
								<label for="web">web:</label> <input type="text"
									class="form-control" id="web" name="url"value="${conferencia.url}" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-6">
								<label for="Cidade">Cidade:</label> <input type="text"
									class="form-control" id="cidade" name="cidade" value="${conferencia.cidade}"/>
							</div>

						</div>
					
						<div class="form-group" >
							<div class="col-md-4">
								<label for="Moeda" >Moeda</label> 
								<input type="text" class="form-control" name="moeda" value="${conferencia.moeda}"/>							
								
							</div>

						</div>
						<div class="form-group">
							<div class="col-md-4">
								<label for="Preco">Preço:</label> <input type="text"
									class="form-control" id="preco" />
							</div>

						</div>
						<div class="form-group">
							<div class="col-md-4">
								<label for="Taxa">Taxa Fatura:</label> <input type="text"
									class="form-control" id="taxa" />
							</div>

						</div><br>
					</form>
					<div class="col-md-3">
					</div>
					<div class="col-md-6">
					<p><strong>Eventos cadastrados:</strong></p>						
								<table class="table table-condensed table-striped">
									<thead>
										<tr>
											<td>Título evento</td>
											<td>Tipo Evento</td>
											<td>Início</td>
											<td>Fim</td>
										</tr>
									</thead>
									<c:forEach items="${conferencia.eventos}" var="eventos">
										<tr>
											<td>${eventos.titulo}</td>
											<td>${eventos.tipo}</td>
											<td><fmt:formatDate value="${eventos.dataInicio.time}" pattern="dd/MM/yyyy"/></td>
											<td><fmt:formatDate value="${eventos.dataFim.time}" pattern="dd/MM/yyyy"/></td>
										</tr>
									</c:forEach>
								</table>
						<p><strong>Fases da conferencia</strong></p>	
							<table class="table table-condensed table-striped">
								<thead>
									<tr>
										<td>Fase</td>
										<td>Início</td>
										<td>Fim</td>
									</tr>
									<c:forEach items="${conferencia.fasesConf}" var="fases">
										<td>${fases.nome }</td>
										<td><fmt:formatDate value="${fases.initDate.time}" pattern="dd/MM/yyyy"/></td>
										<td><fmt:formatDate value="${fases.fimDate.time}" pattern="dd/MM/yyyy"/></td>
									</c:forEach>
								</thead>
								</table>
								<p><strong>Sessões da conferencia</strong></p>	
							<table class="table table-condensed table-striped">
								<thead>
									<tr>
										<td>Nome</td>
										<td>Início</td>
										<td>Fim</td>
									</tr>
									<c:forEach items="${conferencia.sessao}" var="sessao">
										<td>${sessao.nomeDaSessao }</td>
										<td><fmt:formatDate value="${sessao.initDate.time}" pattern="dd/MM/yyyy"/></td>
										<td><fmt:formatDate value="${sessao.fimDate.time}" pattern="dd/MM/yyyy"/></td>
									</c:forEach>
								</thead>
							</table>
								
								
						</div>
								<div class="col-md-3"></div>
						</div>
					</div>
				</div>
			</div>
		

		<script src="assets/js/jquery-2.1.4.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/scripts.js"></script>
	</body>
</template:admin>