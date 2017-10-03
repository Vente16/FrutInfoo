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
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="headerModulos.jspf"%>
        <style>
         body{
                  background:#a6dea6;
                
           }
        </style>

        <div class="container suc">
            <div class="jumbotron alert alert-success">
                <div class="text-center"><i class="fa fa-5x check-square-o" style="color:green;"></i></div>
                <h1>Registró correctamente!</h1>
                <p>Solicitud Correcta</p>
                <p>Operaciones realizadas con éxito.</p>
            </div>
        </div><br>





        <%@include file="footerModulos.jspf"%>   
    </body>
</html>
