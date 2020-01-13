<?php 
	include("home.php");
 ?>

<div class="container">
	<form class="navbar-form navbar-left"  action="<?php echo RUTA; ?>/buscar.php" method="get" name="busqueda" role="search" >
	  <div class="form-group">
	    <input type="text" class="form-control"  name="busqueda" placeholder="Buscar">
	  </div>
	  <button type="submit" class="btn btn-primary"style="background-color: #5e30b6;border: #5e30b6;padding: 8px">Buscar</button>
	</form>
</div>

	<div class="contenedor">
		<section class="post">
			<article>
				<h2 class="titulo"><?php echo $post['titulo'] ?></h2>
					<p class="fecha"><?php echo fecha($post['fecha']); ?></p>

				  <div class="fb-share-button" data-href="http://www.imaginarte3d.com.mx/single.php?id=<?php echo $post['id']; ?>" data-layout="button" data-size="large">
				  </div>

				<div class="thumb">
					<img src="<?php echo RUTA; ?>/imagenes/<?php echo $post['thumb'] ?>" alt="<?php echo $post['thumb'] ?>">
				</div>
				<!-- Con la funcion nl2br insertamos un salto de linea antes de todas las lineas nuevas de un string. -->
				<p class="extracto" style="color: #000"><?php echo $post['texto'] ?></p>
			</article>
				<a href=" <?php echo RUTA ?>index.php#blog" class="btn btn-primary" style="background-color: #5e30b6;border: #5e30b6">Regresar</a>

		</section>

	</div>

<?php 
	include("./footer.php");
 ?>