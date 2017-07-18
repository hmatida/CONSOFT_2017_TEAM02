<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>SGC</title>
    
    <!-- bootstrap -->
	<link rel="stylesheet"
		href="<c:url value='/assets/css/bootstrap.min.css'/>">
	<link rel="stylesheet"
		href="<c:url value='/assets/css/bootstrap-theme.min.css'/>">
	
	<!-- style -->
	<link rel="stylesheet" href="<c:url value='/assets/css/index.css'/>">
	<link rel="stylesheet" href="<c:url value='/assets/css/forms.css'/>">

  </head>
  <body>

    <div class="container-fluid">
	<div class="row">
		<div class="col-md-12"> 
		<td> </td>
		</div>
		<div class="col-md-12" style="vertical-align: middle">
			<h2 class="text-center">
				Sistema de Gerenciamento de Conferências
			</h2>
			<h3 class="text-center">
				Acesso ao sistema
			</h3>
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
		</div>
		<div class="col-md-6">
			<form class="form-horizontal" role="form" action="/inicio">
				<div class="form-group">
					 
					<label for="inputEmail3" class="col-sm-2 control-label">
						Login
					</label>
					<div class="col-sm-10">
						<input type="email" class="form-control" id="inputEmail3">
					</div>
				</div>
				<div class="form-group">
					 
					<label for="inputPassword3" class="col-sm-2 control-label">
						Senha
					</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="inputPassword3">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<div class="checkbox">
							 
							<label>
								<input type="checkbox"> Lembrar
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 
						<button type="submit" class="btn btn-default">
							Entrar
						</button>
					</div>
				</div>
			</form>
		</div>
		<div class="col-md-3">
		</div>
	</div>
</div>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
  </body>
</html>