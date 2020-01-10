<div class="bs-example" style="padding: 50px;">
	<div class="row">
		<?php foreach($posts as $post): ?>
	  <div class="col-sm-6 col-md-4">
	    <div class="thumbnail">
	    	<p class="fecha"><?php echo fecha($post['fecha']); ?></p>
		  	<a href="single.php?id=<?php echo $post['id']; ?>">
				<img src="./imagenes/<?php echo $post['thumb']; ?>" alt="<?php echo $post['titulo'] ?>">
			</a>
	      <div class="caption">
			<h2><a href="single.php?id=<?php echo $post['id']; ?>"><?php echo $post['titulo'] ?></a></h2>
	        <p class="extracto"><?php echo $post['extracto'] ?></p>
	        <p>
	        <a href="single.php?id=<?php echo $post['id']; ?>" class="btn btn-primary">Continuar Leyendo</a>
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
	background: #595959;
	color:#fff;
}

.paginacion ul li a:hover {
	background: #051240;
	text-decoration: none;
}

.paginacion ul .active {
	background: #051240;
	padding:10px 20px;
}

.paginacion ul .disabled{
	background: #a8a8a8;
	padding:10px 20px;
	cursor: not-allowed;
}

.paginacion ul .disabled:hover {
	background: #a8a8a8;
}

</style>