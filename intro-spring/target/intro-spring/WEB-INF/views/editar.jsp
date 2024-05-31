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
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            padding: 20px;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }

        .btn-secondary {
            background-color: #6c757d;
            border-color: #6c757d;
        }

        .btn-secondary:hover {
            background-color: #5a6268;
            border-color: #545b62;
        }
    </style>
<meta charset="ISO-8859-1">
<title>Edição de Carros</title>
<spring:url var="css" value="/static/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="${css}" />
</head>
<body>
	<form:form method="POST" modelAttribute="carro">
        <p>Modelo: <form:input path="modelo" /></p>
        <p>Placa: <form:input path="placa" /></p>
        <p>Ano: <form:input path="ano" /></p>
        <div class="form-check mb-3">
      	<label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember"> Remember me
      </label>
    </div>    
        <p>Alugado: <form:checkbox path="alugado" /></p>
        <form:button>Salvar</form:button>
    </form:form>
    <div class="d-grid">
  		<button type="button" class="btn btn-primary btn-lg"><a href="<c:url value="/" />">Voltar para a página inicial</a></button>
	</div>
		
</body>
</html>