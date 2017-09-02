<%-- 
    Document   : ListarCliente
    Created on : 23/04/2017, 01:16:43 AM
    Author     : oscar
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de clientes</title>
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css"/>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/js/bootstrapValidator.min.js"></script>
        <script src="js/FuncionesClientes.js"></script>
        <script  src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
    </head>
    <body>
        <%@include file="headerModulos.jspf" %>

        <div class="container">
            <div class="jumbotron">
                  <h2 style="text-align: center;">LISTA DE CLIENTES</h2><br><br>
                  <p style="text-align: center;">En el siguiente infórme podras ver nuestros clientes</p><br>
                <table class="table table-hover" id="paginacion">
                    <thead>
                        <tr>
                            <th>Documento</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Detalle</th>
                            <th>Actualizar</th>
                            <th>Eliminar</th>
                        </tr>
                    </thead>
                    <tbody id="TablaCliente">
                        <%
                            ResultSet re = (ResultSet) session.getAttribute("listarC");
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
                        <tr class="<%= re.getString("Id")%>">
                            
                            <td ><%= re.getString("Documento")%></td>
                            <td ><%= re.getString("Nombre")%></td>
                            <td ><%= re.getString("Apellido")%></td>
                            <td><a href="#Detalle"  data-toggle="modal"><button class="btn btn-primary  glyphicon glyphicon-eye-open Detalle"></button></a></td>
                            <td><a href="#Actualizar"  data-toggle="modal"><button class="btn btn-success glyphicon glyphicon-edit Actualizar"></button></a></td>
                            <td><button class="btn btn-danger glyphicon glyphicon-trash Eliminar"></button></td>
                           
                        </tr>
                        <%
                            }
                        %>
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
                        <li class="page-item"><a class="page-link" href="Listar?pag=<%=Integer.parseInt(request.getParameter("pag")) - 1%>">Anterior</a></li>
                            <%
                                System.out.println(nRegistros);
                                for (int j = 0; j < nRegistros / 5; j++) {
                            %>
                        <li class="page-item"><a class="page-link" href="Listar?pag=<%=j%>"><%=j + 1%></a></li>
                            <%
                                }
                            %>
                        <li class="page-item"><a class="page-link" href="Listar?pag=<%=Integer.parseInt(request.getParameter("pag")) + 1%>">Siguiente</a></li>
                    </ul>
                </nav>
            </div>
        </div>
                    
                 
        <%@include file="ModalClientes.jsp" %>
        <%@include file="footerModulos.jspf" %>
    </body>
</html>
