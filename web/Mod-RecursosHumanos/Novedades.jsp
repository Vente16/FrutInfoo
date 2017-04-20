


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novedades</title>
        <link rel="stylesheet" href="../css/bootstrap.css">
        <link rel="stylesheet" href="../css/estilos2.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>


    <body>

        <%@include file="../headerModulos.jspf" %> <br><br>

        <div class="container">
                
            <select class="form-control">
                <option>Filtrar novedad</option>
                <option>Incapacidades</option>
                <option>Permisos</option>
                <option>Vacaciones</option>
                <option>Renuncias</option>
                <option>Todas</option>

            </select><br>
            <label class="form-control-label" for="index-form1-1-name" class="label"><span class="titulo">Documento de identifición</span></label>
            <input type="text" name="" class="form-control" placeholder="Ingrese el documento de identificación del empleado">

            <br> <button type="button" class="btn btn-success">Consultar</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="button" value="Registrar Novedad" onClick="location.href = 'RegistrarNovedad.jsp'" class="btn btn-primary" />

            <small class="mbr-section-subtitle"></small>
            <br><br><br><br>

        </div>

    </div>

    <br>
    <div class="container">

        <div style="text-align:center">
            <h2>NOVEDADES</h2>
            <h4>Estas son todas las actividades relacionadas con  los empleados ya sean incapacidades, vacaciones, etc..</h4>
        </div>
        <br> 
        <div class="table-responsive">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Número de novedad </th>
                        <th>Novedad</th>
                        <th>Empleado involucrado</th>
                        <th>Detalles</th>

                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>0015</td>
                        <td>Incapacidad</td>
                        <td>Jhon Jairo Campillo Londoño</td>
                        <td><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><a data-toggle="modal" href="#detalle1"><img src="../img/detallar.jpg" height="20px"></a></td>

                    </tr>
                    <tr>
                        <td>0016 </td>
                        <td>Renuncia</td>
                        <td>Edwin Arturo Saénz Barón </td>
                        <td><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><a data-toggle="modal" href="#detalle2"><img src="../img/detallar.jpg" height="20px"></a></td>

                    </tr>
                    <tr>
                        <td>0017</td>
                        <td>Permiso</td>
                        <td>Jhon Wilmar Venté Riascos</td>
                        <td><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><a data-toggle="modal" href="#detalle3"><img src="../img/detallar.jpg" height="20px"></a></td>

                    </tr>

                    <tr>
                        <td>0018</td>
                        <td>Incapacidad</td>
                        <td>Oscar</td>
                        <td><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><a data-toggle="modal" href="#detalle4"><img src="../img/detallar.jpg" height="20px"></a></td>

                    </tr>

                </tbody>
            </table>
        </div>
    </div>
     <div class="modal fade" id="detalle1" role="dialog">
        <div class="modal-dialog">
            <!-- Cabecera del modal-->
            <div class="modal-content">
                <div class="modal-header">
                    <h3>Descripción detallada de la novedad</h3>
                </div>
                <!-- Cuerpo  del modal, tiene dos input's, y dos h3 (Usuario y contraseña)-->
         <div class="modal-body">
             <h4><b>Número de novedad:</b> 0015<h4>
               <h4><b>Tipo de novedad:</b> Incapacidad<h4>
                    <h4><b>Empleado involucrado:</b> Jhon Jairo Campillo Londoño<h4>
                            <h4><b>Documento de identificación:</b> 1021147942<br></h4>
                            <h4><b>Fecha de la incapacidad:</b> 06/07/2016 7:00 AM<br></h4>
                            <h4><b>Sede en la que labora:</b> Sabaneta<br></h4>
                            <h4><b>Descripción detallada:</b> El empleado tenía una fractura en brazo izquierdo por lo cual fue incapacitado 3 semanas<br></h4>
                            </div>
                            <!-- Footer del modal, dos botones, cerrrar y Acceder-->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
                            </div>
                            </div>
                            </div>
                            </div>
    
<div class="modal fade" id="detalle2" role="dialog">
    <div class="modal-dialog">
        <!-- Cabecera del modal-->
        <div class="modal-content">
            <div class="modal-header">
                <h3>Descripción detallada de la novedad</h3>
            </div>
            <!-- Cuerpo  del modal, tiene dos input's, y dos h3 (Usuario y contraseña)-->
    <div class="modal-body">
    <h4><b>Número de novedad:</b> 0016<h4>
            <h4><b>Tipo de novedad:</b> Renuncia<h4>
                    <h4><b>Empleado involucrado:</b> Edwin Arturo Saénz Barón <h4>
                            <h4><b>Documento de identificación:</b> 7488558442<br></h4>
                            <h4><b>Fecha de la incapacidad:</b> 06/05/2016 7:00 AM<br></h4>
                            <h4><b>Sede en la que labora:</b> Belén<br></h4>
                            <h4><b>Descripción detallada:</b> El empleado renuncia por cuestiones de estudio<br></h4>
                            </div>
                            <!-- Footer del modal, dos botones, cerrrar y Acceder-->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
                            </div>
                            </div>
                            </div>
                            </div>

        <div class="modal fade" id="detalle3" role="dialog">
                <div class="modal-dialog">
                    <!-- Cabecera del modal-->
                        <div class="modal-content">
                                <div class="modal-header">
                                    <h3>Descripción detallada de la novedad</h3>
                                </div>
                                <!-- Cuerpo  del modal, tiene dos input's, y dos h3 (Usuario y contraseña)-->
                            <div class="modal-body">
                                <h4><b>Número de novedad:</b> 0017<h4>
                                <h4><b>Tipo de novedad:</b> Permiso<h4>
                                <h4><b>Empleado involucrado:</b> Jhon Wilmar Venté Riascos<h4>
                                <h4><b>Documento de identificación:</b> 822114125<br></h4>
                                <h4><b>Fecha de la incapacidad:</b> 06/08/2016 7:00 AM<br></h4>
                                <h4><b>Sede en la que labora:</b> Sabaneta<br></h4>
                                <h4><b>Descripción detallada:</b> El empleado requeria de permiso para una cita médica<br></h4>
                            </div>
                                                                                            <!-- Footer del modal, dos botones, cerrrar y Acceder-->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
                            </div>
                      </div>
                 </div>
         </div>
    
 <div class="modal fade" id="detalle4" role="dialog">
     <div class="modal-dialog">
         <!-- Cabecera del modal-->
          <div class="modal-content">
             <div class="modal-header">
                <h3>Descripción detallada de la novedad</h3>
             </div>
              <!-- Cuerpo  del modal, tiene dos input's, y dos h3 (Usuario y contraseña)-->
                       <div class="modal-body">
                           <h4><b>Número de novedad:</b> 0018<h4>
                           <h4><b>Tipo de novedad:</b> Incapacidad<h4>
                           <h4><b>Empleado involucrado:</b> Oscar<h4>
                           <h4><b>Documento de identificación:</b> 1021147942<br></h4>
                           <h4><b>Fecha de la incapacidad:</b> 06/07/2016 7:00 AM<br></h4>
                           <h4><b>Sede en la que labora:</b> Sabaneta<br></h4>
                        
                           <h4><b>Descripción detallada:</b> El empleado tenía una fractura en brazo izquierdo por lo cual fue incapacitado 3 semanas<br></h4>
                      </div>                               
                    <!-- Footer del modal, dos botones, cerrrar y Acceder-->
                  <div class="modal-footer">
                   <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
               </div>
            </div>

      </div>
  </div>
  
      
  <%@include file="../footerModulos.jspf" %>

 
</body>
</html>
