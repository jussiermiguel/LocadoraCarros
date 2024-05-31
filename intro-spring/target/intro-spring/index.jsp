<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<spring:url var="css" value="/static/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="${css}" />
<title>Locadora</title>
</head>
<body>
	<h1>Bem-vindo à Locadora de Carros</h1>
	<div class="d-grid">
  		<button class="btn btn-primary btn-lg"><a href="formulario">Cadastrar Novo Carro</a></button>
	</div>
	<div class="d-grid">
  		<button class="btn btn-primary btn-lg"><a href="listar">Ver Carros Cadastrados</a></button>
	</div>
</body>
</html>