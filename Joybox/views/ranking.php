<div class="container con       nnnnnnnnn                                                             n">
    <div class="superior">
        <h2 class="meyor">ULTIMOS 10 USUARIOS REGISTRADOS</h2>
    </div>
    <table class="table">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Usuario</th>
                <th scope="col">Telefono</th>
                <th scope="col">Preferencias de viaje</th>
            </tr>
        </thead>
        <tbody>
            <?php
                $query = "SELECT TOP (10) Cliente_ID ,Nombre ,Direccion ,Telefono , Preferencias_de_viaje FROM cliente";
                $res = sqlsrv_query($con, $query);

                if(!$res){
                    echo "Fallo consulta.<br />";
                    die(print_r(sqlsrv_errors(), true));
                }

                while($row = sqlsrv_fetch_array($res, SQLSRV_FETCH_ASSOC)){ ?>
                    <tr>
                        <td class="nro"><?php echo $row['Cliente_ID'] ?></td>
                        <td class="inf"><?php echo $row['Nombre'] ?></td>
                        <td class="inf"><?php echo $row['Telefono'] ?></td>
                        <td class="inf"><?php echo $row['Preferencias_de_viaje'] ?></td>
                    </tr> <?php
                }
            ?>
        </tbody>
    </table>
</div>