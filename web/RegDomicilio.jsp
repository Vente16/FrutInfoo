<%-- 
    Document   : RegDomicilio
    Created on : 7/07/2017, 04:30:55 PM
    Author     : John Jairo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Domicilio</title>
         <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>  
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>  
        <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/css/bootstrapValidator.min.css"/>
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"> </script>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <script src="js/Prueba.js"></script>
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
              
                  <div style="margin-top: 100px">
                      <h2 style="text-align: center;">SOLICITAR DOMICILIO</h2><br><br>
                  </div>
              
            <form class="form-horizontal" id="RegNov" action="RegistrarDomicilio" method="post">
                
                <div class="form-group">
                    <label class="col-sm-2 control-label"><h4>Producto:</h4></label>
                    <div class="col-xs-10">
                        <input type="text" id="producto" name="producto" class="form-control" placeholder="Ingrese los productos deseados">
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-sm-2 control-label"><h4>Cantidad:</h4></label>
                    <div class="col-xs-10">
                        <input type="number" id="cantidad" name="cantidad" class="form-control">
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-sm-2 control-label" ><h4>Nombres:</h4></label>
                     <div class="col-xs-10">
                    <input type="text" id="nombre" name="nombres" class="form-control" placeholder="Ingrese sus nombres">
                     </div>
                </div>
                
                 <div class="form-group">
                     <label class="col-sm-2 control-label"><h4>Apellidos:</h4></label>
                     <div class="col-xs-10">
                    <input type="text" id="apellido" name="apellidos" class="form-control" placeholder="Ingrese sus apellidos">
                     </div>
                </div>
                
                <div class="form-group">
                    <label class="col-sm-2 control-label"><h4>Teléfono:</h4></label>
                    <div class="col-xs-10">
                        <input type="text"  id="telefono" name="telefono" class="form-control" placeholder="Ingrese su teléfono">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label"><h4>Celular:</h4></label>
                    <div class="col-xs-10">
                        <input type="text" id="celular" name="celular" class="form-control" placeholder="Ingrese su número celular">
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-sm-2 control-label"><h4>Dirección:</h4></label>
                    <div class="col-xs-10">
                        <input type="text" id="direccion" name="direccion" class="form-control" placeholder="Ingrese su direccion completa">
                    </div>
                </div><br>
              
                <button type="submit" class="btn btn-success">SOLICITAR</button>
            </form>
        </div>
          
           <%@include file="footer.jspf" %>
    </body>
</html>
