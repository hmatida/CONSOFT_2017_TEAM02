<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
			<h4> Fases cadastradas</h4>
			<p> Listagem de fases já cadastrados:</p>
			<table class="table table-striped">
				<thead>
					<tr>
						<td>Nome</td>
						<td>Início</td>
						<td>Fim</td>
					</tr>
					</thead>
				<c:forEach items="${listFases}" var="fases">
				<tr>
					<td>${fases.nome}</td>
					<td><fmt:formatDate value="${fases.initDate.time}" pattern="dd/MM/yyyy" /></td>
					<td><fmt:formatDate value="${fases.fimDate.time}" pattern="dd/MM/yyyy" /></td>
					<td>
						<div class="btn-group pull-right">
							<a class="btn btn-sm btn-primary" action="/fasesConferencia/update" href=/fasesConferencia/update/${fases.id}>Editar</a>
					
							<a class="delete btn btn-sm btn-danger" action="/fasesConferencia/delete" href=/fasesConferencia/delete/${fases.id}> Excluir</a>
						
						</div>
					</td>
				</tr>
				</c:forEach>
			</table>
			<div class="panel-footer">
            <a class="btn btn-sm btn-success" href=/fasesConferencia/form-input>Adicionar</a>
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