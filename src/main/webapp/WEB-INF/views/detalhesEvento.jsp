<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EventosApp</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="js/materialize.min.js"></script>
	
<spring:url value="Evento/" var="Evento"></spring:url>
<spring:url value="Evento/Salvar" var="Salvar"></spring:url>

</head>
<body>
	<div class="container">
		<h1>Lista de Eventos</h1>
		<h3><a href="/evento" class="waves-effect waves-light btn"><i class="material-icons left">add_circle_outline</i>Lista de Evento</a> </h3>
		<div th:each="evento : ${eventos}" class="container">
			<div class="row">
				<p>Nome: <td>${evento.nome}</a></td></p>
				<p>Local: <td>${evento.local}</td></p>
				<p>Evento: <td>${evento.data}</td></p>
				<p>Horario: <td>${evento.horario}</td></p>

			</div>
		<form method="post">
			Nome: <input type="text" value="" name="nomeConvidado"/>
			Rg: <input type="text" value="" name="rg"/>
			
			<button class="waves-effect waves-light btn" type="submit">Adicionar</button>
			
			<div class="container" th:each="convidado :${convidados}"> </div>
			
			<h5>Lista de Convidados: </h5>
			<div class="row">
			<div class="input-field col s6">
 					<p><td>${convidado.nomeConvidado}</a></td></p>
 					</div>
 					<div class="input-field col s3">	
 						<p> <td>${convidado.rg}</a></td></p>
 						</div>
 			</div>		
 		</form>	
	</div>


	</div>
</body>