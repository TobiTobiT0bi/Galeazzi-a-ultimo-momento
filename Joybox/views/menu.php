<?php 

require_once("server/conexion.php");
require_once("server/sesion.php"); 

?>

<nav class="navbar navbar-expand-lg navbar-light  navbar-custom" aria-label="Fifth navbar example">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.php">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample05" aria-controls="navbarsExample05" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarsExample05">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link <?php echo ($view == "home" ? "activo" : "no-activo"); ?>" id="inicio-m" aria-current="page" href="index.php">Inicio</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link <?php echo ($view == "ranking" ? "activo" : "no-activo"); ?>" aria-current="page" href="ranking.php">Ranking</a>
                </li>
            </ul>
            <?php
            if(!isset($_SESSION['usuario_activo'])){ ?>
            <button onclick="location.href='inicio_sesion.php';" style="margin-right: 0px" type="button" class="btn btn-outline-light descarga-bnt <?php echo ($view == 'home' ? 'blanco' : 'rojo'); ?>" id="des-bnt-menu<?php echo ($view == 'home' ? '-blanco' : '-rojo'); ?>">Iniciar sesion</button>
            <button onclick="location.href='registrarse.php';" type="button" class="btn btn-outline-light descarga-bnt <?php echo ($view == 'home' ? 'blanco' : 'rojo'); ?>" id="des-bnt-menu<?php echo ($view == 'home' ? '-blanco' : '-rojo'); ?>">Registrarse</button>
            <?php 
            }else{ ?>
            <li class="nav-item">
                <a style="color: <?php echo ($view == 'home' ? 'white' : 'red')?>" id="inicio-m" aria-current="page">Bienvenido, <?php echo $_SESSION['usuario_activo']['Nombre'] ?>!</a>
            </li>
            <button onclick="location.href='logout.php';" type="button" class="btn btn-outline-light descarga-bnt <?php echo ($view == 'home' ? 'blanco' : 'rojo'); ?>" id="des-bnt-menu<?php echo ($view == 'home' ? '-blanco' : '-rojo'); ?>">Cerrar sesion</button>
            <?php
            }
            ?>
        </div>
    </div>
</nav>