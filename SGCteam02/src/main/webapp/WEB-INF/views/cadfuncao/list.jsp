<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<template:admin>
<div class="cotainer">
	<div class="row">
	<div class="col-md-12">
		<div class="container">
			<h3>Funções cadastradas</h4>		
			<table class="table table-striped">
				<thead>
					<tr>
						<td>ID</td>
						<td>Nome</td>	
					</tr>
					</thead>
				
				<tr>
					<c:forEach items=${funcoes} var="itens">
					<td>${itens.idFuncao}</td>
					<td>${itens.nome}</td>
				
					<td>
						<div class="btn-group pull-right">
							<a class="btn btn-sm btn-primary" action="/cadfuncao/update" href=/cadfuncao/update/${itens.id}>Editar</a>
							<a class="delete btn btn-sm btn-danger" action="/cadfuncao/delete" href=/cadfuncao/delete/${conf.id}> Excluir</a>
						
						</div>
					</td>
				</tr>
				</c:forEach>
			</table>
			<div class="panel-footer">
           		 <a class="btn btn-sm btn-success" href=/cadfuncao/form-input>Adicionar</a>
        	</div>
		</div>
	</div>
</div>
</div>

	<script src="assets/js/jquery-2.1.4.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/scripts.js"></script>

</template:admin>