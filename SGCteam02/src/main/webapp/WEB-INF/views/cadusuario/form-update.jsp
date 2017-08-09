<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<template:admin>
	<div>
		<div class="container">
			<h1 class="basic-title">Manutenção de usuário</h1>

			<div class="row">
				<div class="col-md-12">

					<div class="col-md-6">
						<form method="post" action="/cadusuario/updateSave/${usuario.idUsuario}">
							<br>
							<div class="form-group">

								<label class="col-xs-4" for="nome"> Nome: </label> <input
									class="col-xs-8" type="text" class="form-control" id="nome"
									name="nome" value="${usuario.nome}"/>

							</div>
							<br>
							<div class="form-group">

								<label class="col-xs-4" for="sobrenome"> Sobrenome: </label> <input
									class="col-xs-8" type="text" class="form-control"
									id="sobrenome" name="sobrenome" value="${usuario.sobrenome}"/>

							</div>
							<br>
							<div class="form-group">

								<label class="col-xs-4" for="CPF"> cpf: </label> <input
									class="col-xs-8" type="text" class="form-control" id="cpf"
									name="cpf" value="${usuario.cpf}"/>

							</div>
							<br>
							<div class="form-group">

								<label class="col-xs-4" for="dataNascimento">
									dataNascimento: </label> <input class="col-xs-8" type="date"
									class="form-control" id="dataNascimento" name="dataNascimento" />

							</div>
							
							<br>
							<div class="form-group">

								<label class="col-xs-4" for="email">
									e-mail: </label> <input class="col-xs-8" type="email"
									class="form-control" id="email" name="email" value="${usuario.email}"/>

							</div>
							
							<br>
							<div class="form-group">

								<label class="col-xs-4" for="login"> Login: </label> <input
									class="col-xs-8" type="text" class="form-control" id="login"
									name="login" value="${usuario.login}"/>

							</div>
							<br>

							<div class="form-group">

								<label class="col-xs-4" for="senha"> senha: </label> <input
									class="col-xs-8" type="password" class="form-control"
									id="senha" name="senha" value="${usuario.senha}"/>

							</div>
							<br>
							<div class="form-group">

								
							<br>
							<button type="submit" class="btn btn-default">Salvar</button>
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>
</template:admin>