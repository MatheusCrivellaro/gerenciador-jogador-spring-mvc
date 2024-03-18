<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

<head>

<title>Jogador - Detalhe</title>

<c:set value="${pageContext.request.contextPath}" var="contextPath" />

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">

</head>

<body>

	<nav class="navbar bg-body-tertiary">
		<div class="container-fluid">
			<a class="navbar-brand" href="${contextPath}/jogador">Gerenciador</a>
		</div>
	</nav>

	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="well">

					<h2>Jogador</h2>

					<div class="form-group">
						<label class="control-label" for="nome">Nome:</label> <b>${jogador.nome}</b>
					</div>
					<div class="form-group">
						<label class="control-label" for="nome">Número:</label> <b>${jogador.numero}</b>
					</div>
					<div class="form-group">
						<label class="control-label" for="nome">Posição:</label> <b>${jogador.posicao}</b>
					</div>
					<div class="form-group">
						<label class="control-label" for="nome">Time:</label> <b>${jogador.time}</b>
					</div>
					<div class="form-group">
						<label class="control-label" for="nome">Altura:</label> <b>${jogador.altura}</b>
					</div>
					<div class="form-group">
						<label class="control-label" for="nome">Dominante:</label> <b>${jogador.dominante}</b>
					</div>
					<div class="form-group">
						<label class="control-label" for="nome">Data de
							Nascimento:</label> <b>${jogador.data}</b>
					</div>

					<hr>

					<a class="btn btn-default btn-lg btn-primary" href="${contextPath}/jogador">Voltar</a>

					<br> <br>

				</div>
			</div>
		</div>
	</div>

	<!-- jQuery -->
	<script src="${js}/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="${js}/bootstrap.min.js"></script>

</body>
</html>