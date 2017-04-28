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
            <section class="main container-fluid">
                <div class="container-fluid">

                    <br>
                    <br>
                    <button type="submit" class="btn btn-success">GENERAR</button>
                    <button type="submit" class="btn btn-success">EDITAR</button>
                    <button type="submit" class="btn btn-primary">VOLVER</button>

                </div>

                <h2 style="text-align: center;">Lista de Ventas</h2><br><br>
                <p style="text-align: left;">En el siguiente informe podra ver todas las ventas por su respectiva sede</p>
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>

                            <th>Codigo del Producto</th>
                            <th>Total a Pagar</th>
                            <th>Fecha de venta</th>
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
                        <tr>
                            <td><%= reV.getInt(2)%></td>
                            <td><%= reV.getFloat(7)%></td>
                            <td><%= reV.getString(9)%></td>

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
                        <li class="page-item"><a class="page-link" href="ListarInsumo?pag=<%=Integer.parseInt(request.getParameter("pag")) - 1%>">Previous</a></li>
                            <%
                                System.out.println(nRegistros);
                                for (int j = 0; j < nRegistros / 5; j++) {
                            %>
                        <li class="page-item"><a class="page-link" href="ListarInsumo?pag=<%=j%>"><%=j + 1%></a></li>
                            <%
                                }
                            %>
                        <li class="page-item"><a class="page-link" href="ListarInsumo?pag=<%=Integer.parseInt(request.getParameter("pag")) + 1%>">Next</a></li>
                    </ul>
                </nav>

            </section>
        </div>


        <%@include file="footerModulos.jspf" %>
    </body>
</html>
