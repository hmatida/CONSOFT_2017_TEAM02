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
			<form method="post" action="/sessao/updateSave/${fases.id}">
				<div class="form-group">			 
					<label for="nomeDaSessao">
						Nome
					</label>
					<input type="text" class="form-control" id="nomeDaSessao" value="${fases.nomeDaSessao}" name="nomeDaSessao" />
				</div>
				<div class="form-group">			 
					<label for="abreviacao">
						Abreviação
					</label>
					<input type="text" class="form-control" id="abreviacao" value="${fases.abreviacao}" name="abreviacao" />
				</div>
				
				<div class="form-group">				 
					<label for="date">
						Inicio
					</label>
					<label class="col-xs-3">
					<input type="date" class="form-control" id="inicio" name="inicio"/>
					</label>
				</div>
				<div class="form-group">
					 
					<label for="cep">
						Fim
					</label>
					<label class="col-xs-3">
					<input type="date" class="form-control" id="fim" name="fim" />
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
</body>
</template:admin>