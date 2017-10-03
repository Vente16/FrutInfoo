<%-- 
    Document   : EstadoInsumos
    Created on : 30/09/2017, 08:07:49 AM
    Author     : John Jairo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Estado Solicitud de Insumos</title>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/estilos2.css"/>
        <link rel="stylesheet" href="css/toastr.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/toastr.js"></script>
        <script src="js/FuncionesEstadoInsumos.js"></script>
    </head>
    <body>
         <%@include file="headerModulos.jspf" %>
        
            <div class="container">
                <div class="jumbotron">
                    <div style="text-align:center">
                        <h2>Estado Solicitud de Insumos</h2><br><br><br>
                    </div>  
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Nombre Insumo</th>
                                <th>Fecha de Solicitud</th>
                                <th>Estado de la Solicitud</th>
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
                                <td><%= re.getString("Fecha_Solicitud")%></td>
                                <td><%= re.getString("solicitud")%></td>
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
                            <li class="page-item"><a class="page-link" href="ListarEstadoInsumo?pag=<%=Integer.parseInt(request.getParameter("pag")) - 1%>">Anterior</a></li>
                                <%
                                    System.out.println(nRegistros);
                                    for (int j = 0; j < nRegistros / 5; j++) {
                                %>
                            <li class="page-item"><a class="page-link" href="ListarEstadoInsumo?pag=<%=j%>"><%=j + 1%></a></li>
                                <%
                                    }
                                %>
                            <li class="page-item"><a class="page-link" href="ListarEstadoInsumo?pag=<%=Integer.parseInt(request.getParameter("pag")) + 1%>">Siguiente</a></li>
                        </ul>
                    </nav>   
                </div>
            </div>

        
            <%@include file="ModalEstadoInsumos.jsp"%>
        <%@include file="footerModulos.jspf"%> 
    </body>
</html>
