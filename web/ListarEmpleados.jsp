<%-- 
    Document   : ListarEmpleados
    Created on : 26/02/2017, 09:16:06 AM
    Author     : adsi
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Lista de empleados</title>

    </head>


    <%@include file="headerModulos.jspf" %> 

    <div class="container">
        <form>
            <br><br>
            <input type="text" class="form-control" name="name" required="" data-form-field="Name" id="index-form1-1-name" placeholder="Ingrese el número de documento del empleado">
            <br>
            <button type="button" class="btn btn-success" style="margin-right:auto">Consultar</button>  
        </form>
        <br>
        <div style="text-align:center">
            <h2>EMPLEADOS</h2>
            <h4>
                Estos son todos los empleados de nuestra compañía
                <h4>
                    <br> 
                    </div>
                    <div class="table-responsive">
                        <table class="table table-hover table-striped">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Nombre</th>
                                    <th>Apellido</th>
                                    <th>Detalles</th>

                                </tr>
                            </thead>
                            <%
                                ResultSet reE = (ResultSet) session.getAttribute("listarE");
                                ResultSet res = (ResultSet) session.getAttribute("tamaño");

            //Devuelve el número de registros en la tabla.
                                float nRegistros;
                                if (res.next()) {
                                    nRegistros = res.getFloat(1);
                                } else {
                                    nRegistros = 0;
                                }
                            %>

                            <%
                                while (reE.next()) {
                            %>
                            <tbody>
                                <tr>
                                    <td class=""><%= reE.getInt(1)%></td>
                                    <td><%= reE.getString(2)%></td>
                                    <td><%= reE.getString(3)%></td>
                                    <td>
                                        <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><a data-toggle="modal" href="#detalle1"><img src="img/detallar.jpg" height="20px"></a>
                                        <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><a data-toggle="collapse" data-target="#actualiza"><img src="img/actualizar.jpg" height="30px"></a>
                                    </td>


                                </tr>
                            </tbody>
                            <%}%>
                        </table>
                        <nav aria-label="Page navigation example" class="container">
                            <ul class="pagination justify-content-center">
                                <%
                                    int pg = 0;
                                    if (request.getParameter("pag") == null) {
                                        pg = 0;
                                    } else {
                                        pg = Integer.parseInt(request.getParameter("pag"));

                                    }
                                %>
                                <li class="page-item"><a class="page-link" href="ListarEmp?pag=<%=Integer.parseInt(request.getParameter("pag")) - 1%>">Previous</a></li>
                                    <%
                                        System.out.println(nRegistros);
                                        for (int j = 0; j < nRegistros / 5; j++) {
                                    %>
                                <li class="page-item"><a class="page-link" href="ListarEmp?pag=<%=j%>"><%=j + 1%></a></li>
                                    <%
                                        }
                                    %>
                                <li class="page-item"><a class="page-link" href="ListarEmp?pag=<%=Integer.parseInt(request.getParameter("pag")) + 1%>">Next</a></li>
                            </ul>
                        </nav>
                    </div>
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
                                        <h4>
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
                                                                                                                    <div class="container">
                                                                                                                        <div id="actualiza" class="collapse">
                                                                                                                            <form class="form-control" style="background:#5cb85c;">
                                                                                                                                <label class="form-control">Nombre completo</label> 
                                                                                                                                <input type="text" class="form-control"><br>
                                                                                                                                <label class="">Documento de identificación</label>
                                                                                                                                <input type="text" class="form-control"><br>
                                                                                                                                <label class="form-control">Cargo</label>
                                                                                                                                <input type="text" class="form-control"><br>
                                                                                                                                <label class="form-control">Sede donde labora</label> 
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
                                                                                                                                </select><br>
                                                                                                                                <label class="form-control" value="2652551">Teléfono</label> 
                                                                                                                                <input type="text" class="form-control"><br>
                                                                                                                                <label class="form-control">Celular</label> 
                                                                                                                                <input type="text" class="form-control"><br>
                                                                                                                                <label class="form-control">Dirección</label> 
                                                                                                                                <input type="text" class="form-control"><br>

                                                                                                                                <button type="button" class="btn btn-success" data-toggle="modal" data-target="#actualizar">Actualizar</button>

                                                                                                                            </form>
                                                                                                                        </div>
                                                                                                                    </div>
                                                                                                                    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                                                                                                                    <br>
                                                                                                                    <br>
                                                                                                                    <br>
                                                                                                                    <br>
                                                                                                                    <br>
                                                                                                                    <br>
                                                                                                                    <br>
                                                                                                                    <br>
                                                                                                                    <br>     

                                                                                                                    <%@include file="footerModulos.jspf"%> 

                                                                                                                    </html>
