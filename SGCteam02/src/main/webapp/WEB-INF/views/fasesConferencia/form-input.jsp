<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" href="<c:url value='/assets/css/bootstrap.min.css'/>">
<link rel="stylesheet" href="<c:url value='/assets/css/bootstrap-theme.min.css'/>">
<link rel="stylesheet" href="<c:url value='/assets/js/bootstrap.min.js'/>">



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cad Fases Conf</title>
</head>

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
			<form method="post" action="/fasesConferencia">
			 <label for="conferencia" name="conferencia">Conferencia</label>
			 <select name="conferencia">
			 <c:forEach items="${conferencia}" var="conf">
			 	<option value=${conf.id}>${conf.nome_abre}</option>
			 </c:forEach>
			 </select>
				<div class="form-group">					 
					<label for="nome">
						Nome
					</label>
					<input type="text" class="form-control" id="nome" name="nome" />
				</div>
				<div class="form-group">
					 
					<label for="date">
						Data inicial
					</label>
					<label class="col-xs-3">
					<input type="date" class="form-control" id="date" name="initDate"/>
					</label>
				</div>
				<div class="form-group">
					 
					<label for="cep">
						Data final
					</label>
					<label class="col-xs-3">
					<input type="date" class="form-control" id="fimdate" name="fimDate" />
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
	<script src="assets/js/jquery-2.1.4.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/scripts.js"></script>
</body>
</html>