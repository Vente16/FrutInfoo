<%-- 
    Document   : RegistrarNovedad
    Created on : 02-mar-2017, 18:27:48
    Author     : Jhon Jairo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar novedad</title>
            <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
            <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css"/>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
            <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/js/bootstrapValidator.min.js"></script>
            <link rel="stylesheet" href="css/bootstrap.css">
            <link rel="stylesheet" href="css/estilos2.css">
            <script src="js/ValidacionRegistrarNovedad.js"></script>
    </head>
    <body> 
        <%@include file="headerModulos.jspf"%><br>
        <main>
        <div class="containerForm">
            <h2 style="text-align: center;"><b>REGISTRAR NOVEDAD</b></h2><br><br><br>
            <form id="Novedad" action="Novedades" method="post" name="formulario" >
                 <div class="form-group">
                    <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Novedad</span></label>
                    <div class="col-xs-10">
                        <select class="form-control" name="novedad">
                            <option>Incapacidad</option>
                            <option>Vacaciones</option>
                            <option>Permisos</option>
                            <option>Renincia</option>
                            <option>Otros</option>
                        </select>
                    </div><br>
                 </div><br>
                 
                <div id="nombrev" class="form-group">
                    <label class="col-sm-2 control-label" for="inputSuccess">
                    <span class="titulo">Nombre</span></label>
                    <div class="col-xs-10">
                        <input id="nombre" type="text" class="form-control" name="nombre"  placeholder="Ingrese los nombres del empleado"><br>
                        <span class="" id="validarn"></span>
                    </div>
                </div><br>
                
                <div id="nombrev" class="form-group">
                    <label class="col-sm-2 control-label" for="inputSuccess">
                    <span class="titulo">Apellido</span></label>
                    <div class="col-xs-10">
                        <input id="nombre" type="text" class="form-control" name="apellido"  placeholder="Ingrese los apellidos del empleado"><br>
                        <span class="" id="validarn"></span>
                    </div>
                </div><br>
                
                 <div id="nombrev" class="form-group">
                    <label class="col-sm-2 control-label" for="inputSuccess">
                    <span class="titulo">número Documento</span></label>
                    <div class="col-xs-10">
                        <input id="nombre" type="text" class="form-control" name="documento"  placeholder="Ingrese el número de documento de identificación"><br>
                        <span class="" id="validarn"></span>
                    </div><br>
                </div><br>
                
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Documento</span></label>
                    <div class="col-xs-10">
                        <select class="form-control" name="tipos">
                            <option>Cédula de ciudadania</option>
                            <option>Tarjeta de Identidad</option>
                            <option>Registro Civil</option>
                            <option>Cedula de Extranjeria</option>
                            <option>Otros</option>
                        </select><br>
                    </div><br>
                 </div><br>
                 
                
                <div class="form-group">
                    <label class="col-sm- control-label">Descripción novedad</label>
                         <textarea name="descripcion"  cols="" rows="4" class="form-control" placeholder="Escriba la descripcion detallada de la novedad"></textarea>
                    </div><br>
                    
                <div class="form-group">
                    <label class="form-control-label" for="index-form-4-4name"><span class="titulo">Sede del empleado</span></label>
                    <select class="form-control" name="sede">
                        <option></option>
                        <option value="1">Envigado </option>
                        <option value="2">Itagüí</option>
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

                <div class="form-group">
                    <label class="form-control-label" for="index-form-4-4name"><span class="titulo">Cargo</span></label>
                    <select class="form-control" name="cargo">
                        <option></option>
                        <option value="1">Administrador</option>
                        <option value="2">Mesero</option>
                        <option value="3">Cajero</option>
                        <option value="4">Mensajero</option>
                        <option value="5">Secretaria</option>
                        <option value="6">Director de recursos humanos</option>
                    </select>
                </div>
                <br> 
                <button type="submit" class="btn btn-success">Registrar Novedad</button> 

          
        </div>

        </main><br>

        <%@include file="footerModulos.jspf" %>
             
    </body>
</html>
