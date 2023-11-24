<?php 

$servername = "DESKTOP-6OIMOIV\SQLEXPRESS";
$connectionOptions = array( "Database" => "agencia_de_viajes", "Uid" => "", "PWD" => "root");

$con = sqlsrv_connect($servername, $connectionOptions);

if(!$con){
    echo "Error de conexion.<br />";
    die(print_r(sqlsrv_errors(), true));
}

?>