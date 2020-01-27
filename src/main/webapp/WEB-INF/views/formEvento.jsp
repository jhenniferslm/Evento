<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EventoApp</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet"> <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
	<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="js/materialize.min.js"></script>


<spring:url value="Evento/" var="Evento"></spring:url>
<spring:url value="Evento/Salvar" var="Salvar"></spring:url>


</head>
<body>
	<div class="container">
	<h1>Cadastro de Eventos:</h1>
	<h3><a href="/eventos" class="waves-effect waves-light btn"><i class="material-icons left">format_list_bulleted</i>Lista de Eventos</a></h3></h3>
	<form method="post">
		Nome:<input type="text" value="" name="nome" />
		<div class="row">
			<div class="inout-fiel col s6">
			Local: <input type="text" value="" name="local" />
		</div>
		<div class="inout-fiel col s3">
		 Data: <input type="text" value="" name="data" /> 
		 </div>
		 <div class="inout-fiel col s3">
		 Horario: <input type="text" value="" name="horario" />
		 </div>
		</div>
		
		<form action="/formEvento">
			<button class="waves-effect waves-light btn" type="submit">Salvar</button>
		</form>
</form>
</div>
</body>
</html>