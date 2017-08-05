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
        <title>Registrar Cliente</title>  
            <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
            <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css"/>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
            <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/js/bootstrapValidator.min.js"></script>
            <link rel="stylesheet" href="css/bootstrap.css">
            <link rel="stylesheet" href="css/estilos2.css">
            <script src="js/ValidacionRegCliente.js"></script>
       
    </head>
    <body>

        <%@include file="headerModulos.jspf" %><br>
        <main>
            <div class="containerForm">
            <div style="margin-top: 100px">
                <h2 style="text-align: center;">Registro del Cliente</h2><br><br>
            </div>
                <div class="continer-propio">
                 <form class="form-horizontal" id="RegistrarCliente" action="RegCliente" method="post">
                 
                    <div class="form-group">    
                        <label class="col-sm-2 control-label" for="inputSuccess">
                            <span class="titulo">Tipo documento</span></label>
                            <div class="col-xs-10">
                                <select class="form-control" name="tipo_documento">
                                    <option></option>
                                    <option>Cédula de Ciudadanía</option>
                                    <option>Tarjeta de Identidad</option>
                                    <option>Registro Civil </option>
                                    <option>Cédula de Extranjería</option>
                                    <option>Otros</option>
                                </select>
                            </div>
                    </div>

                    <div id="documentov" class="form-group">
                        <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Número documento</span></label>
                        <div class="col-xs-10">
                            <input id="documento" type="text" class="form-control" name="documento"  placeholder="Ingrese su número de documento"><br>
                            <span class="" id="validar"></span>
                        </div>
                    </div>
                    
                    <div  id="nombresv" class="form-group">
                        <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Nombres</span></label>
                        <div class="col-xs-10">
                            <input  type="text" class="form-control" id="nombres" name="nombres"  placeholder="Ingrese los nombres del empleado"><br>
                            <span  id="validarn"></span>
                        </div>
                    </div>
                    
                    <div id="apellidosv" class="form-group">
                        <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo"><b>Apellidos</b></span></label>
                        <div class="col-xs-10">
                            <input  name="apellidos" type="text" class="form-control" id="apellidos" placeholder="Ingrese los apellidos del empleado"><br>
                            <span class="" id="validara"></span>
                        </div>
                    </div>
                   
                    <div  id="fechav" class="form-group">
                        <label  class="col-sm-2 control-label" for="inputSuccess"><span class="titulo"><b>Fecha de Nacimiento</b></span></label>
                        <div class="col-xs-10">
                            <input type="date" name="FechaNac" class="form-control" id="fecha"  placeholder="dd/mm/aa"><br>
                            <span class="" id="validarf"></span>
                        </div>
                    </div>
                        
                        
                    <div id="emailv" class="form-group">
                        <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Email</span></label>
                        <div class="col-xs-10">
                            <input type="text" class="form-control" id="email" name="Email" placeholder="Ingrese su cuenta de correo electrónico">
                            <span class="" id="validare"></span>
                        </div>
                    </div>
                        

                    <div  id="municipiov" class="form-group">
                        <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Municipio</span></label>
                        <div class="col-xs-10">
                            <input name="Municipio" type="text" class="form-control" id="municipio"  placeholder="Ingrese el Municipio donde actualmente vive"><br>
                            <span class="" id="validarm"></span>
                        </div>
                    </div>
                
                    <div  id="direccionv" class="form-group">   
                        <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Dirección</span></label>
                        <div class="col-xs-10">
                            <input  name="direccion" type="text" class="form-control" id="direccion" placeholder="Ingrese su Dirección completa"><br>
                            <span class="" id="validard"></span>
                        </div>
                    </div>
                
                    <div id="barriov" class="form-group">
                        <label class="col-sm-2 control-label" for="inputSuccess" ><span class="titulo">Barrio</span></label>
                        <div class="col-xs-10">
                            <input name="Barrio" type="text" class="form-control" id="barrio"  placeholder="Ingrese el barrio donde vive"><br>
                            <span class="" id="validarb"></span>
                        </div>
                    </div>
                
                    <div id="telefonov" class="form-group">
                        <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo"><b>Teléfono</b></span></label>
                        <div class="col-xs-10">
                            <input  name="telefono"  type="text" class="form-control" id="telefono"  placeholder="Ingrese su teléfono"><br>
                            <span class="" id="validart"></span>
                        </div>
                    </div>
                
                    <div id="celularv" class="form-group">
                        <label  class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Celular</span></label>
                        <div class="col-xs-10">
                        <input name="celular"  type="text" class="form-control" id="celular"  placeholder="Ingrese su número"><br>
                        <span class="" id="validarc"></span>
                        </div>
                    </div>
                
                 <div class="form-group">    
                        <label class="col-sm-2 control-label" for="inputSuccess">
                            <span class="titulo">Membrecia</span></label>
                            <div class="col-xs-10">
                                <select class="form-control" name="cumple">
                                    <option></option>
                                    <option>Si</option>
                                    <option>No</option>
                                </select>
                            </div>
                    </div><br><br><br>

                    
                    <div class="form-group">
                        <div class="col-xs-8">
                            <button type="submit" class="btn btn-success">REGISTRAR</button>
                        </div>
                    </div>
                
            </form>
                    </div>
        </div>
        </main><br>
        <%@include file="footer.jspf" %>           
    </body>
</html>
