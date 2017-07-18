<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<template:admin>
<body>
<div class="cotainer">
	<div class="container-fluid">
		<h3>
			Cadastro de Sessão
		</h3>
	</div>
	<div class="row">
		<div class="col-md-12">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<form method="post" action="/sessao">
			<label for="conferencia" name="conferencia">Conferencia</label>
			 <select name="conferencia">
			 <c:forEach items="${conferencia}" var="conf">
			 	<option value=${conf.id}>${conf.nome_abre}</option>
			 </c:forEach>	
				</select>	
				<div class="form-group">	 
					<label for="endereco">
						Nome
					</label>
					<input type="text" class="form-control" id="nomeDaSessao" name="nomeDaSessao" />
					<div class="form-group">
					 
					<label for="numero">
						Abreviação
					</label>
					<input type="text" class="form-control" id="abreviacao" name="abreviacao"/>
				</div>
				<div class="form-group">
					 
					<label for="inicio">
						Início
					</label>
					<label class="col-xs-3">
					<input type="date" class="form-control" id="inicio" name="inicio" />
					</label>
				</div>
				<div>
					<label for="fim">
						Fim
					</label>
					<label class="col-xs-3">
					<input type="date" class="form-control" id="fim" name="fim"/>
				</label>
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
	</div>
</body>
</template:admin>