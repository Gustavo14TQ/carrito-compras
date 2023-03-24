<?php

require 'config/database.php';
$db = new Database();
$con = $db->conectar();

$sql = $con->prepare("SELECT id,nombre,precio FROM productos WHERE activo=1");
$sql->execute();
$resultado = $sql->fetchAll(PDO::FETCH_ASSOC);
?>



<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="estilo.css">
    <script src="app.js" async></script>
    <title>Express Computer </title>
</head>

<body>
    <header>
        <h1>Express Computer</h1>
    </header>
    <section class="contenedor">
    
        <div class="contenedor-items">
            <?php foreach ($resultado as $row) { ?>
                <div class="item">
                    <span class="titulo-item"><?php echo $row['nombre']; ?></span>
                    <?php
                            $id = $row['id'];
                            $imagen = "images/productos/" . $id . "/principal.jpg";

                            if (!file_exists($imagen)) {
                                $imagen = "images/no-photo.jpg";
                            }
                            ?>
                    <img src="<?php echo $imagen; ?>" alt="" class="img-item">
                    <span class="precio-item">S/. <?php echo $row['precio']; ?></span>
                    <button class="boton-item">Agregar al Carrito</button>
                </div>
                <?php } ?>
        </div>
    
 
    <div class="carrito" id="carrito">
        <div class="header-carrito">
            <h2>Tu Carrito</h2>
        </div>

        <div class="carrito-items">

        </div>
        <div class="carrito-total">
            <div class="fila">
                <strong>Tu Total</strong>
                <span class="carrito-precio-total">S/.12.00,00
                </span>
            </div>
            <button class="btn-pagar">Pagar <i class="fa-solid fa-bag-shopping"></i> </button>
        </div>
    </div>
    </section>
</body>

</html>