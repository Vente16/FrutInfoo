<%-- 
    Document   : IndexInsumo
    Created on : 26-feb-2017, 10:43:00
    Author     : adsi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="../css/bootstrap.css">
        <link rel="stylesheet" href="../css/estilos2.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            
            body{
                
                background-image: url(img/imagenprincipal.jpg);
               
            }
            
        </style>
   
    </head>
    <body>
        
        <body>
            
        <%@include file="../headerModulos.jspf"%>
        
        <div class="jumbotron  " style="background: rgba(255,0,0,0);">
        <div class="container">
            <h1 class="" style="color:white">¡Bienvenido(a) al área de insumos!</h1>
            <a style="color:white" > Aquí podrás ver toda la información, hacer registros sobre los insumos de la empresa, ver solicitudes de insumos, etc.. </a>
            <br>
            <br>
          <p><a class="btn btn-primary btn-lg" role="button">Leer más</a></p>
        </div>
      </div>
        
        <%@include file="../footer.jspf" %>
         
    </body>
      
    </body>
</html>
