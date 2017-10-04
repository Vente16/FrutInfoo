<%-- 
    Document   : index
    Created on : 27-feb-2017, 10:54:43
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina de Error</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <style>
          body  {
                   background:#ffbdbd;
                
            }
        </style>
         <%@include file="headerModulos.jspf"%>
        
        
         <div class="container Cont">
             <div class="jumbotron alert alert-danger">
                 <div class="text-center"><i class="fa fa-5x exclamation-triangle" style="color:#d9534f;"></i></div>
                 <h1>Error 400</h1>
                 <p>Solicitud Incorrecta</p>
                 <p>Ha ocurrido una falla en la ejecución de las operaciones</p>
             </div>
         </div><br>

        
 
        
        
      <%@include file="footerModulos.jspf"%>  
    </body>
</html>
