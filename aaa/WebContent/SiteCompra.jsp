<!DOCTYPE html>
<html lang="en">

<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
 <script>
 $(document).ready(function()
			{
//		 		console.log("a");
				$.ajax({
					
					type: 'GET',
					url: 'BuscaBD',
							headers:
								{
									Accept: "application/json;charset=utf-8",
									"Content-Type": "application/json; charset=utf-8"
								},
								success: function(result)
								{
									console.log(result);
//		 							console.log(result.id);
									var produto = $.parseJSON(result);
									console.log(produto);
									
									$("#PrimeiroCarro").html(produto[0].NOME);
									$("#PrecoPrimeiro").text("R$: " + produto[0].PRECO);
									$("#ImagemPrimeiro").attr('src', produto[0].IMAGEM);
									$("#ComentPrimeiro").text(produto[0].COMENTARIO);
									
									$("#SegundoCarro").html(produto[1].NOME);
									$("#PrecoSegundo").text("R$: " + produto[1].PRECO);
									$("#ImagemSegundo").attr('src', produto[1].IMAGEM);
									$("#ComentSegundo").text(produto[1].COMENTARIO);
									
									$("#TerceiroCarro").html(produto[2].NOME);
									$("#PrecoTerceiro").text("R$: " + produto[2].PRECO);
									$("#ImagemTerceiro").attr('src', produto[2].IMAGEM);
									$("#ComentTerceiro").text(produto[2].COMENTARIO);
									
									$("#QuartoCarro").html(produto[3].NOME);
									$("#PrecoQuarto").text("R$: " + produto[3].PRECO);
									$("#ImagemQuarto").attr('src', produto[3].IMAGEM);
									$("#ComentQuarto").text(produto[3].COMENTARIO);
									
									$("#QuintoCarro").html(produto[4].NOME);
									$("#PrecoQuinto").text("R$: " + produto[4].PRECO);
									$("#ImagemQuinto").attr('src', produto[4].IMAGEM);
									$("#ComentQuinto").text(produto[4].COMENTARIO);
									
									$("#SextoCarro").html(produto[5].NOME);
									$("#PrecoSexto").text("R$: " + produto[5].PRECO);
									$("#ImagemSexto").attr('src', produto[5].IMAGEM);
									$("#ComentSexto").text(produto[5].COMENTARIO);
								}
				});
			});

	
	 
	 
	 
//     var request;
    	
    		
//     		var url = "Teste.jsp";
    	
//     		if(window.XMLHttpRequest)
//     			{
    			
//     			request = new XMLHttpRequest();
//     			}
//     		else if(window.ActiveXObject)
//     			{
    			
//     			request= new ActiveXObject("Microsoft.XMLHTTP");
//     			}
//     		try
//     		{
// //     			console.log("a");
//     			request.onreadystatechange=getInfo;
//     			request.open("GET",url,true);
//     			request.send();
//     		}
//     		catch(e)
//     		{
//     			alert("Deu ruim");
//     		}
//     		function getInfo()
//     		{
// //     			console.log("a");
//     			if(request.readyState===4)
//     				{
//     				console.log(request.responseText);
//     				var val=request.responseText;
//     				var p =  $.parseJSON(request.responseText);
//     				console.log(p);
//     				$("#NomeCarro").html(val);
//     				console.log(val);
//     				}
//     		}
    	
// })
    
    </script>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Ecommerce Carro</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/shop-homepage.css" rel="stylesheet">
<!-- <link href="css/Foto.css" rel="stylesheet"> -->
</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">Compre seu carro!</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Minhas Compras
              
            </a>
         
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">

    <div class="row">

      
      <!-- /.col-lg-3 -->

      <div class="col-lg-12">
		
		
        <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
        
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
        
          <div class="carousel-inner" role="listbox">
          
            <div class="carousel-item active">
            
              <img class="d-block img-fluid" width=100%  height=70% src="https://www.orangeboxminiaturas.com.br/img/products/bugatti-veyron-super-sport-1-18-autoart-laranja-70936_1_1200.jpg" alt="First slide">
           
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" width=100%  height=70% src="https://cdn.shopify.com/s/files/1/1759/4823/products/VF_Engineering_Hypercharged_Huracan_Performante_califonia_canyon_roller_blue_jake_paul_grande.png?v=1545249913" alt="Second slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid"  width=100%  height=70% src="https://thumbs.web.sapo.io/?H=547&epic=+yaTqoOu18MaFIgRIKkoL0xkrxl4Mkh2B5VNQADFXh0MfhnQDDRDSy0Eopf8YYRKk3PxZy0jrqHaOzeXTesHFi1bfqJDeNeu2AuEGpbn61D3TNRNWJ5AU3ESVaGwGuWvLE/V" alt="Third slide">
            </div>
          </div>
       
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>

        <div class="row">


<!------------------------------PRIMEIRO CARRO----------------->
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a  href="#"><img id="ImagemPrimeiro" class="card-img-top" width=100% alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a id="PrimeiroCarro" href="#"></a>
                </h4>
                <h5 id="PrecoPrimeiro"></h5>
                <p id="ComentPrimeiro" class="card-text"> </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>
<!-------------------------------SEGUNDO CARRO ---------------------------------------------------- -->
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img  id="ImagemSegundo" width=100% class="card-img-top"alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a id="SegundoCarro" href="#"></a>
                </h4>
                
                
                <h5 id="PrecoSegundo"></h5>
                <p id="ComentSegundo" class="card-text"></div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>

<!-------------------------------TERCEIRO CARRO ---------------------------------------------------- -->

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img id="ImagemTerceiro" class="card-img-top" width=100%  alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a id="TerceiroCarro" href="#"></a>
                </h4>
                <h5 id="PrecoTerceiro"></h5>
                <p class="card-text" id="ComentTerceiro">   </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>

<!-------------------------------QUARTO CARRO ---------------------------------------------------- -->

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img id="ImagemQuarto" class="card-img-top" width=100% alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a id="QuartoCarro" href="#"></a>
                </h4>
                <h5 id="PrecoQuarto"></h5>
                <p id="ComentQuarto" class="card-text"> </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>

<!-------------------------------QUINTO CARRO ---------------------------------------------------- -->

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img id="ImagemQuinto" class="card-img-top"width=100% alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a id="QuintoCarro" href="#"></a>
                </h4>
                <h5 id="PrecoQuinto"></h5>
                <p id="ComentQuinto" class="card-text"></div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>

<!-------------------------------SEXTO CARRO ---------------------------------------------------- -->

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img id="ImagemSexto" class="card-img-top" width=100% alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a id="SextoCarro" href="#"></a>
                </h4>
                <h5 id="PrecoSexto" ></h5>
                <p id="ComentSexto" class="card-text"></div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>

        </div>
        <!-- /.row -->

      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
