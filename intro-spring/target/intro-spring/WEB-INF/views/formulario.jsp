<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

	<spring:url var="css" value="/static/bootstrap.min.css" />
	<link type="text/css" rel="stylesheet" href="${css}" />
    <meta charset="UTF-8">
    <title>Cadastro de Carros</title>
</head>
<body>

<div class="container mt-3">
    <h1>Cadastro de Carros</h1>  
    <form:form method="POST" modelAttribute="carro">

    <div class="mb-3 mt-3">
      <label>Modelo: <form:input path="modelo" class="form-control" /></label>
    </div>
    <div class="mb-3 mt-3">
      <label>Placa: <form:input path="placa" class="form-control" /></label>
    </div>
    <div class="mb-3 mt-3">
      <label>Ano: <form:input path="ano" class="form-control"" /></label>
    </div>
        
        <form:button class="btn btn-primary">Cadastrar</form:button>
    </form:form>
</div>
    <p>${mensagem}</p>
    <div class="d-grid">
  		<button type="button" class="btn btn-primary btn-lg"><a href="<c:url value="/" />">Voltar para a página inicial</a></button>
	</div>
</body>
</html>
