<?php
require_once("server/conexion.php");
require_once("server/sesion.php"); 

$nombre = $_POST['nombre'];
$direccion = $_POST['direccion'];

$query = "SELECT * FROM cliente WHERE Nombre = '$nombre'";

$res = sqlsrv_query($con, $query);

if(!$res){
    echo "Fallo consulta.<br />";
    die(print_r(sqlsrv_errors(), true));
}

if(sqlsrv_has_rows($res) == false){
    echo "Usuario no encontrado.<br />";
    echo "Nombre: $nombre, Direccion: $direccion";
    die;
}
else{
    $_SESSION['usuario_activo'] = array();
    $_SESSION['usuario_activo']['Nombre'] = $nombre;   
}

$view = "home";
require_once "views/layout.php";