<!doctype html>
<html lang="en">
    <head>
        <title>fasenTECH</title>
        <!-- Required meta tags -->
        <meta lang="pt-br">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body>
      
     <?php 
        include_once "../componentes/nav.php";
      ?>
        
    <div class="container my-5 py-3 bg-light">
        
        <form action="#" method="post">
            <h1>Cadastro funcionário</h1>
            <div class="form-group">
                <label for="nome">Nome</label>
                <input class="form-control" type="text" name="nome" id="nome" placeholder="Nome">
            </div>
            
            <div class="form-group">
                <label for="sobrenome">Sobrenome</label>
                <input class="form-control" type="text" name="sobrenome" id="sobrenome" placeholder="sobrenome">
            </div>

            <div class="form-group">
                <label for="duracao">Nascimento</label>
                <input class="form-control" type="date" name="nascimento" id="nascimento" placeholder="Nascimento">
            </div>

            <div class="form-group">
                <label for="cep">CEP</label>
                <input class="form-control" type="number" name="cep" id="cep">
            </div>

            <div class="form-group">
                <label for="cpf">CPF</label>
                <input class="form-control" type="number" name="cpf" id="cpf">
            </div>

            <div class="form-group">
                <label for="tel">Telefone</label>
                <input class="form-control" type="number" name="tel" id="tel">
            </div>

            <div class="form-group">
                <label for="sal">Salário</label>
                <input class="form-control" type="number" name="sal" id="sal">
            </div>

            <div class="form-inline">
                <a href="#" class="btn btn-primary">Enviar</a>
            </div>

        </form>
    </div>
      
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>