<%-- 
    Document   : RegisCliente
    Created on : 1/03/2017, 08:36:43 PM
    Author     : John Jairo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar insumo</title>  
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <script src="js/validacion2.js"></script>
       
    </head>
    <body>
        <%@include file="headerModulos.jspf" %><br>
        <main>
            <div class="container">
            <div style="margin-top: 100px">
                <h2 style="text-align: center;">Registro del Cliente</h2><br><br>
            </div>
                <div class="continer-propio">
                    <form data-toggle= "validator" class="form-horizontal" role= "form" action="RegCliente" method="post">
                 
                    <div class="form-group">    
                        <label class="col-sm-2 control-label" for="inputSuccess">
                            <span class="titulo">tipo de documento</span></label>
                            <div class="col-sm-12 col-md-4">
                                <select class="form-control" name="tipo_documento">
                                    <option>Cédula de Ciudadanía</option>
                                    <option>Tarjeta de Identidad</option>
                                    <option>Registro Civil </option>
                                    <option>Cédula de Extranjería</option>
                                    <option>Otros</option>
                                </select>
                            </div>
                    </div>

                    <div id="documentov" class="form-group">
                        <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Número de documento</span></label>
                        <div class="col-sm-12 col-md-4">
                            <input id="documento" type="text" class="form-control"  placeholder="Ingrese su número de documento"><br>
                            <span class="" id="validar"></span>
                        </div>
                    </div>
                    
                    <div  id="nombres" class="form-group">
                        <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Nombres</span></label>
                        <div class="col-sm-12 col-md-4">
                            <input  type="text" class="form-control" id="nombres" name="nombres"  placeholder="Ingrese los nombres del empleado"><br>
                            <span class="titulo"></span>
                        </div>
                    </div>
                    
                    <div id="apellidos" class="form-group">
                        <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo"><b>Apellidos</b></span></label>
                        <div class="col-sm-12 col-md-4">
                            <input  name="apellidos" type="text" class="form-control" id="apellidos" placeholder="Ingrese los apellidos del empleado"><br>
                        </div>
                    </div>
                   
                    <div  id="fecha" class="form-group">
                        <label  class="col-sm-2 control-label" for="inputSuccess"><span class="titulo"><b>Fecha de Nacimiento</b></span></label>
                        <div class="col-sm-12 col-md-4">
                            <input type="date" name="FechaNac" class="form-control" id="fecha"  placeholder="dd/mm/aa"><br>
                        </div>
                    </div>
                        
                        
                    <div id="emailv" class="form-group">
                        <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Email</span></label>
                        <div class="col-sm-12 col-md-4">
                            <input type="text" class="form-control" id="email" name="Email" placeholder="Ingrese su cuenta de correo electrónico">
                        </div>
                    </div>
                        

                    <div  id="municipio" class="form-group">
                        <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Municipio</span></label>
                        <div class="col-sm-12 col-md-4">
                            <input name="Municipio" type="text" class="form-control" id="municipio"  placeholder="Ingrese el Municipio donde actualmente vive"><br>
                        </div>
                    </div>
                
                    <div  id="direccion" class="form-group">   
                        <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Dirección</span></label>
                        <div class="col-sm-12 col-md-4">
                            <input  name="direccion" type="text" class="form-control" id="direccion" placeholder="Ingrese su Dirección completa"><br>
                        </div>
                    </div>
                
                    <div id="barrio" class="form-group">
                        <label class="col-sm-2 control-label" for="inputSuccess" ><span class="titulo">Barrio</span></label>
                        <div class="col-sm-12 col-md-4">
                            <input name="Barrio" type="text" class="form-control" id="barrio"  placeholder="Ingrese el barrio donde vive"><br>
                        </div>
                    </div>
                
                    <div id="telefono" class="form-group">
                        <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo"><b>Teléfono</b></span></label>
                        <div class="col-sm-12 col-md-4">
                            <input  name="telefono"  type="text" class="form-control" id="telefono"  placeholder="Ingrese su teléfono"><br>
                        </div>
                    </div>
                
                    <div id="celular" class="form-group">
                        <label  class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Celular</span></label>
                        <div class="col-sm-12 col-md-4">
                        <input name="celular"  type="text" class="form-control" id="celular"  placeholder="Ingrese su número"><br>
                        </div>
                    </div>
                
                
                    <div>
                        <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Membrecía</span></label>
                    <div class="col-sm-12 col-md-4">
                        <select class="form-control" name="membrecia">
                            <option>si</option>
                            <option>no</option>
                        </select>
                    </div>  
                    </div>
                    
                    <div class="form-group">
                        <div class="col-sm-12 col-md-4">
                            <button type="submit" class="btn btn-success">REGISTRAR</button>
                        </div>
                    </div>
                
            </form>
                    </div>
        </div>
        </main>
        <%@include file="footer.jspf" %>           
        <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/js/bootstrapValidator.min.js"></script>
        <script src="ValidarRegCli.js"></script> 
        <script src="js/pruebaValidacion.js"></script> -->


    </body>
</html>
