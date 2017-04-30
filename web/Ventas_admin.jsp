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
        <title>Informe Ventas</title>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <link rel="stylesheet" href="css/estilos2.css"/>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="headerModulos.jspf" %>
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
                                <th>Generar PDF</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Envigado</td>
                                <td>por sede</td>
                                <td><a href="InforVentas" target="_blank"><span class="glyphicon glyphicon-inbox"></span></a>
                                   
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
                    
                </div>

            </section>
        </div>
        
       <%@include file="footerModulos.jspf"%> 
    </body>
</html>
