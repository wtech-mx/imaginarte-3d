<?php

define('RUTA', 'http://localhost/imaginarte-3d');
//define('RUTA', 'https://eago.com.mx/blog/');

//DB TRABJANDO EN LOCALHOST
$bd_config = array(
	'basedatos' => 'imaginarte',
	'usuario' => 'root',
	'pass' => ''
);

//DB TRABJANDO EN EL SERVIDOR
//

//$bd_//config = array(
	//'basedatos' => 'imaginarte-3d',
	//'usuario' => 'user-imaginarte',
	//'pass' => 'Imaginarte3d'
//);

$blog_config = array(
	'post_por_pagina'=> '3',
	'carpeta_imagenes' => 'imagenes/'
);

$blog_admin = array(
	'usuario' => 'Imaginarte',
	'password' => 'Maritzel'
);

?>
