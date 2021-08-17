<%--
  Created by IntelliJ IDEA.
  User: villa
  Date: 12/08/2021
  Time: 11:09 a. m.
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
    <title>Gestion de Solicitudes</title>
</head>
<body class="text-center fondo texto">
<form>
    <div class="any">
        <img src="<%=context%>/assets/img/logo_poder_ejecutivo_2018-2024_25.jpg" class="izquierda" alt="No encontrado">
        <img src="<%=context%>/assets/img/image_750x_5e93e4dd3fa46.jpg" class="derecha" alt = "No Encontrado">
        <h1>ASCOVE</h1>
        <h2>Atención de Solicitudes de Comités Vecinales</h2>
        <h4>Gestión de Solicitudes de Comités</h4>
    </div>
    <div class="alinear">
        <a type="button" class="btn boton" href="<%=context%>/views/CrearSolicitud.jsp"></i>Nueva solicitud</a>
        <input  restrict="reject" class="ng-pristine ng-untouched ng-valid ng-empty" id="numSolicitud" placeholder="# Solicitud">
        <button class="btn boton" type="button">Buscar</button>
    </div>
    <div class="alinear3 texto2">
        <table class="table table2">
            <thead class="table-dark">
            <tr>
                <th># Solicitud</th>
                <th>Servicio solicitado</th>
                <th>Descripción</th>
                <th>Estatus</th>
                <th>Comentarios</th>
                <th>Acción</th>
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
                    <td>
                        <c:if test="${ game.status == 1 }">
                            <span class="badge rounded-pill bg-success">Activo</span>
                        </c:if>
                        <c:if test="${ game.status == 0 }">
                            <span class="badge rounded-pill bg-danger">Inactivo</span>
                        </c:if>
                    </td>
                    <td>
                        <c:if test="${ game.status == 1 }">
                            <form action="${context}/getGame" method="POST" style="display: inline;">
                                <input type="hidden" name="action" value="getUserById">
                                <input type="hidden" name="id" value="${ game.idGame }">
                                <button type="submit" class="btn btn-outline-primary">Modificar</button>
                            </form>
                        </c:if>
                        <c:if test="${ game.status == 0 }">
                            <button id="btn-details-${ status.count }" data-code="${ game.idGame }" type="button" class="btn btn-outline-info" data-bs-toggle="modal" data-bs-target="#details"><i class="fas fa-info-circle"></i> Detalles</button>
                        </c:if>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</form>



<script src="${context}/assets/jquery-3.6.0.min.map" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
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