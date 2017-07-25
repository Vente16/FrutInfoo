<%-- 
    Document   : Autorizaciones_admin
    Created on : 22/03/2017, 09:32:49 PM
    Author     : oscar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Autorizaciones</title>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <link rel="stylesheet" href="css/estilos2.css"/>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/FuncionesSolicitudInsumos.js"></script>
    </head>
    <body>
        <%@include file="headerModulos.jspf" %>
        <main>
            <div class="container">
                <div class="jumbotron">
                    <div style="text-align:center">
                        <h2>Solicitudes de Insumos</h2>
                        <h4> Esta son las solicitudes de insumos que tiene pendiente </h4>
                    </div>  
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Nombre Insumo</th>
                                <th>Cantidad</th>
                                <th>Fecha de solicitud</th>
                                <th>Detalle</th>
                            </tr>
                        </thead>
                        <%
                            ResultSet re = (ResultSet) session.getAttribute("listarSI");
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
                            while (re.next()) {
                        %>
                        <tbody>
                            <tr class="<%= re.getString("Id") %>">
                                <td><%= re.getString("Nombre_Insumo")%></td>
                                <td><%= re.getString("Cantidad")%></td>
                                <td><%= re.getString("Fecha_Solicitud")%></td>
                                <td><a href="#Detalle" data-toggle="modal"><button class="btn btn-primary glyphicon glyphicon-search Detalle"></button></a></td>
                            </tr>
                        </tbody>
                        <%
                            }
                        %>
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
                            <li class="page-item"><a class="page-link" href="ListarSolicitudInsumos?pag=<%=Integer.parseInt(request.getParameter("pag")) - 1%>">Anterior</a></li>
                                <%
                                    System.out.println(nRegistros);
                                    for (int j = 0; j < nRegistros / 5; j++) {
                                %>
                            <li class="page-item"><a class="page-link" href="ListarSolicitudInsumos?pag=<%=j%>"><%=j + 1%></a></li>
                                <%
                                    }
                                %>
                            <li class="page-item"><a class="page-link" href="ListarSolicitudInsumos?pag=<%=Integer.parseInt(request.getParameter("pag")) + 1%>">Siguiente</a></li>
                        </ul>
                    </nav>
                    <p><b><h2>Con los siguientes Botónes podras generar los  siguientes informes.</h2> </b></p>
                    <a href="InfoInsumos" target="_blank"><button type="submit" class="btn btn-success">Informe Insumos</button></a>&nbsp;&nbsp;
                    <a href="InforEmpleados" target="_blank"><button type="submit" class="btn btn-info">Informe Empleados</button></a>&nbsp;&nbsp;
                    <a href="InforVentas" target="_blank"><button type="submit" class="btn btn-warning">Informe Ventas</button></a><br><br>
                    
                    <p><b><h2>Descargar Informes a Excel.</h2> </b></p>
                    <a href="ExcelInsumos.jsp"><button type="submit" class="btn btn-success">Excel Insumos</button></a>&nbsp;&nbsp;
                    <a href="ExcelVentas.jsp"><button type="submit" class="btn btn-info">Excel Ventas</button></a>&nbsp;&nbsp;
                    <a href="ExcelEmpleados.jsp"><button type="submit" class="btn btn-warning">Excel Empleados</button></a>
                    
                    
                </div>
            </div>

        </main>
            <%@include file="ModalSolicitudInsumos.jsp"%>
        <%@include file="footerModulos.jspf"%> 
    </body>
</html>
