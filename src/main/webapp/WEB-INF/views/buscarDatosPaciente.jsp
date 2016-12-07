<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   
<!DOCTYPE html>

<html data-ng-app="app">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Busqueda de datos de pacientes</title>

<script type="text/javascript"
    src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
    
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
	</nav>
	   
    <div class="container theme-showcase" role="main">
    <div class="jumbotron">
      <div class="container">
 	 <h1 class="text-center"><strong>Saludable</strong></h1>
 	  <h2 class="text-success text-center"><strong> Control Diario de Pacientes</strong></h2>
      </div>
    </div>

	 <div class="container">
		<a href="j_spring_security_logout" class="btn btn-success pull-right">Logout </a>
	</div><br><br>

	 <div class="row">
	 	<div class="col-md-4 col-md-offset-4">
			<div class="panel panel-success">
	 			<div class="panel-body">
					<form:form action="mostrarDatosPaciente.do" commandName="paciente" >

						 
						<div class="form-group">
							DNI: <form:input path="DNI" name="DNI" />
							<form:errors path="DNI" cssClass="error" />
						</div>	
					
						<input type="submit" class="btn btn-success" value="Enviar" />
						
						
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>

 	<footer class="footer">
      <div class="container">
      <hr>
        <h4 class="text-success pull-right"><strong>  Saludable</strong></h4> 
      </div>
    </footer>
</body>

</html>