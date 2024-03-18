<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Atualizar Jogador</title>
<!-- Adicione o link para o Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
/* Estilos personalizados */
body {
	background-color: #000;
	color: #fff;
}

.form-control, .form-select {
	background-color: #222;
	color: #fff;
}

.form-control:focus, .form-select:focus {
	background-color: #333;
	color: #fff;
}

.form-check-input:checked {
	background-color: #ed145b;
}

.btn-primary {
	background-color: #ed145b;
	border: none;
}

.navbar-brand {
	color: #ed145b;
}
</style>
</head>
<body>

	<!-- Barra de navegaÃ§Ã£o -->
	<nav class="navbar bg-body-tertiary">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Gerenciador</a>
		</div>
	</nav>

	<div class="mx-5">
		<h1>Atualizar Jogador</h1>
		<form method="get" action="../atualizar/${jogador.id}">
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Nome</label> <input
					type="text" class="form-control" id="nome" name="nome"
					placeholder="${jogador.nome}" value="${jogador.nome}">
			</div>
			<div class="mb-3">
				<label for="numero" class="form-label">NÃºmero</label> <input
					type="number" class="form-control" id="numero" name="numero"
					placeholder="${jogador.numero}" value="${jogador.numero}">
			</div>
			<div class="mb-3">
				<label for="altura" class="form-label">Altura</label> <input
					type="number" value="${jogador.altura}" class="form-control"
					id="altura" name="altura" placeholder="${jogador.altura}">
			</div>
			<div class="mb-3">
				<label for="data" class="form-label">Data de Nascimento</label> <input
					type="date" value="${jogador.data}" class="form-control" id="data"
					name="data" placeholder="${jogador.data}">
			</div>
			<p>PÃ© dominante</p>
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
					id="time">
					<c:forEach items="${times}" var="time">
						<option value="${time}">${time.nome}</option>
					</c:forEach>

				</select>
			</div>
			<br>
			<div>
				<label for="posicao" class="form-label">PosiÃ§Ã£o</label> <select
					class="form-select" aria-label="Default select example"
					name="posicao" id="posicao" placeholder="${jogador.time.nome}">
					<c:forEach items="${posicoes}" var="posicao">
						<option value="${posicao}">${posicao.nome}</option>
					</c:forEach>
				</select>
			</div>
			<br>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>

	<!-- Adicione o link para o Bootstrap JS, se necessÃ¡rio -->
	<!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->

</body>
</html>
