<?php

$host="localhost";
$user="root";
$pw="12345612";
$db='ingweb';

$con = mysqli_connect($host,$user,$pw,$db) or die("No se pudo autentificar con la BD");
mysqli_select_db($con,$db) or die("No se pudo conectar a la BD");


?>