<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<style>
        body {
            display: flex;
            justify-content: center; /* Centraliza horizontalmente */
            align-items: center; /* Centraliza verticalmente */
            height: 100vh; /* Define a altura da tela */
            margin: 0; /* Remove margens padrão */
        }

        .container {
            text-align: center; /* Centraliza o texto */
        }
    </style>
<meta charset="ISO-8859-1">
<title>Carros Cadastrados</title>
<spring:url var="css" value="/static/bootstrap.min.css" />
<link type="text/css" rel="stylesheet" href="${css}" />
</head>
<body>
<div class="container">
	<div class="container mt-3">
		<h1>Carros Cadastrados</h1>
	
	
    <table class="table">
		<thead class="table-success">
			<tr>
			<th>Modelo</th>
			<th>Placa</th>
			<th>Ano</th>
			<th>Alugado</th>
			<th>AÇÕES</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${carros}" var="carro">
			<tr>
				
				<td>${carro.modelo}</td>
				<td>${carro.placa}</td>
				<td>${carro.ano}</td>
				<td>${carro.alugado ? 'Sim' : 'Não'}</td>
				<td><a href="editar/${carro.id}">Editar</a> | <a href="excluir/${carro.id}">Excluir</a></td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
	<div class="d-grid">
  		<a href="<c:url value="/" />"><button type="button" class="btn btn-primary btn-lg">Voltar para a página inicial</button></a>
	</div>
</div>
</body>
</html>