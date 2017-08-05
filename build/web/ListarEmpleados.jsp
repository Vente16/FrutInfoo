<%-- 
    Document   : ListarEmpleados
    Created on : 26/02/2017, 09:16:06 AM
    Author     : adsi
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <link rel=stylesheet href=https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="js/FuncionesEmpleados.js"></script>
        <script  src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
        
        <title>Lista de empleados</title>

    </head>
    
  
    <%@include file="headerModulos.jspf" %> 

    <div class="container">
        <div class="jumbotron">
 
        <div style="text-align:center">
            <h2>EMPLEADOS</h2>
            <h4> Estos son todos los empleados de nuestra compañía </h4>
                    <br><br>
        </div>
                    
                   
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <%
                                        String rol =(String) session.getAttribute("rol");
                                        if (rol.equals("Asistente Administrativo")) {
                                            
                                    %>
                                    <th>Documento</th>
                                    <th>Nombre</th>
                                    <th>Cargo</th>
                                    <th>Detalle</th>
    
                                    <% }else{
                                    %>
                                    
                                    <th>Documento</th>
                                    <th>Nombre</th>
                                    <th>Cargo</th>
                                    <th>Detalle</th>
                                    <th>Actualizar</th>
                                    <th>Eliminar</th>
                                    
                                    <% }
                                    %>
                                </tr>
                            </thead>
                            <%
                                ResultSet reE = (ResultSet) session.getAttribute("listarE");
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
                                while (reE.next()) {
                            %>
                            <tbody>
                                <%          
                                        if (rol.equals("Asistente Administrativo")) {              
                                %>
                                <tr class="<%= reE.getString("id_empleado")%>">
                                    <td><%= reE.getString("Documento")%></td>
                                    <td><%= reE.getString("Nombre")%></td>
                                    <td><%= reE.getString("Nombre_cargo")%></td>
                                    <td><a href="#Detalle"  data-toggle="modal"><button class="btn btn-primary  glyphicon glyphicon-eye-open Detalle"></button></a></td>
                                </tr>    
                                    <% }else{
                                    %>
                                <tr class="<%= reE.getString("id_empleado")%>">    
                                    <td><%= reE.getString("Documento")%></td>
                                    <td><%= reE.getString("Nombre")%></td>
                                    <td><%= reE.getString("Nombre_cargo")%></td>
                                    <td><a href="#Detalle"  data-toggle="modal"><button class="btn btn-primary  glyphicon glyphicon-eye-open Detalle"></button></a></td>
                                    <td><a href="#Actualizar"  data-toggle="modal"><button class="btn btn-success glyphicon glyphicon-edit Actualizar"></button></a></td>
                                    <td><button class="btn btn-danger glyphicon glyphicon-trash Eliminar"></button></td>
                                </tr>
                                    <% }
                                    %>
                                
                            </tbody>
                         
                            <%}%>
                        </table>
                        <nav aria-label="Page navigation example">
                            <ul class="pagination justify-content-center">
                                <%
                                    int pg = 0;
                                    if (request.getParameter("pag") == null) {
                                        pg = 0;
                                    } else {
                                        pg = Integer.parseInt(request.getParameter("pag"));

                                    }
                                %>
                                <li class="page-item"><a class="page-link" href="ListarEmp?pag=<%=Integer.parseInt(request.getParameter("pag")) - 1%>">Anterior</a></li>
                                    <%
                                        System.out.println(nRegistros);
                                        for (int j = 0; j < nRegistros / 5; j++) {
                                    %>
                                <li class="page-item"><a class="page-link" href="ListarEmp?pag=<%=j%>"><%=j + 1%></a></li>
                                    <%
                                        }
                                    %>
                                <li class="page-item"><a class="page-link" href="ListarEmp?pag=<%=Integer.parseInt(request.getParameter("pag")) + 1%>">Siguiente</a></li>
                            </ul> 
                            
                             <div style="text-align:right"> 
                                 <p><b>Generar Informes</b></p>
                                <a href="InforEmpleados" target="_blank"><button class="btn btn-default" style=font-size:24px;color:red;background:black>Pdf <i class="fa fa-file-pdf-o"></i></button></a>&nbsp;&nbsp;&nbsp;&nbsp;
                                <a  href="ExcelEmpleados.jsp"><button class="btn btn-success" style=font-size:24px;color:black>Exc <i class="fa fa-file-excel-o"></i></button></a> 
                            </div> 
                            
                        </nav>
                            
                             
                            
                            </div>
                    </div>
                    
                    
                   
       <%@include file="ModalEmpleado.jsp" %>
    <%@include file="footerModulos.jspf"%> 

    </html>
