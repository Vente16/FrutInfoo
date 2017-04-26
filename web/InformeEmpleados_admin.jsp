<%-- 
    Document   : InformeEmplados_admin
    Created on : 13/04/2017, 01:58:18 AM
    Author     : oscar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="headerModulos.jspf" %>
        <div class="container">
            <div class="container">

                <h2 style="text-align: center;">Informe de empleados</h2>
                <p style="text-align: center;">Consulte aquí todo lo relacionado con los empleados.</p>
                <input type="text" class="form-control" placeholder="Ingrese el número de documento del empleado"><br>
                <button class="btn btn-primary">Buscar</button>
                <br><br>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Nombres</th>
                            <th>Identificación</th>
                            <th>Cargo</th>
                            <th>Detalles</th>

                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Jhon Wilmar Venté</td>
                            <td>1021147942</td>
                            <td>Mesero</td>
                            <td><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><a data-toggle="modal" href="#detalle1"><img src="../img/detallar.jpg" height="20px"></a></td>

                        </tr>
                        <tr>
                            <td>Edwin Arturo Saénz Barón </td>
                            <td>7584422668</td>
                            <td>Mensajero</td>
                            <td><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><a data-toggle="modal" href="#detalle2"><img src="../img/detallar.jpg" height="20px"></a></td>

                        </tr>
                        <tr>
                            <td>Jhon Jairo Campillo Londoño</td>
                            <td>5244698223</td>
                            <td>Administrador punto de venta</td>
                            <td><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><a data-toggle="modal" href="#detalle3"><img src="../img/detallar.jpg" height="20px"></a></td>

                        </tr>
                        <tr>
                            <td>Oscar</td>
                            <td>8528585566</td>
                            <td>Jefe de insumos</td>
                            <td><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><a data-toggle="modal" href="#detalle4"><img src="../img/detallar.jpg" height="20px"></a></td>

                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="modal fade" id="detalle1" role="dialog">
                <div class="modal-dialog">
                    <!-- Cabecera del modal-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3>Descripción detallada del empleado</h3>
                        </div>
                        <!-- Cuerpo  del modal, tiene dos input's, y dos h3 (Usuario y contraseña)-->
                        <div class="modal-body">
                            <h4>
                                <b>Nombre:</b> Jhon Wilmar Venté Riascos
                            </h4>
                            <h4><b>Documento de identificación:</b> 1021147942<br></h4>
                            <h4><b>Cargo:</b> Mesero<br></h4>
                            <h4><b>Sede en la que labora:</b> Sabaneta<br></h4>
                            <h4><b>Inicio de contrato:</b> 08/10/2016<br></h4>
                            <h4><b>Teléfono:</b> 25499852<br></h4>
                            <h4><b>Celular:</b> 3148829542<br></h4>
                            <h4><b>Dirección:</b> Calle 20 # 60-45</h4>
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
                            <h3>Descripción detallada del empleado</h3>
                        </div>
                        <!-- Cuerpo  del modal, tiene dos input's, y dos h3 (Usuario y contraseña)-->
                        <div class="modal-body">
                            <h4>
                                <b>Nombre:</b> Edwin Arturo Saénz Barón 
                                <h4>
                                    <h4><b>Documento de identificación:</b> 7584422668<br></h4>
                                    <h4><b>Cargo:</b>    Mensajero<br></h4>
                                    <h4><b>Sede en la que labora:</b> Sabaneta<br></h4>
                                    <h4><b>Inicio de contrato:</b> 08/10/2016<br></h4>
                                    <h4><b>Teléfono:</b> 25499852<br></h4>
                                    <h4><b>Celular:</b> 3148829542<br></h4>
                                    <h4><b>Dirección:</b> Calle 20 # 60-45</h4>
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
                                                    <h3>Descripción detallada del empleado</h3>
                                                </div>
                                                <!-- Cuerpo  del modal, tiene dos input's, y dos h3 (Usuario y contraseña)-->
                                                <div class="modal-body">
                                                    <h4>
                                                        <b>Nombre:</b> Jhon Jairo Campillo Londoño
                                                        <h4>
                                                            <h4><b>Documento de identificación:</b> 5244698223<br></h4>
                                                            <h4><b>Cargo:</b> Administrador punto de venta <br></h4>
                                                            <h4><b>Sede en la que labora:</b> Sabaneta<br></h4>
                                                            <h4><b>Inicio de contrato:</b> 08/10/2016<br></h4>
                                                            <h4><b>Teléfono:</b> 25499852<br></h4>
                                                            <h4><b>Celular:</b> 3148829542<br></h4>
                                                            <h4><b>Dirección:</b> Calle 20 # 60-45</h4>
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
                                                                            <h3>Descripción detallada del empleado</h3>
                                                                        </div>
                                                                        <!-- Cuerpo  del modal, tiene dos input's, y dos h3 (Usuario y contraseña)-->
                                                                        <div class="modal-body">
                                                                            <h4>
                                                                                <b>Nombre:</b> Oscar
                                                                                <h4>
                                                                                    <h4><b>Documento de identificación:</b> 8528585566<br></h4>
                                                                                    <h4><b>Cargo:</b>    Jefe de insumos<br></h4>
                                                                                    <h4><b>Sede en la que labora:</b> Sabaneta<br></h4>
                                                                                    <h4><b>Inicio de contrato:</b> 08/10/2016<br></h4>
                                                                                    <h4><b>Teléfono:</b> 25499852<br></h4>
                                                                                    <h4><b>Celular:</b> 3148829542<br></h4>
                                                                                    <h4><b>Dirección:</b> Calle 20 # 60-45</h4>
                                                                                    </div>
                                                                                    <!-- Footer del modal, dos botones, cerrrar y Acceder-->
                                                                                    <div class="modal-footer">
                                                                                        <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
                                                                                    </div>
                                                                                    </div>
                                                                                    </div>
                                                                                    </div>
                                                                                    <div class="modal fade" id="actualizar" role="dialog">
                                                                                        <div class="modal-dialog">
                                                                                            <!-- Cabecera del modal-->
                                                                                            <div class="modal-content">
                                                                                                <div class="modal-header">
                                                                                                    <div class="alert alert-success">
                                                                                                        <strong>¡Éxito!</strong> Datos actualizados correctamente.
                                                                                                    </div>
                                                                                                </div>
                                                                                                <!-- Footer del modal, dos botones, cerrrar y Acceder-->
                                                                                                <div class="modal-footer">
                                                                                                    <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <br>
                                                                                    <br>
                                                                                    <br>
                                                                                    </div>
                                    <%@include file="footerModulos.jspf" %>
                                    </body>
                        </html>
