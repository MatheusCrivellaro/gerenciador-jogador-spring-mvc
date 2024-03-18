<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

<head>

<title>jogadores - Listagem</title>

<c:set value="${pageContext.request.contextPath}" var="contextPath" />

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
    .navbar {
      background-color: #222 !important;
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
      background-color: #ed145b;
      border-color: #ed145b;
    }
    .navbar-brand{
        color: #ed145b;
    }
</style>

</head>
<body>

	<nav class="navbar">
		<div class="container-fluid">
			<a class="navbar-brand" href="${contextPath}/jogador">Gerenciador</a>
		</div>
	</nav>

	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<h1>jogadores</h1>

				<p class="toolbar">

					<a class="create btn btn-default text-white btn-primary" href="jogador/novojogador">Novo jogador</a>

					<span class="alert"></span>
				</p>
				<div>
				</div>
				<div class="row d-flex justify-content-center">
					<c:forEach items="${jogadores}" var="jogador">
					<div class="card col-12 col-sm-6 col-md-4 col-lg-3 m-2" style="width: 18rem;">
						<div class="card-body">
							<h5 class="card-title">${jogador.nome}</h5>
							<h6 class="card-subtitle mb-2 text-body-secondary">${jogador.time.nome}</h6>
							<p class="m-0">Posição: ${jogador.posicao.nome}</p>
							<p class="m-0">Número: ${jogador.numero}</p>
							<p class="m-0">Altura: ${jogador.altura}</p>
							<div class="d-flex justify-content-center">
								<button type="button" class="btn px-2 btn-primary btn-sm"><a href="jogador/deletar/${jogador.id}" class=" text-decoration-none text-white">Deletar</a></button>
								<button type="button" class="btn mx-2 btn-primary btn-sm"><a href="jogador/${jogador.id}" class="text-decoration-none text-white">Visualizar</a></button>
								<button type="button" class="btn btn-primary btn-sm"><a href="jogador/atualizajogador/${jogador.id}" class="text-decoration-none text-white">Editar</a></button>
							</div>
						</div>
					</div>
				</c:forEach>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
