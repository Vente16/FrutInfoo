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
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <script src="js/validacionFormDomicilio.js"></script>
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
              
            <form class="form-horizontal" action="RegistrarDomicilio" method="post">
                
                <div id="productov" class="form-group">
                    <label class="col-sm-2 control-label">
                        <span class="titulo"><h4>Producto:</h4></span></label>
                    <div class="col-xs-10">
                        <input type="text" id="producto" name="producto" class="form-control" placeholder="Ingrese los productos deseados">
                        <span class="validarp"></span>
                    </div>
                </div>

                <div  id="cantidadv" class="form-group">
                    <label class="col-sm-2 control-label"><span class="titulo"><h4>Cantidad:</h4></span></label>
                    <div class="col-xs-10">
                        <input type="number" id="cantidad" name="cantidad" class="form-control">
                        <span class=""></span>
                    </div>
                </div>
                
                <div id="nombrev" class="form-group">
                    <label class="col-sm-2 control-label" ><span class="titulo"><h4>Nombres:</h4></span></label>
                     <div class="col-xs-10">
                    <input type="text" id="nombre" name="nombres" class="form-control" placeholder="Ingrese sus nombres">
                    <span class="validarn"></span>
                     </div>
                </div>
                
                 <div  id="apellidov" class="form-group">
                     <label class="col-sm-2 control-label"><span class="titulo"><h4>Apellidos:</h4></span></label>
                     <div class="col-xs-10">
                    <input type="text" id="apellido" name="apellidos" class="form-control" placeholder="Ingrese sus apellidos">
                    <span class="validara"></span>
                     </div>
                </div>
                
                <div  id="telefonov" class="form-group">
                    <label class="col-sm-2 control-label"><span class="titulo"><h4>Teléfono:</h4></span></label>
                    <div class="col-xs-10">
                        <input type="text"  id="telefono" name="telefono" class="form-control" placeholder="Ingrese su teléfono">
                        <span class="validart"></span>
                    </div>
                </div>

                <div id="celularv" class="form-group">
                    <label class="col-sm-2 control-label"><span class="titulo"><h4>Celular:</h4></span></label>
                    <div class="col-xs-10">
                        <input type="text" id="celular" name="celular" class="form-control" placeholder="Ingrese su número celular">
                        <span class="validarc"></span>
                    </div>
                </div>
                
                <div id="direccionv" class="form-group">
                    <label class="col-sm-2 control-label"><span><h4>Dirección:</h4></span></label>
                    <div class="col-xs-10">
                        <input type="text" id="direccion" name="direccion" class="form-control" placeholder="Ingrese su direccion completa">
                        <span class="validard"></span>
                    </div>
                </div><br>
              
                <button type="submit" class="btn btn-success">SOLICITAR</button>
            </form>
        </div>
          
           <%@include file="footer.jspf" %>
    </body>
</html>
