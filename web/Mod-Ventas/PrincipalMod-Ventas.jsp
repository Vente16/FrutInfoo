<%-- 
    Document   : PrincipalVentas
    Created on : 27/02/2017, 09:27:25 PM
    Author     : John Jairo
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
        
    </head>
    <body>
       
         <%@include file="../headerModulos.jspf" %>
         <div class="container">
           <div class="jumbotron">
        <div class="container">
          <h1 class="animated fadeInDown">¡Bienvenido(a) al área de ventas!</h1>
          <p>Aquí podrás ver toda la información, hacer registros de las ventas, ver registro de ventas, etc..</p>
          <p><a class="btn btn-primary btn-lg" role="button">Leer más</a></p>
        </div>
      </div>
         </div>
      <%@include file="../footer.jspf" %>
    </body>
</html>
