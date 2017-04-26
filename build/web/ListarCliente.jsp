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
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <script src="js/funciones.js"></script>
        <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.12.4.js"></script>
    </head>
    <body>
        <%@include file="headerModulos.jspf" %>

        <div class="container">
            <div class="jumbotron">
                <table class="table table-hover" id="paginacion">
                    <thead>
                        <tr>
                            <th class="">Id</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Opciones</th>
                        </tr>
                    </thead>
                    <tbody>
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
                        <tr>
                            <td class=""><%= re.getInt(1)%></td>
                            <td><%= re.getString(2)%></td>
                            <td><%= re.getString(3)%></td>
                            <td>
                                <a href="Modal.jsp" data-target="#myModal" onclick="document.getElementsByName('myModal')" data-toggle="modal" class="btn btn-success"><span class="glyphicon glyphicon-eye-open"></span></a>
                                <a class="btn btn-primary"><span class="glyphicon glyphicon-edit"></span></a>
                                <a class="btn btn-danger"><span class="glyphicon glyphicon-remove-sign"></span></a>
                            </td>
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
                        <li class="page-item"><a class="page-link" href="Listar?pag=<%=Integer.parseInt(request.getParameter("pag")) - 1%>">Previous</a></li>
                            <%
                                System.out.println(nRegistros);
                                for (int j = 0; j < nRegistros / 5; j++) {
                            %>
                        <li class="page-item"><a class="page-link" href="Listar?pag=<%=j%>"><%=j + 1%></a></li>
                            <%
                                }
                            %>
                        <li class="page-item"><a class="page-link" href="Listar?pag=<%=Integer.parseInt(request.getParameter("pag")) + 1%>">Next</a></li>
                    </ul>
                </nav>
            </div>
        </div>

        <%@include file="footerModulos.jspf" %>
    </body>
</html>
