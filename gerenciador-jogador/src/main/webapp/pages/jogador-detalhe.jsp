<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Jogador</title>
  <!-- Adicione o link para o Bootstrap CSS -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <style>
    /* Estilos personalizados para a paleta de cores preta e rosa */
    body {
      background-color: #000;
      color: #fff;
    }

    .navbar {
      background-color: #000 !important;
    }

    .navbar-brand {
      color: #ed145b !important; /* Rosa */
    }

    .btn-primary {
      background-color: #ed145b !important; /* Rosa */
      border-color: #ed145b !important;
    }

    .btn-primary:hover {
      background-color: #d6346c !important; /* Rosa mais escuro */
      border-color: #d6346c !important;
    }

    .card {
      background-color: #333;
      color: #fff;
    }

    .form-control-static {
      color: #ed145b; /* Rosa */
    }
  </style>
</head>
<body>

  <!-- Barra de navegação -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Gerenciador</a>
    </div>
  </nav>

  <!-- Conteúdo principal -->
  <div class="container mt-4">
    <div class="row">
      <div class="col-lg-12">
        <div class="card">
          <div class="card-body">

            <h2 class="card-title">Jogador</h2>

            <div class="form-group">
              <label class="control-label">Nome:</label>
              <p class="form-control-static">${jogador.nome}</p>
            </div>
            <div class="form-group">
              <label class="control-label">Número:</label>
              <p class="form-control-static">${jogador.numero}</p>
            </div>
            <div class="form-group">
              <label class="control-label">Posição:</label>
              <p class="form-control-static">${jogador.posicao}</p>
            </div>
            <div class="form-group">
              <label class="control-label">Time:</label>
              <p class="form-control-static">${jogador.time}</p>
            </div>
            <div class="form-group">
              <label class="control-label">Altura:</label>
              <p class="form-control-static">${jogador.altura}</p>
            </div>
            <div class="form-group">
              <label class="control-label">Dominante:</label>
              <p class="form-control-static">${jogador.dominante}</p>
            </div>
            <div class="form-group">
              <label class="control-label">Data de Nascimento:</label>
              <p class="form-control-static">${jogador.data}</p>
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
