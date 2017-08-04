<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<template:admin>
<body>
<div class="cotainer">
	<div class="container-fluid">
		<h3>
			Cadastro de local
		</h3>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<form method="post" action="/cadlocal/updateSave/${local.id}">
				<div class="form-group">
					 
					<label for="endereco">
						Endereço
					</label>
					<input type="text" class="form-control" value="${local.endereco}" id="endereco" name="endereco" />
				</div>
				<div class="form-group">
					 
					<label for="numero">
						Número
					</label>
					<input type="text" class="form-control" value="${local.numero}" id="numero" name="numero"/>
				</div>
				<div class="form-group">
					 
					<label for="cep">
						CEP
					</label>
					<input type="text" class="form-control" value="${local.cep}" id="cep" name="cep" />
				</div>
				<div class="form-group">
					<label for="bairro">
						Bairro
					</label>
					<input type="text" class="form-control" value="${local.bairro} "id="bairro" name="bairro"/>
				</div>
				<div class="form-group">
					<label for="sala">
						Sala
					</label>
					<input type="text" class="form-control" id="sala" value="${local.sala}" name="sala"/>
				</div>
				
				<button type="submit" class="btn btn-default">
					Submit
				</button>
			</form>
		</div>
		<div class="col-md-2">
		</div>
	</div>
	</div>
</template:admin>