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
        <link rel="stylesheet" href="../css/bootstrap.css">
        <link rel="stylesheet" href="../css/estilos2.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
          <%@include file="../headerModulos.jspf"%>
        <h2 style="text-align: center;"><b>REGISTRAR NOVEDAD</b></h2>
       <h4 style="text-align: center;"><b>llene el formulario con los datos del empleado que desea registrarle la novedad.</b></h4><br><br>

       
              
               <form>
                <div class="container">
                                    <label class="form-control-label" for="index-form1-1-name"><span class="titulo">Nombres</span></label><br>
                                    <input type="text" class="form-control" name="name"required="" data-form-field="Name" id="index-form1-1-name" placeholder="Ingrese los nombres del empleado"><br>

                                     <labe2 class="form-control-label" for="index-form2-2-name"><span class="titulo"><b>Apellidos</b></span></labe2><br>
                                    <input type="text" class="form-control" name="name"required="" data-form-field="Name" id="index-form2-2-name" placeholder="Ingrese los apellidos del empleado"><br>

                                    <label class="form-control-label" for="index-form1-1-name"><span class="titulo">Documento de identificación</span></label><br>
                                        <input type="text" class="form-control" name="name"required="" data-form-field="Name" id="index-form1-1-name" placeholder="Ingrese el número de documento de identificación"><br>

                                    <div class="form-group">
                                      <label class="form-control-label" for="index-form-4-4name"><span class="titulo">Seleccione el tipo de documento</span></label>
                                         <select class="form-control">
                                            <option>Cédula de Ciudadanía(CC)</option>
                                            <option>Tarjeta de Identidad (TI)</option>
                                            <option>Registro Civil (RC)</option>
                                            <option>Cédula de Extranjería (CE)</option>
                                            <option>Otros</option>
                                      </select>
                                      </div>
                                      <label class="form-control">Descripción detallada de la novedad</label>
                                     <textarea name="" id="" cols="30" rows="10" class="form-control" placeholder="Escriba la descripcion detallada de la novedad"></textarea>

                                    <div class="form-group">
                                      <label class="form-control-label" for="index-form-4-4name"><span class="titulo">Seleccione la sede del empleado</span></label>
                                       <select class="form-control">
                                            <option>Envigado </option>
                                            <option>Itagüí</option>
                                            <option>Sabaneta</option>
                                            <option>Poblado</option>
                                            <option>Carrera 80</option>
                                            <option>Los Sauces</option>
                                            <option>Laureles</option>
                                            <option>Avenida Oriental</option>
                                            <option>Bello</option>
                                            <option>Belén</option>
                                      </select>
                                    </div>
                                  <label class="form-control-label" for="index-form1-1-name"><span class="titulo">Cargo</span></label>
                                    <input type="text" class="form-control" name="name"required="" data-form-field="Name" id="index-form1-1-name" placeholder="Ingrese el cargo del empleado"><br> 
                                    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#registrar">Registrar Novedad</button>             
              </form>
            </div><br><br><br><br>
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
        
        
        
         <%@include file="../footer.jspf" %>
        
        
        
        
     
    </body>
</html>
