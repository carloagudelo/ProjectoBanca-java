<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Risultato Deposito</title>
<link href="styledp.css" rel="stylesheet" />
</head>
<body>
<div class="container">
<img src="https://static5.depositphotos.com/1059193/526/v/600/depositphotos_5265839-stock-illustration-green-housing.jpg" alt="Banca Intesa Logo" class="logo">
    <h1>Banca Intesa</h1>
    <hr>
    <h2>Risultato del Deposito</h2>
    <p>Il deposito è stato effettuato con successo.</p>
    <p>Il nuovo saldo è: ${saldo} &#8364;</p>
    <a href="${pageContext.request.contextPath}/" class="botone">Torna alla pagina principale</a>
</div>
</body>
</html>