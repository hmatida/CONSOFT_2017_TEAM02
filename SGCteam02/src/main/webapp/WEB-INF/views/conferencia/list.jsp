<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<template:admin>
<body>
<div class="cotainer">
	<div class="row">
	<div class="col-md-12">
		<div class="container">
			<h4> Conferencia Cadastradas</h4>
			<p> Listagem de conferencia j� cadastradas:</p>
			<table class="table table-striped">
				<thead>
					<tr>
						<td>Nome</td>
						<td>Abrevia��o</td>
						<td>Organizador</td>
						<td>Sub-t�tulo</td>
						<td>Sub-t�tulo secund�rio</td>
						<td>url</td>
						<td>Cidade</td>
						<td>E-mail</td>
						<td>E-mail retorno</td>
						<td>Moeda</td>
						<td>N� Participantes</td>
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
					<td>${conf.cidade}</td>
					<td>${conf.email}</td>
					<td>${conf.email_ret}</td>
					<td>${conf.moeda}</td>
					<td>${conf.n_participantes}</td>
					<td>
						<div class="btn-group pull-right">
							<a class="btn btn-sm btn-primary" action="/conferencia/update" href=/conferencia/update/${conf.id}>Editar</a>
					
							<a class="delete btn btn-sm btn-danger" action="/conferencia/delete" href=/conferencia/delete/${conf.id}> Excluir</a>
						
						</div>
					</td>
				</tr>
				</c:forEach>
			</table>
			<div class="panel-footer">
            <a class="btn btn-sm btn-success" href=/conferencia/form-input>Adicionar</a>
        </div>
		</div>
	</div>
</div>
</div>

	<script src="assets/js/jquery-2.1.4.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/scripts.js"></script>

</body>

</template:admin>