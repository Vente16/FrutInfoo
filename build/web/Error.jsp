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
        <title>Error</title>
         <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <style>
            h1{
                   background:none;
                
            }
        </style>
         <%@include file="headerModulos.jspf"%>
        
        
      <div class="container Cont">
          <div class="jumbotron alert alert-danger">
              <h1>Error</h1>
              <p>Ha ocurrido una falla en la ejecución de las operaciones</p>
          </div>
      </div><br><br><br><br>

        
 
        
        
      <%@include file="footerModulos.jspf"%>  
    </body>
</html>
