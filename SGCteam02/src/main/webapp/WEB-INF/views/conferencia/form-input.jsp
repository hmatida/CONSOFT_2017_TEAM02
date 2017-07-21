<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<template:admin>
	<div>
		<div class="container">
			<h1 class="basic-title">Conferência - Cadastro</h1>

			<h3 class="basic-title">Paramentros da Conferência</h3>

			<div class="row">
				<div class="col-md-12">


					<form method="post" action="/conferencia">						
						<div class="form-group">
							<div class="col-md-6">
								<label for="Nome">Nome: </label> <input type="text"
									class="form-control" id="nome" name="nome" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-6">
								<label for="Numero Part">Nº Participantes</label> <input type="number"
									class="form-control" id="n_participantes" name="n_participantes" />
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-md-6">
								<label for="abreviacao">Abreviação </label> <input type="text"
									class="form-control" id="abreviacao" name="nome_abre" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-6">
								<label for="nome Organizador">Nome do Organizador </label> <input
									type="text" class="form-control" id="nome_organizador"
									name="nome_organizador" />
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-md-6">
								<label for="E-mail">E-mail:</label> <input type="text"
									class="form-control" id="email" name="email" />
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
									name="sub_tit" />
							</div>

						</div>
						
						<div class="form-group">
							<div class="col-md-12">
								<label for="subtitulo evento">Subtitulo do Evento:</label> <input
									type="text" class="form-control" id="subtituloevento"
									name="sub_tit_sec" />
							</div>

						</div>
						
						<div class="form-group">
							<div class="col-md-6">
								<label for="web">web:</label> <input type="text"
									class="form-control" id="web" name="url" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-6">
								<label for="Cidade">Cidade:</label> <input type="text"
									class="form-control" id="cidade" name="cidade" />
							</div>

						</div>
					
						<div class="form-group" >
							<div class="col-md-4">
								<label for="Moeda" name="moeda">Moeda</label> 
								<select name="moeda">
									<option value="real">real</option>
									<option value="dolar">dolar</option>
									<option value="euro">euro</option>
									
								</select>
							</div>

						</div>
						<div class="form-group">
							<div class="col-md-4">
								<label for="Preco">Preço:</label> <input type="text"
									class="form-control" id="preco" />
							</div>

						</div>
						<div class="form-group">
							<div class="col-md-4">
								<label for="Taxa">Taxa Fatura:</label> <input type="text"
									class="form-control" id="taxa" />
							</div>

						</div><br>
						<div class="form-group">
						<div class="col-md-6">
								
							</div>
							<div class="col-md-12">
								<button type="submit" class="btn btn-default">
									Salvar
								</button>
							</div>

						</div>
			</div>
		</div>
</template:admin>