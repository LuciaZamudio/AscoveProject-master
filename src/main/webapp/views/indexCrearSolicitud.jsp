<%--
  Created by IntelliJ IDEA.
  User: villa
  Date: 10/08/2021
  Time: 11:27 a. m.
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
  <meta name="author" content="Lucía Zamudio, Julio Gutierrez, Isaac Galindo, Fernanda Gonzalez, Pablo Solis">
  <meta name="generator" content="ASCOVE">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/css/styles.css">
  <title>Gestion de Solicitudes</title>
</head>
<body class="text-center fondo texto">
<form>
  <div class="any">
    <img src="assets/img/logo_poder_ejecutivo_2018-2024_25.jpg" class="izquierda" alt="No Encontrado">
    <img src="assets/img/image_750x_5e93e4dd3fa46.jpg" class="derecha" alt="No Encontrado">
    <h1>ASCOVE</h1>
    <h2>Atención de Solicitudes de Comités Vecinales</h2>
    <h4>Gestión de Solicitudes de Comités</h4>
  </div>
</form>
<form class="alinear">
  <h5 class="text-primary-light font-weight-bold">Selecciona el tipo de solicitud que quieres realizar</h5>
  <div>
    <select class="texto2" ng-options="tema.descripcion_tema for tema in temas" ng-model="folio.id_tema" ng-change="setIdTema(folio.id_tema)">
      <option value="" disabled="" class="texto2" selected="selected">Seleccione el tipo de solicitud</option>
      <option label="Agua potable y servicios hidráulicos" value="object:17">Agua potable y servicios hidráulicos</option>
      <option label="Asistencia social" value="object:20">Asistencia social</option>
      <option label="Construcciones y obras" value="object:21">Construcciones y obras</option>
      <option label="Protección civil" value="object:29">Protección civil</option>
      <option label="Seguridad pública y vialidad" value="object:33">Seguridad pública y vialidad</option>
      <option label="Servicios urbanos, limpia" value="object:35">Servicios urbanos, limpia</option>
      <option label="Chatarrización" value="object:43">Chatarrización</option></select>
  </div>
  <div>
    <h5 class="text-primary-light font-weight-bold margen3">Detalles de la solicitud</h5>
    <p class="texto2 margen3 text-muted text-gray-900">A continuación redacte su solicitud de manera clara y concisa, tratando de no omitir ningún dato que considere relevante para poder atender su petición:</p>
    <div>
      <textarea class="alinear5 margen3 text2" maxlength="1000"  id="detalles_solicitud"></textarea>
    </div>
    <p class="texto3">La descripción es obligatoria*</p>
  </div>
  <div class="row justify-content-center">
    <div class="col-12 col-md-10 col-lg-8">
      <hr class="linea-g">
    </div>
  </div>
  <div class="row justify-content-center">
    <div class="alinear4">
      <h5 class="text-primary-light font-weight-bold">Ubicación</h5>
      <div class="row">
        <div class="col-md-3">
          <div class="form-group">
            <label class="text-muted text-gray-900 text-md font-weight-bold mb-0">Número</label>
            <input restrict="reject" limit="5" class="form-control form-control-sm input-secondary ng-pristine ng-untouched ng-valid ng-empty ng-valid-maxlength" id="numero" name="codigo-postal" ng-change="buscaColoniasSolicitantes(folio.codigo_postal_solicitante)" maxlength="5">
          </div>
        </div>
        <div class="col-md-3">
          <div class="form-group">
            <label class="text-muted text-gray-900 text-md font-weight-bold mb-0">Calle</label>
            <input restrict="reject" limit="15" class="form-control form-control-sm input-secondary ng-pristine ng-untouched ng-valid ng-empty ng-valid-maxlength" id="calle" name="codigo-postal" ng-change="buscaColoniasSolicitantes(folio.codigo_postal_solicitante)" maxlength="9">
          </div>
        </div>
        <div class="col-md-3">
          <div class="form-group">
            <label class="text-muted text-gray-900 text-md font-weight-bold mb-0">Colonia</label>
            <input restrict="reject" limit="40" class="form-control form-control-sm input-secondary ng-pristine ng-untouched ng-valid ng-empty ng-valid-maxlength" id="colonia" name="codigo-postal" ng-change="buscaColoniasSolicitantes(folio.codigo_postal_solicitante)" maxlength="40">
          </div>
        </div>
        <div class="col-md-3">
          <div class="form-group">
            <label class="text-muted text-gray-900 text-md font-weight-bold mb-0">C.P.</label>
            <input restrict="reject" limit="5" class="form-control form-control-sm input-secondary ng-pristine ng-untouched ng-valid ng-empty ng-valid-maxlength" id="codigo-postal" name="codigo-postal" ng-change="buscaColoniasSolicitantes(folio.codigo_postal_solicitante)" maxlength="5">
          </div>
        </div>
      </div>
      <label class="text-muted text-gray-900 text-md">Referencias del lugar donde se solicita el servicio:</label><br>
      <textarea class="alinear5 margen3 text2" maxlength="1000" id="referencia_lugar_solicitud"></textarea>
    </div>
  </div>
  </div>
  </div>
  <div class="row justify-content-center">
    <div class="col-12 col-md-10 col-lg-8">
      <hr class="linea-g">
    </div>
  </div>
  <div class="row justify-content-center">
    <div class="col-11 col-md-10 col-lg-8 mb-4 mt-4">
      <h5 class="text-primary-light font-weight-bold">Datos del solicitante</h5>
      <div id="nombre-completo">
        <div class="row justify-content-center">
          <div class="col-md-4">
            <div class="form-group">
              <label for="nombre" class="text-muted text-gray-900 text-md font-weight-bold mb-0">Nombre (s)</label>
              <input type="text" class="form-control form-control-sm input-secondary ng-pristine ng-valid ng-empty ng-touched" id="nombre" placeholder="Ingresa tu nombre" ng-model="folio.nombre">
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group">
              <label for="primer-apellido" class="text-muted text-gray-900 text-md font-weight-bold mb-0">Primer apellido</label>
              <input type="text" class="form-control form-control-sm input-secondary ng-pristine ng-valid ng-empty ng-touched" id="primer-apellido" name="primer-apellido" placeholder="Ingresa tu apellido" ng-model="folio.ape_paterno">
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group">
              <label for="segundo-apellido" class="text-muted text-gray-900 text-md font-weight-bold mb-0">Segundo apellido</label>
              <input type="text" class="form-control form-control-sm input-secondary ng-pristine ng-valid ng-empty ng-touched" id="segundo-apellido" name="segundo-apellido" placeholder="Ingresa tu apellido" ng-model="folio.ape_materno">
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group">
              <label for="telefono" class="text-muted text-gray-900 text-md font-weight-bold mb-0">Teléfono/Celular</label>
              <input type="text" mask="99-9999-9999" restrict="reject" class="form-control form-control-sm input-secondary ng-pristine ng-untouched ng-valid ng-empty" id="telefono" name="telefono" ng-model="folio.telefono" placeholder="Teléfono">
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group">
              <label for="celular" class="text-muted text-gray-900 text-md font-weight-bold mb-0">Id Comité</label>
              <input type="text" mask="99-9999-9999" restrict="reject" class="form-control form-control-sm input-secondary ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required" id="celular" name="celular" ng-model="folio.celular" placeholder="55555555" required="">
            </div>
          </div>
        </div>
        <div class="row justify-content-center">
          <div class="col-12 col-md-10 col-lg-8">
            <hr class="linea-g">
          </div>
        </div>
        <div class="row justify-content-center">
          <h5 class="text-primary-light font-weight-bold">Imágen de respaldo</h5>
          <div class="col-11 col-md-10 col-lg-8 mb-0 mt-0 text-muted text-gray-900">
            <label>Puede adjuntar imagen para respaldar su solicitud</label>
          </div>
        </div>
        <div>
          <div class="form-group alinear6">

          </div>
        </div>
      </div>
      <div class="row justify-content-center">
        <div class="col-11 col-md-9 col-lg-8 mb-4 mt-4">
          <%--@declare id="file-upload"--%><label ngf-select="onSelected($files)" for="file-upload" class="btn boton">Subir archivo</label>
          <p><h5>Documentos cargados:</h5></p>
        </div>
        <div>
          <button type="button" class="btn boton" ng-click="createFolio()">Enviar solicitud</button>
        </div>
      </div>
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
<script src="/Integradora/ASCOVE-Project-master/web app/jss/main.js"></script>
</body>
</html>