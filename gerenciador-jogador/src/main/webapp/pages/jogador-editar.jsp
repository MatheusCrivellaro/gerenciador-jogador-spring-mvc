<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>

<head>

<title>Jogadores - Atualizar</title>

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
	<div class="mx-5">
		<h1>Atualizar Jogador</h1>
		<form method="get" action="../atualizar/${jogador.id}">
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Nome</label> <input
					type="text" class="form-control" id="nome" name="nome" placeholder="${jogador.nome}" value="${jogador.nome}">
			</div>
			<div class="mb-3">
				<label for="numero" class="form-label">Número</label> <input
					type="number" class="form-control" id="numero" name="numero" placeholder="${jogador.numero}" value="${jogador.numero}">
			</div>
			<div class="mb-3">
				<label for="altura" class="form-label">Altura</label> <input type="number" value="${jogador.altura}" class="form-control" id="numero" name="altura" placeholder="${jogador.altura}">
			</div>
			<div class="mb-3">
				<label for="data" class="form-label">Data de Nascimento</label> <input
					type="date" value="${jogador.data}" class="form-control" id="data" name="data" placeholder="${jogador.data}">
			</div>
			<p>Pé dominante</p>
			<div class="mb-3 p-2">
				<div class="form-check">
					<input class="form-check-input" type="radio" name="dominante"
						id="flexRadioDefault1" value="DIREITO"> <label
						class="form-check-label" for="flexRadioDefault1">Direito</label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="dominante"
						id="flexRadioDefault2" value="ESQUERDO"> <label
						class="form-check-label" for="flexRadioDefault2">Esquerdo</label>
				</div>
			</div>
			<div>
				<label for="time" class="form-label">Time</label> <select
					class="form-select" aria-label="Default select example" name="time"
					id="time" placeholder="${jogador.time.nome}">
					<c:forEach items="${times}" var="time">
						<option value="${time}">${time.nome}</option>
					</c:forEach>
					
				</select>
			</div>
			<br>
			<div>
				<label for="posicao" class="form-label">Posição</label> <select
					class="form-select" aria-label="Default select example" name="posicao"
					id="posicao" placeholder="${jogador.time.nome}">
					<c:forEach items="${posicoes}" var="posicao">
						<option value="${posicao}">${posicao.nome}</option>
					</c:forEach>
				</select>
			</div>
			<br>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
</body>
</html>