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
			<h4> Sessões cadastradas</h4>
			<p> Listagem de Sessões já cadastrados:</p>
			<table class="table table-striped">
				<thead>
					<tr>
						<td>Nome</td>
						<td>Abreviação</td>
						<td>Início</td>
						<td>Fim</td>
					</tr>
					</thead>
				<c:forEach items="${listSessao}" var="l">
				<tr>
					<td>${l.nomeDaSessao}</td>
					<td>${l.abreviacao}</td>
					<td><fmt:formatDate value="${l.inicio.time}" pattern="dd/MM/yyyy" /></td>
					<td><fmt:formatDate value="${l.fim.time}" pattern="dd/MM/yyyy" /></td>
					<td>
						<div class="btn-group pull-right">
							<a class="btn btn-sm btn-primary" action="/sessao/update" href=/sessao/update/${l.id}>Editar</a>
					
							<a class="delete btn btn-sm btn-danger" action="/sessao/delete" href=/sessao/delete/${l.id}> Excluir</a>
						
						</div>
					</td>
				</tr>
				</c:forEach>
			</table>
			<div class="panel-footer">
            <a class="btn btn-sm btn-success" href=/sessao/form-input>Adicionar</a>
        </div>
		</div>
	</div>
</div>
</div>
	
</body>
</template:admin>
