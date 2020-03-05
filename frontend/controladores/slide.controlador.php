<?php

class ControladorSlide{

	public function ctrMostrarSlide(){

		$tabla = "slides";

		$respuesta = ModeloSlide::mdlMostrarSlide($tabla);

		return $respuesta;
		
	}

}