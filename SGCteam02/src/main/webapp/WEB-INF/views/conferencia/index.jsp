<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<template:admin>
	<div>
		<div class="container">
			<h1 class="basic-title">Confer�ncia - Cadastro</h1>

			<h3 class="basic-title">Paramentros da Confer�ncia</h3>

			<div class="row">
				<div class="col-md-12">


					<form method="post" action="/adicionarConferencia">
						<div class="form-group">
							<div class="col-md-6">
								<label for="Codigo">Codigo </label> <input type="text"
									class="form-control" id="codigo" name="codigo" />
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-md-6">
								<label for="Codigo">Nome: </label> <input type="text"
									class="form-control" id="nome" name="nome" />
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-md-6">
								<label for="abreviacao">Abrevia��o </label> <input type="text"
									class="form-control" id="abreviacao" name="abreviacao" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-6">
								<label for="nome Organizador">Nome do Organizador </label> <input
									type="text" class="form-control" id="nomeOrganizador"
									name="nomeOrganizador" />
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-md-6">
								<label for="E-mail">E-mail:</label> <input type="text"
									class="form-control" id="mail" name="mail" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-3">
								<label for="Data Evento">Data do Evento:</label> <input
									type="date" class="form-control" id="dataEvento"
									name="dataEvento" />
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-md-12">
								<label for="titulo evento">Titulo do Evento:</label> <input
									type="text" class="form-control" id="tituloevento"
									name="tituloevento" />
							</div>

						</div>
						
						<div class="form-group">
							<div class="col-md-12">
								<label for="subtitulo evento">Subtitulo do Evento:</label> <input
									type="text" class="form-control" id="subtituloevento"
									name="subtituloevento" />
							</div>

						</div>
						
						<div class="form-group">
							<div class="col-md-6">
								<label for="web">web:</label> <input type="text"
									class="form-control" id="web" name="web" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-6">
								<label for="Cidade">Cidade:</label> <input type="text"
									class="form-control" id="cidade" name="cidade" />
							</div>

						</div>
					
						<div class="form-group">
							<div class="col-md-4">
								<label for="Moeda">Moeda</label> 
								<select name="moeda">
									<option value="real">real</option>
									<option value="dolar">dolar</option>
									<option value="euro">euro</option>
									
								</select>
							</div>

						</div>
						<div class="form-group">
							<div class="col-md-4">
								<label for="Preco">Pre�o:</label> <input type="text"
									class="form-control" id="preco" name="preco" />
							</div>

						</div>
						<div class="form-group">
							<div class="col-md-4">
								<label for="Taxa">Taxa Fatura:</label> <input type="text"
									class="form-control" id="taxa" name="taxa" />
							</div>

						</div><br>
						<div class="form-group">
						<div class="col-md-6">
								
							</div>
							<div class="col-md-4">
								<input type="submit" class="form-control" id="add" name="add" value="salvar"/>
							</div>

						</div>
			</div>
		</div>
</template:admin>