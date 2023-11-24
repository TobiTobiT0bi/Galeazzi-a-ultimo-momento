<?php
require_once "server/conexion.php";

$nombre = $_POST['nombre'];
$telefono = $_POST['telefono'];
$preferencias = $_POST['preferencias'];
$direccion = $_POST['direccion'];
$direccion2 = $_POST['direccion2'];

if($direccion == $direccion2){
    $query = "INSERT INTO cliente (Nombre, Direccion, Telefono, Preferencias_de_viaje) VALUES ('$nombre', '$direccion', '$telefono', '$preferencias')";

    $query_insert = sqlsrv_query($con, $query);

    if(!$query_insert){
        echo "Fallo consulta.<br />";
        die(print_r(sqlsrv_errors(), true));
    }
}

$view = "home";
require_once "views/layout.php";