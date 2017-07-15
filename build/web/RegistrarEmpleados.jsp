<%-- 
    Document   : RegistrarEmpleados
    Created on : 26/02/2017, 09:15:36 AM
    Author     : adsi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar empleados</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/js/bootstrapValidator.min.js"></script>
        <script src="js/validacionFormEmpleado.js"></script>
    </head>

    <body>
        <style>
                     div.container {
                       width: 50%;
                
                   }
        </style>
    <%@include file="headerModulos.jspf"%>

    <div class="container">
        <div style="margin-top: 100px">
            <h2 style="text-align: center;">Registro de empleados</h2><br><br>
        </div>

        <div class="continer-propio">
            <form class="form-horizontal" role= "form" action="RegEmpleado" method="post">

                <div id="nombrev" class="form-group">    
                    <label class="col-sm-2 control-label" for="inputSuccess">
                    <span class="titulo">Nombre</span></label>
                    <div class="col-xs-10">
                        <input id="nombre" type="text" class="form-control" name="nombre"  placeholder="Ingrese su nombre"><br>
                        <span class="" id="validarn"></span>
                    </div>
                </div>

                <div id="apellidov" class="form-group">
                    <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Apellido</span></label>
                    <div class="col-xs-10">
                        <input id="apellido" type="text" class="form-control" name="apellido"  placeholder="Ingrese su apellido"><br>
                        <span class="" id="validara"></span>
                    </div>
                </div>

                <div  id="telefonov" class="form-group">
                    <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Telefono</span></label>
                    <div class="col-xs-10">
                        <input  type="text" class="form-control" id="telefono" name="telefono"  placeholder="Ingrese su telefono"><br>
                        <span  id="validart"></span>
                    </div>
                </div>

                <div id="celularv" class="form-group">
                    <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo"><b>Celular</b></span></label>
                    <div class="col-xs-10">
                        <input  name="celular" type="text" class="form-control" id="celular" placeholder="Ingrese los apellidos del empleado"><br>
                        <span class="" id="validarc"></span>
                    </div>
                </div>

                <div  id="direccionv" class="form-group">
                    <label  class="col-sm-2 control-label" for="inputSuccess"><span class="titulo"><b>Direccion</b></span></label>
                    <div class="col-xs-10">
                        <input type="text" name="FechaNac" class="form-control" id="direccion"  placeholder="ingrese su direccion"><br>
                        <span class="" id="validard"></span>
                    </div>
                </div>


                <div id="disponibilidadv" class="form-group">
                    <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Disponibilidad</span></label>
                    <div class="col-xs-10">
                        <input type="text" class="form-control" id="disponibilidad" name="disponibilidad" placeholder="Ingrese su cuenta de correo electrónico">
                        <span class="" id="validardis"></span>
                    </div>
                </div>


                <div  id="iniconv" class="form-group">
                    <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Inicio de contrato</span></label>
                    <div class="col-xs-10">
                        <input name="inicon" type="date" class="form-control" id="inicon"  placeholder="Ingrese el Municipio donde actualmente vive"><br>
                        <span class="" id="validarinicon"></span>
                    </div>
                </div>

                <div  id="finconv" class="form-group">   
                    <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Fin de contrato</span></label>
                    <div class="col-xs-10">
                        <input  name="fincon" type="date" class="form-control" id="fincon" placeholder="Ingrese su Dirección completa"><br>
                        <span class="" id="validarfincon"></span>
                    </div>
                </div>

                <div id="horainiv" class="form-group">
                    <label class="col-sm-2 control-label" for="inputSuccess" ><span class="titulo">Hora inicio</span></label>
                    <div class="col-xs-10">
                        <input name="horaini" type="text" class="form-control" id="horaini"  placeholder="Ingrese el barrio donde vive"><br>
                        <span class="" id="validarhoraini"></span>
                    </div>
                </div>

                <div id="horasalv" class="form-group">
                    <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo"><b>Hora salida</b></span></label>
                    <div class="col-xs-10">
                        <input  name="horasal"  type="text" class="form-control" id="horasal"  placeholder="Ingrese su teléfono"><br>
                        <span class="" id="validarhorasal"></span>
                    </div>
                </div>

                <div id="documentov" class="form-group">
                    <label  class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Documento de identidad</span></label>
                    <div class="col-xs-10">
                        <input name="documento"  type="text" class="form-control" id="documento"  placeholder="Ingrese su número"><br>
                        <span class="" id="validardoc"></span>
                    </div>
                </div>


                <div class="form-group">
                    <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Tipo de documento</span></label>
                    <div class="col-xs-10">
                        <select class="form-control" name="tipo">
                            <option>Cédula de Ciudadanía(CC)</option>
                            <option>Tarjeta de Identidad (TI)</option>
                            <option>Registro Civil (RC)</option>
                            <option>Cédula de Extranjería (CE)</option>
                            <option>Otros</option>
                        </select>
                    </div>  
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Punto de venta</span></label>
                    <div class="col-xs-10">
                        <select class="form-control" name="tipo">
                            <option value="1">Envigado</option>
                            <option value="2">Itagui</option>
                            <option value="3">Sabaneta</option>
                            <option value="4">Poblado</option>
                            <option value="5">Carrera 80</option>
                            <option value="6">Los Sauces</option>
                            <option value="7">Laureles</option>
                            <option value="8">Avenida Oriental</option>
                            <option value="9">Bello</option>
                            <option value="10">Belén</option>
                        </select>
                    </div>  
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Tipo de documento</span></label>
                    <div class="col-xs-10">
                        <select class="form-control" name="tipo">
                            <option value="1">Administrador</option>
                            <option value="2">Mesero</option>
                            <option value="3">Cajero</option>
                            <option value="4">Mensajero</option>
                            <option value="5">Secretaria</option>
                            <option value="6">Director RRHH</option>
                        </select>
                    </div>  
                </div>

                <div  id="fechanacv" class="form-group">   
                    <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">fecha de naciemiento</span></label>
                    <div class="col-xs-10">
                        <input  name="fechanac" type="date" class="form-control" id="fechanac" placeholder="Ingrese su Dirección completa"><br>
                        <span class="" id="validarfechanac"></span>
                    </div>
                </div>

                <div id="emailv" class="form-group">
                    <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo"><b>Email</b></span></label>
                    <div class="col-xs-10">
                        <input  name="email" type="text" class="form-control" id="email" placeholder="Ingrese los apellidos del empleado"><br>
                        <span class="" id="validare"></span>
                    </div>
                </div>
                <br><br><br>

                <div class="form-group">
                    <div class="col-xs-8">
                        <button type="submit" class="btn btn-success">REGISTRAR</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    </body>
</html>