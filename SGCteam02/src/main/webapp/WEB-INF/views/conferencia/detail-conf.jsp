<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<template:admin>

	<div>
		<div class="container">
			<h1 class="basic-title">Detalhes da Conferência</h1>


			<div class="col-md-12">
				<h3 class="basic-title">${conf.nome }</h3>

			<div class="col-md-6">
			<p>Subtitulo: ${conf.sub_tit}</p>
						
			</div>
			<div class="col-md-6"><p>
			Subtitulo Secundário: ${conf.sub_tit_sec}
						</p>
			</div>
			<div class="col-md-6"><p>
			Nome do organizador: ${conf.nome_organizador}
						</p>
			</div>
			<div class="col-md-6">
			<p>data do evento: <fmt:formatDate value="${conf.dataEvento.time}"
									pattern="dd/MM/yyyy" /></p>
						
			</div>
			
			
			<div class="col-md-6">
			<p>Página da Conferência: ${conf.url}</p>
						
			</div>
			<div class="col-md-6"><p>
			Email: ${conf.email}
						</p>
			</div>
			<div class="col-md-6"><p>
			Email Retorno: ${conf.emailRetorno}
						</p>
			</div>
			<div class="col-md-6"><p>
				Preço: ${conf.preco}
						</p>
			</div>
			
			</div>

		</div>
	</div>
</template:admin>