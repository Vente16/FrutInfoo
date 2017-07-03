<%-- 
    Document   : ListarVentas
    Created on : 27/02/2017, 09:11:53 PM
    Author     : John Jairo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar ventas</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="headerModulos.jspf" %>
        <br>

        <div class="container">
            <div class="jumbotron">
                <section class="main container-fluid>                
               < <h2 style="text-align: center;"></h2><br><br>
                <h2 style="text-align: center;">LISTA DE VENTAS</h2><br><br>
                  <p style="text-align: center;">En el siguiente infórme podras ver nuestras ventas por su respectiva sede</p><br>
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>Nombre del Producto</th>
                                <th>Total a Pagar</th>
                                <th>Fecha de venta</th>
                                <th>Detalle</th>
                                <th>Actualizar</th>
                                <th>Eliminar</th>
                            </tr>
                        </thead>
                        <%
                            ResultSet reV = (ResultSet) session.getAttribute("listarV");
                            ResultSet resV = (ResultSet) session.getAttribute("tamaño");

                            //Devuelve el número de registros en la tabla.
                            float nRegistros;
                            if (resV.next()) {
                                nRegistros = resV.getFloat(1);
                            } else {
                                nRegistros = 0;
                            }
                        %>

                        <%
                            while (reV.next()) {
                        %>
                        <tbody>
                            <tr class="<%=reV.getString("id")%>" >
                                <td><%= reV.getString(2)%></td>
                                <td><%= reV.getFloat(6)%></td>
                                <td><%= reV.getString(8)%></td>
                                <td><a href="#Detalle"  data-toggle="modal"><button class="btn btn-primary  glyphicon glyphicon-eye-open Detalle"></button></a></td>
                                <td><a href="#Actualizar"  data-toggle="modal"><button class="btn btn-success glyphicon glyphicon-edit Actualizar"></button></a></td>
                                <td><button class="btn btn-danger glyphicon glyphicon-trash Eliminar"></button></td>

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
                            <li class="page-item"><a class="page-link" href="ListarVentas?pag=<%=Integer.parseInt(request.getParameter("pag")) - 1%>">Previous</a></li>
                                <%
                                    System.out.println(nRegistros);
                                    for (int j = 0; j < nRegistros / 5; j++) {
                                %>
                            <li class="page-item"><a class="page-link" href="ListarVentas?pag=<%=j%>"><%=j + 1%></a></li>
                                <%
                                    }
                                %>
                            <li class="page-item"><a class="page-link" href="ListarVentas?pag=<%=Integer.parseInt(request.getParameter("pag")) + 1%>">Next</a></li>
                        </ul>
                    </nav>

                </section>
            </div>
        </div>


        <%@include file="footerModulos.jspf" %>
    </body>
</html>
