<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"  uri="http://www.springframework.org/security/tags" %>
   
<!DOCTYPE html>

<html data-ng-app="app">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Mostrar Datos del Paciente</title>
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
 	<strong><h1 class="text-center">Saludable</h1></strong>
 	  <strong><h2 class="text-success text-center">Control Diario de Pacientes</h2></strong>
      </div>
    </div>

 
 <div class="container">
		<a href="j_spring_security_logout" class="btn btn-success pull-right">Logout </a>
		<a href="buscarDatosPaciente.do" class="btn btn-success">Volver </a>
	</div><br><br>

	  <div class="row">
	 	<div class="panel panel-success">
	 	<div class="panel-heading">
	 	Datos del Paciente
		</div>
		<div class="panel-body">
			<ul>
			<li>Nombre: <c:out value="${datosPaciente.nombre}"/></li>
			<li>Apellido: <c:out value="${datosPaciente.apellido}"/></li>
			<li>DNI: <c:out value="${datosPaciente.DNI}"/></li>
			<li>Fecha de nacimiento: <c:out value="${datosPaciente.fechaNacimiento}"/></li>
			<li>Fecha de nacimiento: <c:out value="${datosPaciente.localidad}"/></li>
			<li>Fecha de nacimiento: <c:out value="${datosPaciente.tipoTratamiento}"/></li>
			</ul>
		</div>
	</div>
	</div>

 
 <div class="row">
 	<div class="panel panel-success">
 	<div class="panel-heading">
 	Registros del Paciente
</div>

 
 	<div class="panel-body">
		
		<div class="container">
             
  <table class="table">
    <thead>
      <tr>
          <tr><th>Fecha</th><th>Tipo Comida</th><th>Comida Principal</th>
		      <th>Comida Secundaria</th><th>Bebida</th><th>Comio Postre</th><th>Postre</th>
		      <th>Se Tento</th><th>Tentacion</th><th>Quedo con Hambre</th></tr>
      </tr>
    </thead>
    <tbody>
    
    
   	 <c:forEach var="listVar" items="${datosEncontrados}"> 
			<tr>
			<td><c:out value="${listVar.fecha}"/></td>
		  <td><c:out value="${listVar.tipoComida}"/></td>
		  <td><c:out value="${listVar.comidaPrincipal}"/></td>
		  <td><c:out value="${listVar.comidaSecundaria}"/></td>
		  <td><c:out value="${listVar.bebida}"/></td>
		 <td><c:out value="${listVar.ingerioPostre ? 'SI': 'NO'}"/> </td>
		  <td><c:out value="${listVar.postre}"/></td>
		  <td><c:out value="${listVar.seTento ? 'SI': 'NO'}"/> </td>
		  <td><c:out value="${listVar.alimentoDeseado}"/></td>
		  <td>  <c:out value="${listVar.quedoHambriento ? 'SI': 'NO'}"/></td>
		  </tr>
	</c:forEach>
     
    </tbody>
  </table>
</div>
		
	</div>	
	

</div>

</div>
</div>

</div>
 <footer class="footer">
      <div class="container">
      <hr>
        <strong> <h4 class="text-success pull-right"> Saludable</h4> </strong>
      </div>
    </footer>
</body>
</html>