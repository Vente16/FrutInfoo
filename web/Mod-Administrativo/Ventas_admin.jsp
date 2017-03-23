<%-- 
    Document   : Ventas_admin
    Created on : 22/03/2017, 09:52:18 PM
    Author     : oscar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../css/bootstrap.min.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <link rel="stylesheet" href="../css/estilos2.css"/>
        <script src="../js/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="../headerModulos.jspf" %>
        <br>
        <br>
        <div class="container">
            <section class="main container-fluid">
                <div class="container-fluid">
                    <select name="ver_info_ventas" id="info_ventas">
                        <option value="">por sede</option>
                        <option value="">al dia</option>
                        <option value="">en general</option>
                    </select>


                    <h2 style="text-align: center;">Informe de ventas</h2>
                    <p style="text-align: center;">Consulte aqui el informe de ventas por sede.</p>
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>Sede</th>
                                <th>Tipo de informe</th>
                                <th>Detalle</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Envigado</td>
                                <td>por sede</td>
                                <td><a data-toggle="modal" href="#myModal"><span class="glyphicon glyphicon-inbox"></span></a>
                                    <!-- Modal -->
                                    <div class="modal fade" id="myModal" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                    <h4 class="modal-title">Modal Header</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <p>Some text in the modal.</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                            </tr>
                            <tr>
                                <td>Itagui</td>
                                <td>por sede</td>
                                <td><a href="#"><span class="glyphicon glyphicon-inbox"></span></a></td>
                            </tr>
                            <tr>
                                <td>Poblado</td>
                                <td>por sede</td>
                                <td><a href="#"><span class="glyphicon glyphicon-inbox"></span></a></td>
                            </tr>
                            <tr>
                                <td>Carrera 80</td>
                                <td>por sede</td>
                                <td><a href="#"><span class="glyphicon glyphicon-inbox"></span></a></td>
                            </tr>
                            <tr>
                                <td>Los Sauces</td>
                                <td>por sede</td>
                                <td><a href="#"><span class="glyphicon glyphicon-inbox"></span></a></td>
                            </tr>
                            <tr>
                                <td>Laureles</td>
                                <td>por sede</td>
                                <td><a href="#"><span class="glyphicon glyphicon-inbox"></span></a></td>
                            </tr>
                            <tr>
                                <td>Avenida Oriental</td>
                                <td>por sede</td>
                                <td><a href="#"><span class="glyphicon glyphicon-inbox"></span></a></td>
                            </tr>
                            <tr>
                                <td>Bello</td>
                                <td>por sede</td>
                                <td><a href="#"><span class="glyphicon glyphicon-inbox"></span></a></td>
                            </tr>
                            <tr>
                                <td>Belen</td>
                                <td>por sede</td>
                                <td><span class="glyphicon glyphicon-inbox"></span></td>
                            </tr>
                        </tbody>
                    </table>
                    <button type="submit" class="btn btn-primary">VOLVER</button>
                </div>

            </section>
        </div>
        
        <%@include file="../footer.jspf" %>
    </body>
</html>
