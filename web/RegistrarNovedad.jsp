<%-- 
    Document   : RegistrarNovedad
    Created on : 02-mar-2017, 18:27:48
    Author     : User
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
        <script src="js/ValidacionRegNovedad.js"></script>
    </head>
    <body>
        <style>
            .containerNov{
                 border-radius: 5px;
                background-color: white;
                padding: 20px;
                width: 50%;
                margin: 0 auto;
                
            }
        </style>
        
        <%@include file="headerModulos.jspf"%><br><br>
        <h2 style="text-align: center;"><b>REGISTRAR NOVEDAD</b></h2>
        <h4 style="text-align: center;"><b>llene el formulario con los datos del empleado que desea registrarle la novedad.</b></h4><br><br>

        <div class="containerNov">
            <form id="RegNovedad" action="Novedades" method="post" name="formulario" >
                <div class="form-group">
                    <label class="form-control-label" for="index-form-4-4name"><span class="titulo">Novedad</span></label>
                    <select class="form-control" name="novedad">
                        <option>Incapacidad</option>
                        <option>Vacaciones</option>
                        <option>Permisos</option>
                        <option>Renuncia</option>
                    </select>
                </div>
                
                <label class="form-control-label" for="index-form1-1-name"><span class="titulo">Nombres</span></label><br>
                <input type="text" class="form-control" name="nom" placeholder="Ingrese los nombres del empleado"><br>

                <labe2 class="form-control-label" for="index-form2-2-name"><span class="titulo"><b>Apellidos</b></span></labe2><br>
                <input type="text" class="form-control" name="apell" data-form-field="Name" id="index-form2-2-name" placeholder="Ingrese los apellidos del empleado"><br>

                <label class="form-control-label" for="index-form1-1-name"><span class="titulo">Documento de identificación</span></label><br>
                <input type="text" class="form-control" name="doc" data-form-field="Name" id="index-form1-1-name" placeholder="Ingrese el número de documento de identificación"><br>

                <div class="form-group">
                    <label class="form-control-label" for="index-form-4-4name"><span class="titulo">Seleccione el tipo de documento</span></label>
                    <select class="form-control" name="tipos">
                        <option>Cédula de Ciudadanía(CC)</option>
                        <option>Tarjeta de Identidad (TI)</option>
                        <option>Registro Civil (RC)</option>
                        <option>Cédula de Extranjería (CE)</option>
                        <option>Otros</option>
                    </select>
                </div>
                
                <label >Descripción detallada de la novedad</label>
                <textarea name="descripcion" id="" cols="30" rows="10" class="form-control" placeholder="Escriba la descripcion detallada de la novedad"></textarea><br>

                <div class="form-group">
                    <label class="form-control-label" for="index-form-4-4name"><span class="titulo">Seleccione la sede del empleado</span></label>
                    <select class="form-control" name="sede">
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

            </form>
        </div><br><br>
        <div class="modal fade" id="registrar" role="dialog">
            <div class="modal-dialog">
                <!-- Cabecera del modal-->
               <div class="modal-content">
                    <div class="modal-header">
                        <div class="alert alert-success">
                            <strong>¡Éxito!</strong> Novedad registrada correctamente.
                        </div>
                    </div>
                    <!-- Footer del modal, dos botones, cerrrar y Acceder-->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>



        <%@include file="footerModulos.jspf" %>
             
    </body>
</html>
