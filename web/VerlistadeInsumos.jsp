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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="js/FuncionesInsumos.js"></script>
        <script  src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
    </head>
    <%@include file="headerModulos.jspf"%>
    <body>
        <section class="main container-fluid">
            <div class="container-fluid">
                <h2 style="text-align: center;">MODIFICAR INSUMO</h2>
                <p style="text-align: center;">Ingrese aqui el Insumo el cual desea modificar.</p>


<<<<<<< HEAD
           <form class="form-group has-success">
                         <div class="form-group has-success ">
                               <label for="detalle">Codigo:</label>
                                <input type="text" class="form-control" id="email" placeholder="Ingrese Insumo">
                                </div>
                                    <br>
                                    <div class="navbar-left has-success">
                                    <label class="punto_venta">Punto de Venta:</label>
                                    <br>
                                    <select class="form-control">
                                    <option>Envigado</option>
                                    <option >Sabaneta</option>
                                    <option >Itagui</option>
                                    <option >poblado</option>
                                    <option >Carrera 80</option>
                                    <option >Los sauces</option>
                                    <option >Laureles</option>
                                    <option >Avenida Orientales</option>
                                    <option >Bello</option>
                                    <option >Belen</option>
                                     </select>
                                     <br>
                                     <button type="button" class="btn btn-success">Consultar</button>
                                     <br>
                                     <br>
                                    </div>
                                
                                <table class="table table-bordered">
                                 <thead>
                                   <tr>
                                     <th>Insumo</th>
                                     <th>Catidad</th>
                                     <th>Punto de venta</th>
                                     <th>Editar</th>
                                     <th>Modificar</th>
                                     <th>Eliminar</th>
                                   </tr>
                                 </thead>
                                 <tbody>
                                   <tr>
                                     <td>Banano</td>
                                     <td>12</td>
                                     <td>Envigado</td>
                                     <td><img src="../img/detalle.svg" height=30px></td>
                                     <td> <button class="btn-link btn-xs" ><img src="../img/aceptari.png" alt="aceptar" style="width:20px; height:20px; align:center;"></button></td>
                                    <td> <button class="btn-link btn-xs" ><img src="../img/cancelar.png" alt="aceptar" style="width:20px; height:20px; align:center;"></button></td>
                                   </tr>

                                 </tbody>
                               </table>
                          
                                <button type="submit" class="btn btn-success">Guardar</button>
                                
                                
                            </form>
                            </div>
                        </section>
              
     <%@include file="footerModulos.jspf"%>     
=======
                <form class="form-group has-success">
                    <div class="form-group has-success ">
                        <label for="detalle">Codigo:</label>
                        <input type="text" class="form-control" id="email" placeholder="Ingrese Insumo">
                    </div>
                    <br>
                    <div class="navbar-left has-success">
                        <label class="punto_venta">Punto de Venta:</label>
                        <br>
                        <select class="form-control">
                            <option>Envigado</option>
                            <option >Sabaneta</option>
                            <option >Itagui</option>
                            <option >poblado</option>
                            <option >Carrera 80</option>
                            <option >Los sauces</option>
                            <option >Laureles</option>
                            <option >Avenida Orientales</option>
                            <option >Bello</option>
                            <option >Belen</option>
                        </select>
                        <br>
                        <button type="button" class="btn btn-success">Consultar</button>
                        <br>
                        <br>
                    </div>

                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Codigo</th>
                                <th>Nombre</th>
                                <th>Cantidad</th>
                                <th>Detalle</th>
                                <th>Actualizar</th>
                                <th>Eliminar</th>
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
                                <td><button class="btn btn-danger glyphicon glyphicon-trash Eliminar"></button></td>
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
                    <button type="submit" class="btn btn-success">Guardar</button>
                    <button type="button" class="btn btn-primary">VOLVER</button>

                </form>
            </div>
        </section>
           <%@include file="ModalInsumos.jsp" %>
        <%@include file="footerModulos.jspf"%>     
>>>>>>> origin/pruebas
    </body>
</html>
