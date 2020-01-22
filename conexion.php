<?php
$DB_HOST="localhost";
$DB_NAME= "imaginarte";
$DB_USER= "root";
$DB_PASS= "";

//$DB_HOST="localhost";
//$DB_NAME= "imaginarte-3d";
//$DB_USER= "user-imaginarte";
//$DB_PASS= "Imaginarte3d";

	# conectare la base de datos
    $con=@mysqli_connect($DB_HOST, $DB_USER, $DB_PASS, $DB_NAME);
    if(!$con){
        die("imposible conectarse: ".mysqli_error($con));
    }
    if (@mysqli_connect_errno()) {
        die("Connect failed: ".mysqli_connect_errno()." : ". mysqli_connect_error());
    }

?>
