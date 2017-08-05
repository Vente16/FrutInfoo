<%-- 
    Document   : VerlistadeInsumos
    Created on : 28/02/2017, 08:18:13 PM
    Author     : SAENZ
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar insumos</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <link rel=stylesheet href=https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="js/FuncionesInsumos.js"></script>
        <script  src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
    </head>
    <%@include file="headerModulos.jspf"%>
    <body>
        <section class="main container-fluid">
            <div class="jumbotron">
            <div class="container-fluid">
                <h2 style="text-align: center;">LISTA DE INSUMOS</h2>
                <p style="text-align: center;">En el siguiente informe podras ver la lita de nuestros insumos.</p>



             

                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Codigo</th>
                                <th>Nombre</th>
                                <th>Cantidad</th>
                                <th>Detalle</th>
                                <th>Actualizar</th>
                            </tr>
                        </thead>
                        <%
                            ResultSet reI = (ResultSet) session.getAttribute("listarI");
                            ResultSet resI = (ResultSet) session.getAttribute("tamaño");

//Devuelve el número de registros en la tabla.
                            float nRegistros;
                            if (resI.next()) {
                                nRegistros = resI.getFloat(1);
                            } else {
                                nRegistros = 0;
                            }
                        %>

                        <%
                            while (reI.next()) {
                        %>
                        <tbody>
                            <tr class="<%= reI.getString("Id_Insumo")%>">
                                <td><%= reI.getString(2)%></td>
                                <td><%= reI.getString(6)%></td>
                                <td><%= reI.getString(7)%></td>
                                <td><a href="#Detalle"  data-toggle="modal"><button class="btn btn-primary  glyphicon glyphicon-eye-open Detalle"></button></a></td>
                                <td><a href="#Actualizar"  data-toggle="modal"><button class="btn btn-success glyphicon glyphicon-edit Actualizar"></button></a> </td>
                            </tr>
                            <%}%>
                        </tbody>
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
                            <li class="page-item"><a class="page-link" href="ListarInsumo?pag=<%=Integer.parseInt(request.getParameter("pag")) - 1%>">Anterior</a></li>
                                <%
                                    System.out.println(nRegistros);
                                    for (int j = 0; j < nRegistros / 5; j++) {
                                %>
                            <li class="page-item"><a class="page-link" href="ListarInsumo?pag=<%=j%>"><%=j + 1%></a></li>
                                <%
                                    }
                                %>
                            <li class="page-item"><a class="page-link" href="ListarInsumo?pag=<%=Integer.parseInt(request.getParameter("pag")) + 1%>">Siguiente</a></li>
                        </ul>
                        <div style="text-align:right"> 
                            <p><b>Generar Informes</b></p>
                            <a href="InfoInsumos" target="_blank"><button class="btn btn-default" style=font-size:24px;color:red;background:black>Pdf <i class="fa fa-file-pdf-o"></i></button></a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a  href="ExcelInsumos.jsp"><button class="btn btn-success" style=font-size:24px;color:black>Exc <i class="fa fa-file-excel-o"></i></button></a> 
                        </div>
                    </nav>
                  

                </form>
            </div>
                        </div>
        </section>
           <%@include file="ModalInsumos.jsp" %>
        <%@include file="footerModulos.jspf"%>     

    </body>
</html>
