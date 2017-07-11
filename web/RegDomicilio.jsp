<%-- 
    Document   : RegDomicilio
    Created on : 7/07/2017, 04:30:55 PM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Domicilio</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
         <style>
            div.container {
                width: 50%;
                
            }
            h1{
                text-align: center;
                padding-top: 20px;
                
            }
            </style>
    	  <%@include file="headerModulos.jspf" %>
          <div class="container">
            <h1><b>SOLICITAR DOMICILIO</b></h1><br>
            <form action="RegistrarDomicilio" method="post">
          <div class="form-group">
                    <label><h4>Producto:</h4></label>
                    <input type="text" name="producto" class="form-control" placeholder="Ingrese los productos deseados">
                </div>
                <div class="form-group">
                    <label><h4>Cantidad:</h4></label>
                    <input type="number" name="cantidad" class="form-control">
                </div>
                <div class="form-group">
                    <label><h4>Nombres:</h4></label>
                    <input type="text" name="nombres" class="form-control" placeholder="Ingrese sus nombres">
                </div>
                 <div class="form-group">
                    <label><h4>Apellidos:</h4></label>
                    <input type="text" name="apellidos" class="form-control" placeholder="Ingrese sus apellidos">
                </div>
                 <div class="form-group">
                    <label><h4>Teléfono:</h4></label>
                    <input type="text" name="telefono" class="form-control" placeholder="Ingrese su teléfono">
                </div>
                <div class="form-group">
                    <label><h4>Celular:</h4></label>
                    <input type="text" name="celular" class="form-control" placeholder="Ingrese su número celular">
                </div>
                 <div class="form-group">
                    <label><h4>Municipio:</h4></label>
                    <input type="text" name="municipio" class="form-control" placeholder="Ingrese el municipio en el cual vive">
                </div>
                 <div class="form-group">
                    <label><h4>Dirección:</h4></label>
                    <input type="text" name="direccion" class="form-control" placeholder="Ingrese su direccion completa">
                 </div><br>
              
                <button type="submit" class="btn btn-success">SOLICITAR</button>
            </form>
        </div>
          
           <%@include file="footer.jspf" %>
    </body>
</html>
