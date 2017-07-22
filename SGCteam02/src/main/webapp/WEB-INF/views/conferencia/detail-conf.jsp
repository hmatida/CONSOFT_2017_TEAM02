<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<template:admin>

<div>
	<div class="container">
	<h1 class="basic-title">Detalhes da Conferência</h1>
	<div class="row">

			<div role="main" class="col-md-12">

				<div class="panel panel-default">

					<div class="panel-heading">${conferencia.nome}</div>

					<div class="form-group">

						<div class="input-group">

							<span class="input-group-addon"> <i

								class="glyphicon glyphicon-user" style="width: auto"></i>

							</span> <input id="txtUsuario" runat="server" type="text"

								class="form-control" name="user" placeholder="Usuário"

								required="" />

						</div>

					</div>

	
	</div>
</div>
</template:admin>