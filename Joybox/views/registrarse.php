<div class="container coco">
    <div class="container-sm">
        <div class="manolito">

        </div>
        <form method="POST" action="registrarse_post.php" class="formucon">
            <h3 class="hj">¡HOLA VIAJESNECO!</h3>
            <label class="labin" for="email">Nombre</label>
            <div class="input-group mb-3">
                <input type="text" class="effect-input" name="nombre" id="nombre" required>
                <span class="focus-border"></span>
            </div>

            <label class="labin" for="asunto">Telefono</label>
            <div class="input-group mb-3">
                <input class="effect-input" type="text" name="telefono" id="telefono" required>
                <span class="focus-border"></span>
            </div>

            <label class="labin" for="asunto">Preferencias</label>
            <div class="input-group mb-3">
                <input class="effect-input" type="text" name="preferencias" id="preferencias" required>
                <span class="focus-border"></span>
            </div>

            <label class="labin" for="asunto">direccion</label>
            <div class="input-group mb-3">
                <input class="effect-input" type="text" name="direccion" id="direccion" required>
                <span class="focus-border"></span>
            </div>            

            <label class="labin" for="asunto">Confirmar direccion</label>
            <div class="input-group mb-3">
                <input class="effect-input" type="text" name="direccion2" id="direccion2" required>
                <span class="focus-border"></span>
            </div>
            <button type="submit" class="btn btn-danger">Enviar</button>
            <input type="hidden" name="_captcha" value="false">
            <input type="hidden" name="_subject" value="¡Nuevo envío!">
            <input type="hidden" name="_next" value="http://localhost/joybox/contacto.php">
        </form>
    </div>
</div>