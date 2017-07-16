<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" href="<c:url value='/assets/css/bootstrap.min.css'/>">
<link rel="stylesheet" href="<c:url value='/assets/css/bootstrap-theme.min.css'/>">
<link rel="stylesheet" href="<c:url value='/assets/js/bootstrap.min.js'/>">


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Listagem</title>
</head>

<body>
<div class="cotainer">
	<div class="row">
	<div class="col-md-12">
		<div class="container">
			<h4> Conferencia Cadastradas</h4>
			<p> Listagem de conferencia já cadastradas:</p>
			<table class="table table-striped">
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
						<td>Nº Participantes</td>
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
</html>