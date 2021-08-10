<%--
  Created by IntelliJ IDEA.
  User: villa
  Date: 09/08/2021
  Time: 08:20 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="shortcut icon" href="assets/img/logo_poder_ejecutivo_2018-2024_25.jpg">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Luc�a Zamudio, Julio Gutierrez, Isaac Galindo">
    <meta name="generator" content="ASCOVE">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <title>Gestion Enlaces</title>
</head>
<body class="text-center fondo texto">
<form>
    <div class="any">
        <img src="assets/img/logo_poder_ejecutivo_2018-2024_25.jpg" class="izquierda" alt="No Encontrado">
        <img src="assets/img/image_750x_5e93e4dd3fa46.jpg" class="derecha" alt="No Encontrado">
        <h1>ASCOVE</h1>
        <h2>Atención de Solicitudes de Comités Vecinales</h2>
        <h4>Gestión de Enlaces de Comités</h4>
    </div>
    <div class="alinear">
        <button class="btn boton margen2" data-bs-toggle="modal" data-bs-target="#addEnlace"
                type="button">Nuevo</button>
        <button class="btn boton margen2" type="button">Buscar</button>
        <button class="btn boton margen2" type="button">Modificar</button>
        <button class="btn boton margen2" type="button">Eliminar</button>
    </div>
    <div id="listaEnlaces" class="alinear3 texto2">

    </div>
</form>
<form id="formularioEnlaces" >
    <div class="modal fade" id="addEnlace" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
         aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form method="POST" action="#">
                    <div class="modal-header">
                        <h5 class="modal-title">Nuevo Enlace</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Id Enlace</label>
                                <div>
                                    <input type="text" class="form-control campo" id="idEnlace"
                                           pattern="^[a-zA-ZáéíóúÁÉÍÓÚÑñüÜ0-9 ]+" title="Sólo letras"/>
                                </div>
                                <small class="text-danger form-text"></small>
                            </div>
                        </div>
                    </div>
                    <div class="modal-body">
                        <div class="col-lg-20">
                            <div class="form-group">
                                <label>Nombre(s)</label>
                                <div>
                                    <input type="text" class="form-control campo" id="nombreEnlace"
                                           pattern="^[a-zA-ZáéíóúÁÉÍÓÚÑñüÜ0-9 ]+" title="Sólo letras"/>
                                </div>
                                <small class="text-danger form-text"></small>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-6">
                                    <label>Apellido Paterno</label>
                                    <input type="text" class="form-control campo" id="apellidoPatEnlace"
                                           pattern="^[a-zA-ZáéíóúÁÉÍÓÚÑñüÜ0-9 ]+" title="Sólo letras" />
                                    <small class="text-danger form-text"></small>
                                </div>
                                <div class="col-lg-6">
                                    <label>Apellido Materno</label>
                                    <input type="text" class="form-control campo" id="apellidoMatEnlace"
                                           pattern="^[a-zA-ZáéíóúÁÉÍÓÚÑñüÜ0-9 ]+" title="Sólo letras" />
                                    <small class="text-danger form-text"></small>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-6">
                                    <label>Calle</label>
                                    <input type="text" class="form-control campo" id="calleEnlace"
                                           pattern="^[a-zA-ZáéíóúÁÉÍÓÚÑñüÜ0-9 ]+" title="Sólo letras" />
                                    <small class="text-danger form-text"></small>
                                </div>
                                <div class="col-lg-6">
                                    <label>Colonia</label>
                                    <input type="text" class="form-control campo" id="coloniaEnlace"
                                           pattern="^[a-zA-ZáéíóúÁÉÍÓÚÑñüÜ0-9 ]+" title="Sólo letras" />
                                    <small class="text-danger form-text"></small>
                                </div>
                                <div class="col-lg-12">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <label>Municipio</label>
                                            <input type="text" class="form-control campo" id="municipioEnlace"
                                                   title="Sólo letras" />
                                            <small class="text-danger form-text"></small>
                                        </div>
                                        <div class="col-lg-6">
                                            <label>Teléfono</label>
                                            <input type="text" class="form-control campo" id="telefonoEnlace"
                                                   pattern="^[a-zA-ZáéíóúÁÉÍÓÚÑñüÜ0-9 ]+" title="Sólo letras" />
                                            <small class="text-danger form-text"></small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                            <button type="button" class="btn btn-success" id="GuardarEnlace">Guardar</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</form>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"
        integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js"
        integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script src="assets/js/gestionarEnlaces.js"></script>
</body>
</html>