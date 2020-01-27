<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EventosApp</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet"> <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
	<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="js/materialize.min.js"></script>
      
</head>
<body>
	<div class="container">
		<h1>Lista de Eventos</h1>
		<hr>
		<h3><a href="/cadastrarEvento" class="waves-effect waves-light btn"><i class="material-icons left">add_circle_outline</i>Cadastrar Evento</a></h3>
		
		<table>
			<thead>
				<tr>
					<th>Nome</th>
					<th>Local</th>
					<th>Data</th>
					<th>Horario</th>
				<hr>

				</tr>
			</thead>

			<tbody>
				<c:forEach var="evento" items="${eventos}">

					<tr>

					
						<td><a class href ="<c:url value='/${evento.codigo}'/>">${evento.nome}</a></td>
						<td>${evento.nome}</a></td>
						<td>${evento.local}</td>
						<td>${evento.data}</td>
						<td>${evento.horario}</td>

					</tr>
			

			</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>