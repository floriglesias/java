<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   
<!DOCTYPE html>

<html data-ng-app="app">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Control Diario de Pacientes</title>

<script type="text/javascript"
    src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
    
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<script src="js/angular.min.js"></script>
<script src="js/script.js"></script>
</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
	</nav>
	   
   
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
	 			<div class="panel-body" data-ng-controller="mostrarOpcionesACompletar">
					<form:form action="controlDiarioPaciente.do" commandName="controlPaciente"  method="post" >

						 <div class="dropdown-toggle">
								Tipo de comida: <form:select path="tipoComida" ng-init="selecTipoComida ='desayuno'" ng-model="selecTipoComida" name="tipoComida" >
								<form:option value="desayuno">Desayuno</form:option>
								<form:option value="almuerzo">Almuerzo</form:option>
								<form:option value="merienda">Merienda</form:option>
								<form:option value="cena">Cena </form:option>
								 </form:select>
						<form:errors path="tipoComida" cssClass="error" />
						<br><br>
						</div>
						 
						 <div class="form-group">
							Comida principal: <form:input path="comidaPrincipal"  name="comidaPrincipal"/>
							<form:errors path="comidaPrincipal" cssClass="error" />
						</div>
						
						<div class="form-group">
							Comida secundaria: <form:input path="comidaSecundaria" name="comidaSecundaria" />
							<form:errors path="comidaSecundaria" cssClass="error" />
						</div>
						
						<div class="form-group">
							Bebida: <form:input path="bebida" name="bebida" />
							<form:errors path="bebida" cssClass="error" />
						</div>
						
						<div data-ng-if="selecTipoComida == 'almuerzo' || selecTipoComida == 'cena'">
						<div class="form-group">
						¿Ingerio postre?: 
						SI <form:radiobutton path="ingerioPostre" name="ingerioPostre" ng-model="PostreSi" value="true"/>
						NO <form:radiobutton path="ingerioPostre" ng-checked="false" name="ingerioPostre"  ng-model="PostreSi" value="false"/>
						</div>
						
						<div class="form-group" data-ng-show="PostreSi == 'true'">
							Postre: <form:input path="postre" name="postre" />
							<form:errors path="postre" cssClass="error" />
						</div>
						</div>
						
						<div class="form-group">
						¿Tenia tentación de ingerir otro alimento?:
						SI <form:radiobutton path="seTento"   name="seTento" ng-model="tentacionSi" value="true"/>
						NO <form:radiobutton path="seTento"   name="seTento"  ng-model="tentacionSi" value="false"/>
						</div>
						
						<div data-ng-show="tentacionSi == 'true'">
						<div class="form-group">
							Alimento que quería ingerir: <form:input path="alimentoDeseado" name="alimentoDeseado" />
							<form:errors path="alimentoDeseado" cssClass="error" />
						</div>
						</div>
						
						<div class="form-group">
						¿Se quedo con hambre?:
					 	SI <form:radiobutton path="quedoHambriento" name="quedoHambriento" value="true"/>
						NO <form:radiobutton path="quedoHambriento" name="quedoHambriento"  value="false"/>
						</div>
						
					
						<input type="submit" class="btn btn-success" value="Enviar" />
						
						
					</form:form>
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