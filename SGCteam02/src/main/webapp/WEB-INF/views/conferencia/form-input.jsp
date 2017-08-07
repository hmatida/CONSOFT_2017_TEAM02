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
							<div class="col-md-3">
								<label for="Numero Part">Nº Máximo de Participantes</label> <input
									type="number" class="form-control" id="numMaxParticipantes"
									name="numMaxParticipantes" />
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
								<label for="E-mail">E-mail:</label> <input type="email"
									class="form-control" id="email" name="email" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-6">
								<label for="E-mail">E-mail de retorno:</label> <input type="email"
									class="form-control" id="emailRetorno" name="emailRetorno" />
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
								<label >web:</label> <input type="url"
									class="form-control" id="web" name="url" />
							</div>
						</div>

						<div class="row">
							<div class="col-xs-3">
								<div class="form-group">
									<label for="moeda">moeda:</label>								
									<select class="selectpicker form-control" name="moeda">
										<option>real</option>
										<option>dolar</option>
										<option>euro</option>
									</select>
								</div>
							</div>
						</div>


						<div class="form-group">
							<div class="col-md-2">
								<label for="Preco">Preço:</label> <input type="number" "
									class="form-control" id="preco"  name="preco" placeholder="apenas numero"/>
							</div>

						</div>
						<br>
						<div class="form-group">
							<div class="col-md-6"></div>
							<div class="col-md-12">
								<button type="submit" class="btn btn-default">Salvar</button>
							</div>

						</div>
					</form>
				</div>
			</div>
		</div>
		</div>
</template:admin>