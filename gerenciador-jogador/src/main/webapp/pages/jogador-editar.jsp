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
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
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

.bg-secondary-form-control {
	background-color: #191919;
}

.bg-secondary-form-control::placeholder {
	color: #fff;
}

.form-check-input:checked {
	background-color: #ed145b;
}

.btn-primary {
	background-color: #ed145b;
	border-color: #ed145b;
}

.navbar-brand {
	color: #ed145b;
}

.btn-primary:hover {
	color: #ed145b !important;
	background-color: #000 !important;
	border-color: #ed145b !important;
}

</style>
</head>
<body>

	<!-- Barra de navegaÃ§Ã£o -->
	<nav class="navbar bg-black">
		<div class="container-fluid">
			<a class="navbar-brand fw-semibold mx-3 my-1" href="/gerenciador/jogador">Gerenciador</a>
		</div>
	</nav>

	<div class="m-5">
		<div class="p-5 mx-5 my-3 bg-dark rounded-4">
			<h1 class="mb-5">Atualizar Jogador</h1>
			<div class="row">
				<form method="get" action="../atualizar/${jogador.id}">
					<div class="input-group mb-3">
						<span
							class="input-group-text bg-secondary-form-control text-light">Nome:</span>
						<input type="text" class="form-control" value="${jogador.nome}"
							name="nome">
					</div>
					<div class="input-group mb-3">
						<span
							class="input-group-text bg-secondary-form-control text-light">N�mero:</span>
						<input type="number" class="form-control"
							value="${jogador.numero}" name="numero">
					</div>
					<div class="input-group mb-3">
						<span
							class="input-group-text bg-secondary-form-control text-light">Altura:</span>
						<input type="number" class="form-control"
							value="${jogador.altura}" name="altura">
					</div>
					<div class="input-group mb-3">
						<span
							class="input-group-text bg-secondary-form-control text-light">Data
							de Nascimento:</span> <input type="date" class="form-control"
							value="${jogador.data}" name="data">
					</div>
					<div class="input-group mb-3">
						<span
							class="input-group-text bg-secondary-form-control text-light">P�
							dominante:</span>
						<div
							class="d-flex align-items-center ps-3 border border-white form-control ">
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="dominante"
									id="inlineRadio1" value="DIREITO"> <label
									class="form-check-label" for="inlineRadio1">Direito</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="dominante"
									id="inlineRadio2" value="ESQUERDO"> <label
									class="form-check-label" for="inlineRadio2">Esquerdo</label>
							</div>
						</div>
					</div>
					<div class="input-group mb-3">
						<span
							class="input-group-text bg-secondary-form-control text-light">Time:</span>
						<select class="form-select" aria-label="Default select example"
							name="time" id="time">
							<c:forEach items="${times}" var="time">
								<option value="${time}">${time.nome}</option>
							</c:forEach>

						</select>
					</div>

					<div class="input-group mb-3">
						<span
							class="input-group-text bg-secondary-form-control text-light">Posi��o:</span>
						<select class="form-select" aria-label="Default select example"
							name="posicao" id="posicao" placeholder="${jogador.time.nome}">
							<c:forEach items="${posicoes}" var="posicao">
								<option value="${posicao}">${posicao.nome}</option>
							</c:forEach>
						</select>
					</div>
					<div class="mt-5">
						<button type="submit" class="btn btn-primary col-12">Submit</button>
					</div>
				</form>
			</div>

		</div>
	</div>

	<!-- Adicione o link para o Bootstrap JS, se necessÃ¡rio -->
	<!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->

</body>
</html>
