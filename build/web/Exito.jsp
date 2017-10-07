<%-- 
    Document   : Exito
    Created on : 13/04/2017, 06:53:28 PM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Operacion Éxitosa</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <link rel="stylesheet" href="css/TituloExito.css">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="headerModulos.jspf"%>
        <style>
         body{
               <%--   background:#a6dea6;--%>
                  background-image: url("img/ManzanaExito.jpg");
                
           }
        </style>

        <div class="container suc">
            <div class="jumbotron alert alert-success">
                <div class="text-center"><img src="img/exito.png" class="img-circle" width="160" ></div>
                <h1 class="titulo">¡ Registró correctamente. !</h1>
                <h3>Operacion realizada con éxito.</h3><br><br>
                <button type="button" class="btn btn-outline btn-success" onclick="history.go(-1); return false;"><span class="glyphicon glyphicon-circle-arrow-left"></span>Volver</button>
            </div>
        </div><br>





        <%@include file="footerModulos.jspf"%>   
    </body>
</html>
