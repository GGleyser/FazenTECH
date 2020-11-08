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
      <style>
          h1{
              font-size: 6vw;
          }
      </style>
      
      <?php 
        include_once "./componentes/nav.php";
      ?>
        
    <div class="container my-5 py-3 bg-light">
        
        <section class="my-3">
            <h1>Produção de leite</h1>
            <table class="table">
                <thead>
                    <tr>
                        <th>Vaca</th>
                        <th>Quantidade</th>
                        <th>Horário</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>001</td>
                        <td>2L</td>
                        <td>07:30</td>
                    </tr>
                    <tr>
                        <td>002</td>
                        <td>2,2L</td>
                        <td>07:40</td>
                    </tr>
                    <tr>
                        <td>003</td>
                        <td>2,5L</td>
                        <td>07:47</td>
                    </tr>
                    <tr>
                        <td>004</td>
                        <td>2,1L</td>
                        <td>07:55</td>
                    </tr>
                    <tr>
                        <td>005</td>
                        <td>2,3L</td>
                        <td>08:00</td>
                    </tr>
                    
                </tbody>
            </table>
        </section>

        <section class="my-3">
            <h1>Animais em tratamento</h1>
            <table class="table">
                <thead>
                    <tr>
                        <th>Vaca</th>
                        <th>Descrição do tratamento</th>
                        <th>Duração</th>
                    </tr>
                </thead>
                <tbody>
                    
                    <tr>
                        <td>005</td>
                        <td>Está tomando medicamentos contra carrapatos</td>
                        <td>4 dias</td>
                    </tr>
                    
                </tbody>
            </table>
        </section>    

    </div>
      
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
  