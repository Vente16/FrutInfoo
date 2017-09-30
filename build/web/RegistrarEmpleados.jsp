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
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/js/bootstrapValidator.min.js"></script>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <script src="js/ValidacionRegEmpleados.js"></script>
        <script src="js/ValidacionBackendEmpleados.js"></script>
    </head>

    <body>
       <!-- <style>
            main{
                background-image: url(img/logo.png);
  
        </style>-->
        
    <%@include file="headerModulos.jspf"%><br>
    <main>
        <div class="containerForm">
        <div style="margin-top: 50px">
            <h2 style="text-align: center;"><b>Registro de empleados</b></h2><br><br>
        </div>

        <div class="continer-propio">
            <form class="form-horizontal" id="RegEmpleado" action="RegEmpleado" method="post">

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
                    <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Teléfono</span></label>
                    <div class="col-xs-10">
                        <input  type="text" class="form-control" id="telefono" name="telefono"  placeholder="Ingrese su teléfono"><br>
                        <span  id="validart"></span>
                    </div>
                </div>

                <div id="celularv" class="form-group">
                    <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo"><b>Celular</b></span></label>
                    <div class="col-xs-10">
                        <input  name="celular" type="text" class="form-control" id="celular" placeholder="Ingrese su número de celular"><br>
                        <span class="" id="validarc"></span>
                    </div>
                </div>

                <div  id="direccionv" class="form-group">
                    <label  class="col-sm-2 control-label" for="inputSuccess"><span class="titulo"><b>Dirección</b></span></label>
                    <div class="col-xs-10">
                        <input type="text" name="direccion" class="form-control" id="direccion"  placeholder="ingrese su dirección"><br>
                        <span class="" id="validard"></span>
                    </div>
                </div>

                <div  id="iniconv" class="form-group">
                    <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Inicio de contrato</span></label>
                    <div class="col-xs-10">
                        <input name="inicon" type="date" class="form-control" id="inicon"  placeholder=""><br>
                        <span class="" id="validarinicon"></span>
                    </div>
                </div>

                <div  id="finconv" class="form-group">
                    <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Fin de contrato</span></label>
                    <div class="col-xs-10">
                        <input  name="fincon" type="date" class="form-control" id="fincon" placeholder=""><br>
                        <span class="" id="validarfincon"></span>
                    </div>
                </div>
      
                     <div class="form-group">
                    <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Tipo de documento</span></label>
                    <div class="col-xs-10">
                        <select class="form-control" name="tipo">
                            <option></option>
                            <option>Cédula de Ciudadanía(CC)</option>
                            <option>Tarjeta de Identidad (TI)</option>
                            <option>Registro Civil (RC)</option>
                            <option>Cédula de Extranjería (CE)</option>
                            <option>Otros</option>
                        </select>
                    </div>
                </div>

                <div id="documentov" class="form-group">
                    <label  class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Número documento</span></label>
                    <div class="col-xs-10">
                        <input name="documento"  type="text" class="form-control" id="documento"  placeholder="Ingrese su número"><br>
                        <span class="" id="validardoc"></span>
                        <span class="help-block" id="docExit"></span>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Punto de venta</span></label>
                    <div class="col-xs-10">
                        <select class="form-control" name="puntoVenta">
                            <option></option>
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
                    <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Cargo</span></label>
                    <div class="col-xs-10">
                        <select class="form-control" name="cargo">
                            <option></option>
                            <option value="1">Administrador</option>
                            <option value="2">Mesero</option>
                            <option value="3">Cajero</option>
                            <option value="4">Mensajero</option>
                            <option value="5">Secretaria</option>
                            <option value="6">Director RRHH</option>
                        </select>
                    </div>
                </div><br>

                <div  id="fechanacv" class="form-group">
                    <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">fecha de nacimiento</span></label>
                    <div class="col-xs-10">
                        <input  name="fechanac" type="date" class="form-control" id="fechanac" placeholder=""><br>
                        <span class="" id="validarfechanac"></span>
                    </div>
                </div>

                <div id="emailv" class="form-group">
                    <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo"><b>Email</b></span></label>
                    <div class="col-xs-10">
                        <input  name="email" type="text" class="form-control" id="email" placeholder="Ingrese su correo electrónico"><br>
                        <span class="" id="validare"></span>
                    </div>
                </div>
                <br>

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