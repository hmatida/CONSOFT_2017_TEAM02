<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<template:admin>
<body>

				<div class="container-fluid">
			<h3>
				Cadastro de fases da conferência
			</h3>
		</div>
	<div class="row">
		<div class="col-md-12">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<form method="post" action="/fasesConferencia/updateSave/${fases.id}">
				<div class="form-group">
					 
					<label for="nome">
						Nome
					</label>
					<input type="text" class="form-control" id="nome" value="${fases.nome}" name="nome" />
				</div>
				<div class="form-group">
					 
					<label for="date">
						Data inicial
					</label>
					<label class="col-xs-3">
					<input type="date" class="form-control" id="initDate" name="initDate"/>
					</label>
				</div>
				<div class="form-group">
					 
					<label for="cep">
						Data final
					</label>
					<label class="col-xs-3">
					<input type="date" class="form-control" id="fimDAte" name="fimDate" />
					</label>
				</div>				
				<button type="submit" class="btn btn-default">
					Salvar
				</button>
			</form>
		</div>
		<div class="col-md-2">
		</div>
	</div>
	</div>
	<script src="assets/js/jquery-2.1.4.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/scripts.js"></script>
</body>
</template:admin>