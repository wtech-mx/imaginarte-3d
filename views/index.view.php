<div class="container">
	<form class="navbar-form navbar-left"  action="<?php echo RUTA; ?>/buscar.php" method="get" name="busqueda" role="search" >
	  <div class="form-group">
	    <input type="text" class="form-control"  name="busqueda" placeholder="Buscar">
	  </div>
	  <button type="submit" class="btn btn-default">Buscar</button>
	</form>
</div>


<div class="bs-example" id="blog" style="padding: 50px;">
	<div class="row">
		<?php foreach($posts as $post): ?>
	  <div class="col-sm-6 col-md-4">
	    <div class="thumbnail">
	    	<p class="fecha"><?php echo fecha($post['fecha']); ?></p>
		  	<a href="single.php?id=<?php echo $post['id']; ?>">
				<img src="./imagenes/<?php echo $post['thumb']; ?>" alt="<?php echo $post['titulo'] ?>">
			</a>
	      <div class="caption">
			<h2><a href="single.php?id=<?php echo $post['id']; ?>"><?php echo $post['titulo'] ?></a>
			</h2>

	        <p class="extracto"><?php echo $post['extracto'] ?></p>
	        <p>
	        <a href="single.php?id=<?php echo $post['id']; ?>" class="btn btn-primary" style="background-color: #5e30b6;border: #5e30b6">Continuar Leyendo</a>
				  <div class="fb-share-button" data-href="http://www.imaginarte3d.com.mx/single.php?id=<?php echo $post['id']; ?>" data-layout="button" data-size="large">
				  </div>
	       </p>
	      </div>
	    </div>
	  </div>
	   <?php endforeach; ?>
	</div>
		<?php require 'paginacion.php'; ?>
</div>

<style type="text/css" media="screen">
/* --- Paginacion --- */

.paginacion {
	margin-bottom: 30px;
}

.paginacion ul {
	list-style: none;
	text-align: center;
}

.paginacion ul li {
	display: inline-block;
	margin:0 5px;
	color:#fff;
}

.paginacion ul li a {
	display: block;
	padding:10px 20px;
	background: #00AD6D;
	color:#fff;
}

.paginacion ul li a:hover {
	background: #00ffa0;
	text-decoration: none;
}

.paginacion ul .active {
	background: #00ffa0;
	padding:10px 20px;
}

.paginacion ul .disabled{
	background: #008151;
	padding:10px 20px;
	cursor: not-allowed;
}

.paginacion ul .disabled:hover {
	background: #008151;
}

</style>