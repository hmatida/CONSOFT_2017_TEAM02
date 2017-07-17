<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<template:admin>
	<div>
		<div class="container">
			<h1 class="basic-title">Cadastro Função</h1>

			<div class="row">
				<div class="col-md-12">

					<div class="col-md-6">
						<form method="post" action="/cadfuncao">
						<br>
							<div class="form-group">

								<label class="col-xs-4" for="nome"> Nome: </label> <input class="col-xs-8"
									type="text" class="form-control" id="nome" name="nome" />

							</div><br>
							
							<button type="submit" class="btn btn-default">Salvar</button>
						</form>
						</div>
						</div>

	</div>
					</div>
				</div>
</template:admin>