<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Deposito</title>
<link href="styledp.css" rel="stylesheet" />
</head>
<body>
<div class="container">
<img src="https://static5.depositphotos.com/1059193/526/v/600/depositphotos_5265839-stock-illustration-green-housing.jpg" alt="Banca Intesa Logo" class="logo">
<h1>Banca Intesa</h1>
<hr>
<h2>DEPOSITO </h2>
<br>

<form method="post" action="${pageContext.request.contextPath}/verifica">
<fieldset><legend><b><em>Deposito</em> </b></legend>
<b>Inserisci la quantità del deposito.</b><br>
<input type="text" name="importo" required="required"> 
        <input type="submit" value="Effettua Deposito" class="botone">
        </fieldset>
</form>
</div>
</body>
</html>