<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<template:admin>

	<div>
		<div class="cotainer">

			<div class="col-md-12">

				<h2 class="basic-tittle">Conferencia Cadastradas</h2>

				<p>Listagem de conferencia j� cadastradas:</p>

				<table
					class="table table-condensed table-bordered table-striped table-hover">
					<thead>
						<tr>
							<th>Nome</th>
							<th>T�tulo</th>
							<th>E-mail</th>

							<th>Valor</th>
							<th>Data da Confer�ncia
							</th>
							<th>N� Max de Partic</th>
						</tr>
					</thead>
					<c:forEach items="${listConferencia}" var="conf">
						<tr>
							<td>${conf.nome}</td>
							<td>${conf.sub_tit}</td>
							<td>${conf.email}</td>
							<td>R$ ${conf.preco}</td>
							<td><fmt:formatDate value="${conf.dataEvento.time}"
									pattern="dd/MM/yyyy" /></td>
							<td>${conf.numMaxParticipantes}</td>
							<td>
								<div class="btn-group pull-right">
									<a class="delete btn btn-sm btn-primary"
										action="/conferencia/listForConf"
										href=/conferencia/listForConf/${conf.id}><i
										class="glyphicon glyphicon-eye-open"></i> Detalhes</a>
								</div>
							</td>
							<td>
								<div class="btn-group pull-right">
									<a class="btn btn-sm btn-warning"
										action="/conferencia/listForConf"
										href=/conferencia/update/${conf.id}><i
										class="glyphicon glyphicon-pencil"></i> Editar</a>
								</div>
							</td>
							<td>
								<div class="btn-group pull-right">
									<a class="delete btn btn-sm btn-danger"
										action="/conferencia/delete"
										href=/conferencia/delete/${conf.id}><i
										class="glyphicon glyphicon-remove"></i> Excluir</a>
								</div>
							</td>
						</tr>
					</c:forEach>
				</table>
				<div class="panel-footer">
					<a class="btn btn-sm btn-success" href=/conferencia/form-input><i
						class="glyphicon glyphicon-plus"> </i>Adicionar</a>
				</div>
</div></div></div>
				<!-- Modal -->
				<div class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Modal title</h4>
      </div>
      <div class="modal-body">
        <p>One fine body&hellip;</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->



	<script src="assets/js/jquery-2.1.4.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/scripts.js"></script>


</template:admin>