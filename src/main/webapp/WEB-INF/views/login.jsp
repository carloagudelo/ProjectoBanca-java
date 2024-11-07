<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
 <link href="stylelogin2.css" rel="stylesheet"/> 
</head>
<body>
<div class="container">
 <img src="https://static5.depositphotos.com/1059193/526/v/600/depositphotos_5265839-stock-illustration-green-housing.jpg" alt="Banca Intesa Logo" class="logo">
<h1>Banca Intesa</h1>
<h2>Pagina di Login</h2>
<hr>

<form method="post" action="${pageContext.request.contextPath}/verifica">
	<fieldset><legend><b><em>User Account</em> </b></legend>
	<b><em>User:</em> </b>   <input type="text" placeholder="Esempio: carlo, maria..." name="user" required="required"><b><br>
	
	<em>Password:</em><input type="password" name="pass" required="required"><b><br>
	
	<input type="reset" value="Azzera" class="login-button">
	<input type="submit" value="Login" class="login-button">
	
	</fieldset>

</form>


</div>
</body>
</html>