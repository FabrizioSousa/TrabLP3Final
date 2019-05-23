<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script>
 $(document).ready(function()
			{
//		 		console.log("a");
				$.ajax({
					
					type: 'GET',
					url: 'BuscaBDCompras',
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
									
									
								}
				});
			});
	</script>
<link href="css/MinhasCompras.css" rel="stylesheet">
 <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<div class="container">
<br>  <p class="text-center">Minhas Compras<hr>



<div class="card">
<table class="table table-hover shopping-cart-wrap">
<thead class="text-muted">
<tr>
  <th scope="col">Produto</th>
  <th scope="col" width="120">Quantidade</th>
  <th scope="col" width="120">Preço</th>
 
</tr>
</thead>
<tbody>
<tr>
	<td>
<figure class="media">
	<div class="img-wrap"><img src="" class="img-thumbnail img-sm"></div>
	<figcaption class="media-body">
		<h6 class="title text-truncate" >Nome do Produto</h6>
		<dl class="param param-inline small">
		  <dt>Comentario:  </dt>
		  
		</dl>
		
	</figcaption>
</figure> 
	</td>
	<td> 
		<select class="form-control">
			<option>1</option>
			<option>2</option>	
			<option>3</option>	
			<option>4</option>	
		</select> 
	</td>
	<td> 
		<div class="price-wrap"> 
			<var class="price">USD 145</var> 
			
		</div> <!-- price-wrap .// -->
	</td>
	
</tr>

</tbody>
</table>
</div> <!-- card.// -->

</div> 
<!--container end.//-->

<br><br>
