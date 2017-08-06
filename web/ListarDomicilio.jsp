<%-- 
    Document   : ListarDomicilio
    Created on : 5/08/2017, 06:55:02 PM
    Author     : John Jairo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Domicilio</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/estilos2.css">
       <link rel=stylesheet href=https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="js/FuncionesDomicilio.js"></script>
    </head>
    <body>
         <%@include file="headerModulos.jspf" %>

        <div class="container">
            <div class="jumbotron">
                  <h2 style="text-align: center;">LISTA DE DOMICILIOS</h2><br><br>
                  <p style="text-align: center;">En el siguiente infórme podras ver los domicilios</p><br>
                <table class="table table-hover" id="paginacion">
                    <thead>
                        <tr>
                            <th>Producto</th>
                            <th>Cantidad</th>
                            <th>Nombres</th>
                            <th>Detalle</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            ResultSet re = (ResultSet) session.getAttribute("listarD");
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
                            
                            <td ><%= re.getString("Producto")%></td>
                            <td ><%= re.getString("Cantidad")%></td>
                            <td ><%= re.getString("Nombres")%></td>
                            <td><a href="#Detalle"  data-toggle="modal"><button class="btn btn-primary  glyphicon glyphicon-eye-open Detalle"></button></a></td>
                          
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
                    
                 
        <%@include file="ModalSolicitudDomicilio.jsp" %>
        <%@include file="footerModulos.jspf" %>
    </body>
</html>
