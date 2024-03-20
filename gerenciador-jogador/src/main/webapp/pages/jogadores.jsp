<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

<head>

<title>jogadores - Listagem</title>

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

.card {
	background-color: #222;
	color: #fff;
	border-color: #ed145b;
}

.card-title {
	color: #ed145b;
}

.card-subtitle {
	color: #fff;
}

.btn-primary {
	background-color: #ed145b;
	border-color: #ed145b;
}

.btn-primary:hover {
	color: #ed145b !important;
	background-color: #000 !important;
	border-color: #ed145b !important;
}

.navbar-brand {
	color: #ed145b;
}

.titulo-jogadores {
	font-size: 6.5vh;
}

</style>

</head>
<body>

	<nav class="navbar bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand fw-semibold mx-3 my-1"
				href="/gerenciador/jogador">Gerenciador</a>
		</div>
	</nav>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="text-center m-4">
					<h1 class="titulo-jogadores">Jogadores</h1>
				</div>

				<p class="toolbar">
				<div class="row d-flex justify-content-center">
					<a class="create btn col-10 text-white btn-primary m-3 py-2"
						href="jogador/novojogador">Novo jogador</a>
				</div>
				</p>
				<div></div>
				<div class="row d-flex justify-content-center">
					<c:forEach items="${jogadores}" var="jogador">
						<div
							class="card col-12 col-sm-6 col-md-4 col-lg-3 m-2 border-1 bg-dark pt-3 px-4"
							style="width: 18rem;">
							<ul class="list-group list-group-flush">
								<h5 class="card-title text-center">${jogador.nome}</h5>
								<h6 class="card-subtitle mb-2 text-light text-center">${jogador.time.nome}</h6>
								<li class="list-group-item bg-dark border-secondary text-white">Posição:
									${jogador.posicao.nome}</li>
								<li class="list-group-item bg-dark border-secondary text-white">Número:
									${jogador.numero}</li>
								<li class="list-group-item bg-dark border-secondary text-white">Altura:
									${jogador.altura}</li>
								<div class="d-flex justify-content-center my-3">
									<a class="btn text-white btn-primary"
										href="jogador/deletar/${jogador.id}">Deletar</a>
									<a class="btn text-white btn-primary mx-2"
										href="jogador/${jogador.id}">Visualizar</a>
									<a class="btn text-white btn-primary"
										href="jogador/atualizajogador/${jogador.id}">Editar</a>
								</div>
							</ul>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
