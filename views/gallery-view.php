<?php 
	$conexion=mysqli_connect('localhost','root','','imaginarte');
	//$conexion=mysqli_connect('localhost','user-imaginarte','Imaginarte3d','imaginarte-3d');
 ?>

<div class="contenedor p-5">
	<div class="row">
			<div class="col-md-12">
				<h2>Panel de Galerias</h2>
				<!--<a href="" class="btn btn-primary" style="color: #fff">Agregar Slide</a> -->
				<br>
				<br>
				<table class="table table-bordered">

				<thead>
					<th>Servicios</th>
					<th>Subcategoria</th>

					
				</thead>

				<tr>

				<td>
					
					<h5>Letras 3D Corporeas</h5>
				</td>
				<td>

					
					<h5>
		                 <div class="dropdown show">
		                    <a class="btn btn-primary  btn-sm dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		                     Selecciona Servicio:
		                    </a>
		                    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink" style="font-size: 23px;">
						     <?php 
							$sql="SELECT * from letras3d";
							$result2=mysqli_query($conexion,$sql);
							while ($mostrar2=mysqli_fetch_array($result2)) {
							 ?>
		                    <a class="dropdown-item" href="<?php echo $mostrar2['src'] ?>"><?php echo $mostrar2['productos']; }?></a>
		                    </div>
		                </div>
					</h5>
				</td>	
				</tr>

				<tr>

				<td>
					
					<h5>Anuncios Luminosos</h5>
				</td>
				<td>

					
					<h5>
		                 <div class="dropdown show">
		                    <a class="btn btn-primary  btn-sm dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		                     Selecciona Servicio:
		                    </a>
		                    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink" style="font-size: 23px;">
						     <?php 
							$sql="SELECT * from anuncios";
							$result3=mysqli_query($conexion,$sql);
							while ($mostrar3=mysqli_fetch_array($result3)) {
							 ?>
		                    <a class="dropdown-item" href="<?php echo $mostrar3['src'] ?>"><?php echo $mostrar3['productos']; }?></a>
		                    </div>
		                </div>
					</h5>
				</td>	
				</tr>


				<tr>

				<td>
					
					<h5>Neon</h5>
				</td>
				<td>

					
					<h5>
		                 <div class="dropdown show">
		                    <a class="btn btn-primary  btn-sm dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		                     Selecciona Servicio:
		                    </a>
		                    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink" style="font-size: 23px;">

		                    <a class="dropdown-item" href="bannerlist-sena.php">Neon</a>
		                    </div>
		                </div>
					</h5>
				</td>	
				</tr>

				<tr>

				<td>
					
					<h5>Impresion Digital</h5>
				</td>
				<td>

					
					<h5>
		                 <div class="dropdown show">
		                    <a class="btn btn-primary  btn-sm dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		                     Selecciona Servicio:
		                    </a>
		                    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink" style="font-size: 23px;">
						     <?php 
							$sql="SELECT * from digital";
							$result5=mysqli_query($conexion,$sql);
							while ($mostrar5=mysqli_fetch_array($result5)) {
							 ?>
		                    <a class="dropdown-item" href="<?php echo $mostrar5['src'] ?>"><?php echo $mostrar5['productos']; }?></a>
		                    </div>
		                </div>
					</h5>
				</td>	
				</tr>

				<tr>

				<td>
					
					<h5>Promocionales</h5>
				</td>
				<td>

					
					<h5>
		                 <div class="dropdown show">
		                    <a class="btn btn-primary  btn-sm dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		                     Selecciona Servicio:
		                    </a>
		                    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink" style="font-size: 23px;">
						     <?php 
							$sql="SELECT * from promocionales";
							$result6=mysqli_query($conexion,$sql);
							while ($mostrar6=mysqli_fetch_array($result6)) {
							 ?>
		                    <a class="dropdown-item" href="<?php echo $mostrar6['src'] ?>"><?php echo $mostrar6['productos']; }?></a>
		                    </div>
		                </div>
					</h5>
				</td>	
				</tr>

				<tr>

				<td>
					
					<h5>Recorte de vinil</h5>
				</td>
				<td>

					
					<h5>
		                 <div class="dropdown show">
		                    <a class="btn btn-primary  btn-sm dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		                     Selecciona Servicio:
		                    </a>
		                    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink" style="font-size: 23px;">

		                    <a class="dropdown-item" href="bannerlist-vin.php">Recorte de vinil</a>
		                    </div>
		                </div>
					</h5>
				</td>	
				</tr>

				<tr>

				<td>
					
					<h5>Senaletica</h5>
				</td>
				<td>

					
					<h5>
		                 <div class="dropdown show">
		                    <a class="btn btn-primary  btn-sm dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		                     Selecciona Servicio:
		                    </a>
		                    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink" style="font-size: 23px;">
						     <?php 
							$sql="SELECT * from senalitica";
							$result8=mysqli_query($conexion,$sql);
							while ($mostrar8=mysqli_fetch_array($result8)) {
							 ?>
		                    <a class="dropdown-item" href="<?php echo $mostrar8['src'] ?>"><?php echo $mostrar8['productos']; }?></a>
		                    </div>
		                </div>
					</h5>
				</td>	
				</tr>																				
				</table>

		</div>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>