<%--
  Created by IntelliJ IDEA.
  User: villa
  Date: 16/08/2021
  Time: 10:11 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String context = request.getContextPath(); %>
<html lang="en">
<head>
    <link rel="shortcut icon" href="<%=context%>/assets/img/logo_poder_ejecutivo_2018-2024_25.jpg">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Lucía Zamudio, Julio Gutierrez, Isaac Galindo, Gonzalez Fernanda, Solís Pablo">
    <meta name="generator" content="ASCOVE">
    <link rel="stylesheet" href="<%=context%>/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=context%>/assets/css/styles.css">
    <title>Generar Solicitud</title>
</head>
<body class="text-center fondo texto">
<form>
    <div class="any">
        <img src="<%=context%>/assets/img/logo_poder_ejecutivo_2018-2024_25.jpg" class="izquierda" alt="No encontrado">
        <img src="<%=context%>/assets/img/image_750x_5e93e4dd3fa46.jpg" class="derecha" alt = "No Encontrado">
        <h1>ASCOVE</h1>
        <h2>Atención de Solicitudes de Comités Vecinales</h2>
        <br>
        <h4>-Generar Solicitud-</h4>
    </div>
</form>
<form class="alinear texto">
    <div class="margen3">
        <h5 class="text-primary-light font-weight-bold">Selecciona el tipo de servicio que necesitas</h5>
        <select>
            <option value="" disabled="" selected="selected">Servicios</option>
            <option label="Agua potable y servicios hidráulicos" value="object:17">Agua potable y servicios hidráulicos</option>
            <option label="Asistencia social" value="object:20">Asistencia social</option>
            <option label="Construcciones y obras" value="object:21">Construcciones y obras</option>
            <option label="Protección civil" value="object:29">Protección civil</option>
            <option label="Seguridad pública y vialidad" value="object:33">Seguridad pública y vialidad</option>
            <option label="Servicios urbanos, limpia" value="object:35">Servicios urbanos, limpia</option>
            <option label="Chatarrización" value="object:43">Chatarrización</option></select>
    </div>
    <div>
        <h5 class="text-primary-light font-weight-bold">Detalles de la solicitud</h5>
        <p text-muted text-gray-900>A continuación redacte su solicitud de manera clara y concisa,
            tratando de no omitir ningún dato que considere relevante para poder atender su petición:</p>
        <textarea class="alinear5 margen3 texto2" maxlength="1000"  id="detalles_solicitud"></textarea>
    </div>
    <p class="texto3">La descripción es obligatoria*</p>
    <div>
        <div class="margen3">
            <h5 class="text-primary-light font-weight-bold">Ubicación</h5>
            <label >Calle</label>
            <input restrict="reject" limit="5" id="numero" name="codigo-postal" ng-change="buscaColoniasSolicitantes(folio.codigo_postal_solicitante)" maxlength="5">
            <label >Número</label>
            <input restrict="reject" limit="15" id="calle" name="codigo-postal" ng-change="buscaColoniasSolicitantes(folio.codigo_postal_solicitante)" maxlength="9">
        </div>
    </div>
    <div>
        <p text-muted text-gray-900 class="texto" >Referencias del lugar donde se solicita el servicio:</p>
        <textarea class="alinear5 margen3 texto2" maxlength="1000"  id="referencia_solicitud"></textarea>
    </div>
    <div class="alinear margen6 texto2 table3">
        <h5 class="text-primary-light font-weight-bold margen3">Datos del solicitante</h5>
        <table class="table margen3">
            <thead class="table-dark">
            <tr>
                <th># Comité</th>
                <th>Colonia</th>
                <th>Nombre Completo</th>
                <th>Teléfono</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${ listSolicitud }" var="game" varStatus="status">
                <tr>
                    <td>${ status.count }</td>
                    <td>${ game.nameGame }</td>
                    <td>${ game.date_premiere }</td>
                    <td>${ game.imgGame }</td>
                    <td>${ game.idGame.nameCategory}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div >
        <div class="col-13 col-md-9 col-lg-8 mb-4 mt-4 margen6 alinear4">
            <label>Imagen:</label>
            <input class="form-control" type="file" name="imgGame" />
        </div>
    </div>
    <div class="margen7">
        <button type="button" class="btn boton" ng-click="createFolio()">Enviar solicitud</button>
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
</body>
</html>