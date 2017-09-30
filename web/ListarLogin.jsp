<%-- 
    Document   : ListarLogin
    Created on : 1/09/2017, 10:29:35 PM
    Author     : ozkar
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>Usuarios</title>
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css"/>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <link rel=stylesheet href=https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/js/bootstrapValidator.min.js"></script>
        <script src="js/FuncionesPassLogin.js"></script>
        <script  src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
    </head>
    <body>
        <%@include file="headerModulos.jspf" %>
    <main>
        <div class="container">
            <h1>Usuarios</h1>
            <table class="table table-hover">
                <thead >
                    <tr>
                    <th>Usuario</th>
            
                    <th>Nombre</th>
                    <th>Correo</th>
                   
                    </tr>
                </thead>
                <%
                            ResultSet rel = (ResultSet) session.getAttribute("login");
                            ResultSet resI = (ResultSet) session.getAttribute("tamaño");

//Devuelve el número de registros en la tabla.
                            float nRegistros;
                            if (resI.next()) {
                                nRegistros = resI.getFloat(1);
                            } else {
                                nRegistros = 0;
                            }
                        %>
                        <tbody id="tabla">
                        <%
                            while (rel.next()) {
                        %>
                       
                            <tr class="<%= rel.getString("Id_login")%>">
                                <td><%= rel.getString(2)%></td>
                                <td><%= rel.getString(4)%></td>
                                <td><%= rel.getString(5)%></td>                                                              
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
                            <li class="page-item"><a class="page-link" href="UsuarioLogin?pag=<%=Integer.parseInt(request.getParameter("pag")) - 1%>">Anterior</a></li>
                                <%
                                    System.out.println(nRegistros);
                                    for (int j = 0; j < nRegistros / 5; j++) {
                                %>
                            <li class="page-item"><a class="page-link" href="UsuarioLogin?pag=<%=j%>"><%=j + 1%></a></li>
                                <%
                                    }
                                %>
                            <li class="page-item"><a class="page-link" href="UsuarioLogin?pag=<%=Integer.parseInt(request.getParameter("pag")) + 1%>">Siguiente</a></li>
                        </ul>
                        
                    </nav>
            </table>
        </div>
    </main>
                            <%@include file="ModalpassLogin.jsp" %>
    <%@include file="footerModulos.jspf" %>   
</body>
</html>
