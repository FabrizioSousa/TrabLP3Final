<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
<head>
	<title>Login Page</title>
   <!--Made with love by Mutiullah Samim -->
   <script src="http://code.jquery.com/jquery-latest.min.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="css/Login.css">
	
	
<!-- 	<script> -->
<!-- // 	$(document).ready(function() -->
<!-- // 			{ -->
<!-- // 	$("#Login").click(function() -->
<!-- // 			{ -->
<!-- // 		var conteudo = document.getElementById("txt").value; -->
<!-- // 		console.log(conteudo); -->
<!-- // 		$.ajax({ -->
			
<!-- // 			type: 'GET', -->
<!-- // 			url: 'BuscaBD', -->
<!-- // 					headers: -->
<!-- // 						{ -->
<!-- // 							Accept: "application/json;charset=utf-8", -->
<!-- // 							"Content-Type": "application/json; charset=utf-8" -->
<!-- // 						}, -->
<!-- // 						success: function(result) -->
<!-- // 						{ -->
<!-- // 							console.log(result); -->
<!-- // 							console.log(result.id); -->
<!-- // 							var produto = $.parseJSON(result); -->
<!-- // 							console.log(produto); -->
							
							
<!-- // 						} -->
<!-- // 		}); -->
<!-- // 	}); -->
<!-- // } -->
<!-- // 	); -->
	
<!-- 	</script> -->
	
	
</head>
<body>
<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3>Entrar</h3>
				
			</div>
			<div class="card-body">
				<form>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input id="txt"type="text" class="form-control" placeholder="Login" name="userName"
						>
						
					</div>
					
					
					
					<div class="form-group">
						<a id="Login" href="SiteCompra.jsp" class="btn btn-primary stretched-link">Login</a>
					</div>
					
				</form>
			</div>
			
		</div>
	</div>
</div>
</body>
</html>