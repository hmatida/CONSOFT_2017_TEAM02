<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template" %>
<template:admin>
  <div>
    <div class ="container min-container">  

	<h2 class="basic-title">Página de Login SISTEMA DE CONFERÊNCIA</h2>
	<form action="efetuaLogin" method="post">
		Login: <input type="text" name="login" /> <br /> Senha: <input
			type="password" name="senha" /> <br /> <input type="submit"
			value="Entrar" />
	</form>
	
	</div></div>

</template:admin>