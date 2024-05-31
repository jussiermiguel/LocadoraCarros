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
<spring:url var="css" value="/static/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="${css}" />
<title>Locadora</title>
</head>
<body>
<div class="container">
	<h1>Bem-vindo à Locadora de Carros</h1>
	<div class="d-grid">
  		<a href="formulario"><button class="btn btn-primary btn-lg">Cadastrar Novo Carro</button></a>
	</div>
	<br>
	<div class="d-grid">
  		<a href="listar"><button class="btn btn-primary btn-lg">Ver Carros Cadastrados</button></a>
	</div>
</div>
</body>
</html>