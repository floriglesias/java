<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
// 	function delete_cookie() {
// 		document.cookie = 'JSESSIONID=; expires=Thu, 01 Jan 1970 00:00:01 GMT;';
// 	}
</script>
</head>
<body >
	<h1>Pagina de autenticacion</h1>
	<form action="j_spring_security_check" name="myForm" method="POST">
		<input type="text" name="j_username" placeholder="usuario" /><br>
		<input type="password" name="j_password" placeholder="password" /><br>
		<input type="submit" name="submit" value="ingresar" />
	</form>

</body>
</html>