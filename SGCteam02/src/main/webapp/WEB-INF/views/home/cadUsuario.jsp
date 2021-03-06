<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
.paypal-button button.large {
	min-width: 150px;
}

.paypal-label {
	margin-left: 30px;
}

.paypal-input {
	margin: 0 20px !important;
	width: 100px !important;
	height: 25px !important;
	border-radius: 5px !important;
	text-align: center !important;
}

.paypal-button {
	min-height: 40px;
}

.textPay {
	text-align: center;
	margin: 10px 50px;
	font-size: 13px;
	display: block;
}

#usd-button form, #brl-button form {
	margin: 0;
}

#usd-button img, #brl-button img {
	margin: 20px auto 0 auto;
	display: block;
}
</style>
<title>Cadastro de usuario</title>
</head>

<body>
    <h1>Cadastro de usuario</h1>
        <form:form action="cadastrarUser" method="POST" commandName="user">
	<table>
		<tr>
			<td>Student ID</td>
			<td><form:input path="userId" /></td>
		</tr>
		<tr>
			<td>First name</td>
			<td><form:input path="nome" /></td>
		</tr>
		<tr>
			<td>Last name</td>
			<td><form:input path="sobrenome" /></td>
		</tr>
		<tr>
			<td>Year Level</td>
			<td><form:input path="login" /></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" name="action" value="Add" />
				<input type="submit" name="action" value="Edit" />
				<input type="submit" name="action" value="Delete" />
				<input type="submit" name="action" value="Search" />
			</td>
		</tr>
	</table>
</form:form>
<br>
<table border="1">
	<th>ID</th>
	<th>First name</th>
	<th>Last name</th>
	<th>Year level</th>
	<c:forEach items="${userList}" var="user">
		<tr>
			<td>${user.userId}</td>
			<td>${user.nome}</td>
			<td>${user.sobrenome}</td>
			<td>${user.login}</td>
		</tr>
	</c:forEach>
</table>


	<h2>Cadastro de usuario</h2>
	<form action="salvar" method="post">
		Nome: <input type="text" name="login" /> <br />
		Sobrenome: <input type="text" name="sobrenome" /> <br />
		CPF: <input type="text" name="cpf" /> <br />
		E-mail: <input type="email" name="cpf" /> <br /> 
		<input type="submit"
			value="Entrar" />
			<input type="button" value="Cadastrar-se"/>
	</form>
</body>
</html>