<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Carros Cadastrados</title>
<spring:url var="css" value="/static/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="${css}" />
</head>
<body>
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
	<div class="d-grid">
  		<button type="button" class="btn btn-primary btn-lg"><a href="<c:url value="/" />">Voltar para a página inicial</a></button>
	</div>
</body>
</html>