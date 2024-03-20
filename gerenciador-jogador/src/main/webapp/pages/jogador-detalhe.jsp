<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Jogador</title>
<!-- Adicione o link para o Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<style>
/* Estilos personalizados para a paleta de cores preta e rosa */
body {
	background-color: #000;
	color: #fff;
}

.cor-principal {
	color: #ed145b;
}

.navbar {
	background-color: #000;
}

.navbar-brand {
	color: #ed145b; /* Rosa */
}

.btn-primary {
	background-color: #ed145b !important; /* Rosa */
	border-color: #ed145b !important;
}

.btn-primary:hover {
	color: #ed145b;
	background-color: #000 !important; /* Rosa mais escuro */
	border-color: #ed145b !important;
}

.form-control-static {
	color: #ed145b; /* Rosa */
}
</style>
</head>
<body>

	<!-- Barra de navegação -->
	<nav class="navbar navbar-expand-lg">
		<div class="container-fluid">
			<a class="navbar-brand fw-semibold mx-3 my-1" href="../jogador">Gerenciador</a>
		</div>
	</nav>

	<!-- Conteúdo principal -->
	<div class="container mt-4">
		<div class="row d-flex justify-content-center">
			<div class="col-lg-9">
				<div class="card bg-dark rounded-4">
					<div class="card-body row m-0 py-4 px-4 d-flex justify-content-center">

						<h2 class="text-light mx-3 my-2 col-12 text-center fs-1">Jogador</h2>

						<div class="card m-2 border-0 bg-dark col-12" style="width: 18rem;">
							<ul class="list-group list-group-flush">
								<li class="list-group-item bg-dark border-secondary text-light">Nome: <span class="cor-principal">${jogador.nome}</span></li>
								<li class="list-group-item bg-dark border-secondary text-light">N�mero: <span class="cor-principal">${jogador.numero}</span></li>
								<li class="list-group-item bg-dark border-secondary text-light">Posi��o: <span class="cor-principal">${jogador.posicao.nome}</span></li>
								<li class="list-group-item bg-dark border-secondary text-light">Time: <span class="cor-principal">${jogador.time.nome}</span></li>
								<li class="list-group-item bg-dark border-secondary text-light">Altura: <span class="cor-principal">${jogador.altura}</span></li>
								<li class="list-group-item bg-dark border-secondary text-light">P� Dominante: <span class="cor-principal">${jogador.dominante}</span></li>
								<li class="list-group-item bg-dark border-secondary text-light">Data de Nascimento: <span class="cor-principal">${jogador.data}</span></li>
							</ul>
						</div>

						<hr>

						<a class="btn btn-primary btn-lg" href="../jogador">Voltar</a>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Adicione o link para o Bootstrap JS, se necessário -->
	<!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->

</body>
</html>
