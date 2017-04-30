<%-- 
    Document   : Autorizaciones_admin
    Created on : 22/03/2017, 09:32:49 PM
    Author     : oscar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Autorizaciones</title>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <link rel="stylesheet" href="css/estilos2.css"/>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="headerModulos.jspf" %>
        
        <div class="container">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Id de solicitud</th>
                        <th>Sede</th>
                        <th>Descripción de la solicitud</th>
                        <th>Detalle</th>
                        <th>Autorizar</th>
                        <th>Desautorizar</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>001</td>
                        <td>poblado</td>
                        <td>se solicita un pedido de 70 bananos y 10 sandias</td>
                        <td><img src="img/detalle.svg" height=30px></td>
                        <td> <button class="btn-link btn-xs" ><img src="img/aceptari.png" alt="aceptar" style="width:20px; height:20px; align:center;"></button></td>
                        <td> <button class="btn-link btn-xs" ><img src="img/cancelar.png" alt="aceptar" style="width:20px; height:20px; align:center;"></button></td>
                    </tr>
                    <tr>
                        <td>002</td>
                        <td>carrera 80</td>
                        <td>se solicitan un pedido de 40 manzanaz y 80 limones</td>
                        <td><img src="img/detalle.svg" height=30px></td>

                        <td> <button class="btn-link btn-xs" ><img src="img/aceptari.png" alt="aceptar" style="width:20px; height:20px; align:center;"></button></td>
                        <td> <button class="btn-link btn-xs" ><img src="img/cancelar.png" alt="aceptar" style="width:20px; height:20px; align:center;"></button></td>

                    </tr>
                    <tr>
                        <td>003</td>
                        <td>poblado</td>
                        <td>se solicitan un pedido de 40 manzanaz y 80 limones</td>
                        <td><img src="img/detalle.svg" height=30px></td>
                        <td> <button class="btn-link btn-xs" ><img src="img/aceptari.png" alt="aceptar" style="width:20px; height:20px; align:center;"></button></td>
                        <td> <button class="btn-link btn-xs" ><img src="img/cancelar.png" alt="aceptar" style="width:20px; height:20px; align:center;"></button></td>
                    </tr>
                    <tr>
                        <td>004</td>
                        <td>Itaguí</td>
                        <td>se solicita un pedido de 70 bananos y 10 sandias</td>
                        <td><img src="img/detalle.svg" height=30px></td>
                        <td> <button class="btn-link btn-xs" ><img src="img/aceptari.png" alt="aceptar" style="width:20px; height:20px; align:center;"></button></td>
                        <td> <button class="btn-link btn-xs" ><img src="img/cancelar.png" alt="aceptar" style="width:20px; height:20px; align:center;"></button></td>
                    </tr>
                    <tr>
                        <td>005</td>
                        <td>Sabaneta</td>
                        <td>se solicita un pedido de 70 bananos y 10 sandias</td>
                        <td><img src="img/detalle.svg" height=30px></td>
                        <td> <button class="btn-link btn-xs" ><img src="img/aceptari.png" alt="aceptar" style="width:20px; height:20px; align:center;"></button></td>
                        <td> <button class="btn-link btn-xs" ><img src="img/cancelar.png" alt="aceptar" style="width:20px; height:20px; align:center;"></button></td>
                    </tr>
                    <tr>
                        <td>006</td>
                        <td>Envigado</td>
                        <td>se solicita un pedido de 70 bananos y 10 sandias</td>
                        <td><img src="img/detalle.svg" height=30px></td>
                        <td> <button class="btn-link btn-xs" ><img src="img/aceptari.png" alt="aceptar" style="width:20px; height:20px; align:center;"></button></td>
                        <td> <button class="btn-link btn-xs" ><img src="img/cancelar.png" alt="aceptar" style="width:20px; height:20px; align:center;"></button></td>
                    </tr>
                    <tr>
                        <td>007</td>
                        <td>Belen</td>
                        <td>se solicita un pedido de 70 bananos y 10 sandias</td>
                        <td><img src="img/detalle.svg" height=30px></td>
                        <td> <button class="btn-link btn-xs" ><img src="img/aceptari.png" alt="aceptar" style="width:20px; height:20px; align:center;"></button></td>
                        <td> <button class="btn-link btn-xs" ><img src="img/cancelar.png" alt="aceptar" style="width:20px; height:20px; align:center;"></button></td>
                    </tr>
                    <tr>
                        <td>008</td>
                        <td>Laureles</td>
                        <td>se solicita un pedido de 70 bananos y 10 sandias</td>
                        <td><img src="img/detalle.svg" height=30px></td>
                        <td> <button class="btn-link btn-xs" ><img src="img/aceptari.png" alt="aceptar" style="width:20px; height:20px; align:center;"></button></td>
                        <td> <button class="btn-link btn-xs" ><img src="img/cancelar.png" alt="aceptar" style="width:20px; height:20px; align:center;"></button></td>

                    </tr>
                    <tr>
                        <td>009</td>
                        <td>Los sauses</</td>
                        <td>se solicita un pedido de 70 bananos y 10 sandias</td>
                        <td><img src="img/detalle.svg" height=30px></td>
                        <td> <button class="btn-link btn-xs" ><img src="img/aceptari.png" alt="aceptar" style="width:20px; height:20px; align:center;"></button></td>
                        <td> <button class="btn-link btn-xs" ><img src="img/cancelar.png" alt="aceptar" style="width:20px; height:20px; align:center;"></button></td>
                    </tr>
                </tbody>
            </table>
        </div>
        
      <%@include file="footerModulos.jspf"%> 
    </body>
</html>
