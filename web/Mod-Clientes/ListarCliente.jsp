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
        <link rel="stylesheet" href="../css/bootstrap.css">
        <link rel="stylesheet" href="../css/estilos2.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="../headerModulos.jspf" %>
        
       <div class="container">
            <div class="jumbotron">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th class="hidden">Id</th>
                            <th>Nombre</th>
                            <th>Genero</th>
                            <th>Opciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% 
                            ResultSet re = (ResultSet) request.getAttribute("listarC");
                            while(re.next()){
                        %>
                        <tr>
                            <td class="hidden"><%= re.getInt(1) %></td>
                            <td><%= re.getString(2) %></td>
                            <td><%= re.getString(3) %></td>
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
            </div>
        </div>
        
        <%@include file="../footerModulos.jspf" %>
    </body>
</html>
