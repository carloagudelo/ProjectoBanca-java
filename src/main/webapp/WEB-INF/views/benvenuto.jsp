<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Benvenuto</title>
<link href="stylebenvenuto2.css" rel="stylesheet" />
</head>
<body>
	<div class="container">
	 <img src="https://static5.depositphotos.com/1059193/526/v/600/depositphotos_5265839-stock-illustration-green-housing.jpg" alt="Banca Intesa Logo" class="logo">
		<h1>Benvenuto a Banca Intesa</h1>
		<hr>
		<h2>
			il tuo saldo e :<%
		double var = (double) request.getAttribute("saldo");
		out.println(var +" &euro;" );
		%> 
		</h2>
		<br>

		<form method="post" action="${pageContext.request.contextPath}/verifica">
			<fieldset>
				<legend>Cosa voi fare?</legend>
				
					<input type="submit" name="operazione" value="deposito" class="botone">
						 <input type="submit" name="operazione"
							value="prelievo"class="botone">
				
			</fieldset>
		</form>
	</div>
</body>
</html>