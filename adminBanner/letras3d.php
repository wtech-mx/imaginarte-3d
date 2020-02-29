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
					<th>Subcategorias</th>
					
					<th>Acciones</th>
					
				</thead>

			<?php 
			$sql="SELECT * from letras3d";
			$result=mysqli_query($conexion,$sql);
			while ($mostrar=mysqli_fetch_array($result)) {
				
			 ?>

				<tr>
				<td>
					
					<h5><?php echo $mostrar['producto'] ?></h5>
				</td>
				
				<td>
					<a class="btn btn-sm btn-success" href="<?php echo $mostrar['src'] ?>">Ver Imagenes</a>

				</td>
				</tr>
				<?php 

					}
				 ?>
				
				</table>

		</div>
	</div>
</div>