<%-- 
    Document   : InformeEmplados_admin
    Created on : 13/04/2017, 01:58:18 AM
    Author     : oscar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Informe de Empleados</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="headerModulos.jspf" %>
        <div class="container">
            <div class="container">

                <h2 style="text-align: center;">Informe de empleados</h2>
                <p style="text-align: center;">Consulte aquí todo lo relacionado con los empleados.</p>
                <input type="text" class="form-control" placeholder="Ingrese el número de documento del empleado"><br>
                <button class="btn btn-primary">Buscar</button>
                <br><br>
                <div class="container">
          <div class="jumbotron alert alert-primary">
              <h3>Haga click aquí para generar el informe de empleados</h3>
              <a href="InforEmpleados" target="_blank"><button class="btn btn-success">Generar</button></a>
          </div>
      </div>
       <%@include file="footerModulos.jspf" %>
    </body>
</html>
