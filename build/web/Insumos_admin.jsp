<%-- 
    Document   : Insumos_admin
    Created on : 22/03/2017, 09:58:31 PM
    Author     : oscar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Informe insumos</title>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <link rel="stylesheet" href="css/estilos2.css"/>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="headerModulos.jspf" %>
        <br>
        <br>
        <section class="main container">
            <div>
                <select name="ver_info_ventas" id="info_ventas">
                    <option value="">por sede</option>
                    <option value="">al dia</option>
                    <option value="">en general</option>
                </select>

                <!-- id    
    nombre_insumo (20)   
    cantidad_insumo    
    valor_insumo     
    fecha_ingreso     
    fecha_vencimiento     
    fecha_salida      
    cantidad_salida_insumos    
    prioridad
    Habilitado-->


                <h2 style="text-align: center;">Informe de Insumos</h2>
                <p style="text-align: center;">Consulte aqui el informe de los insumos del mes.</p>
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>Código</th>
                            <th>Nombre</th>
                            <th>Cantidad</th>
<<<<<<< HEAD
                            <th>Generar PDF</th>
                           
=======
                            <th>Valor</th>
                            <th>Fecha de ingreso</th>
                            <th>Fecha de vencimiento</th>
                            <th>Fecha de salida</th>
                            <th>Cantidad de salida</th>
                            <th>Prioridad</th>
                            <th>Habilitado</th>
>>>>>>> origin
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>0001</td>
                            <td>manzana</td>
                            <td>10 </td>
<<<<<<< HEAD
                            <td><a href="InfoInsumos" target="_blank"><span class="glyphicon glyphicon-inbox"></span></td>
                           
                           
=======
                            <td>1000</td>
                            <td>10/10/2016</td>
                            <td>15/01/2017</td>
                            <td>13/10/2016</td>
                            <td>5</td>
                            <td>media</td>
                            <td></td>
>>>>>>> origin
                        </tr>
                        <tr>
                            <td>0002</td>
                            <td>pera</td>
                            <td>45</td>
<<<<<<< HEAD
                            <td> <a href="#" target="_blank"><span class="glyphicon glyphicon-inbox"></span></td>
                          
                            
=======
                            <td>1000</td>
                            <td>10/10/2016</td>
                            <td>15/01/2017</td>
                            <td>13/10/2016</td>
                            <td>5</td>
                            <td>media</td>
                            <td></td>
>>>>>>> origin
                        </tr>
                        <tr>
                            <td>0003</td>
                            <td>guayaba</td>
                            <td>25</td>
<<<<<<< HEAD
                            <td> <a href="#" target="_blank"><span class="glyphicon glyphicon-inbox"></span></td>
                           
                            
=======
                            <td>1000</td>
                            <td>10/10/2016</td>
                            <td>15/01/2017</td>
                            <td>13/10/2016</td>
                            <td>5</td>
                            <td>media</td>
                            <td></td>
>>>>>>> origin
                        </tr>
                        <tr>
                            <td>0004</td>
                            <td>limon</td>
                            <td>45</td>
<<<<<<< HEAD
                            <td> <a href="#" target="_blank"><span class="glyphicon glyphicon-inbox"></span></td>
                          
                            
=======
                            <td>1000</td>
                            <td>10/10/2016</td>
                            <td>15/01/2017</td>
                            <td>13/10/2016</td>
                            <td>5</td>
                            <td>media</td>
                            <td></td>
>>>>>>> origin
                        </tr>
                        <tr>
                            <td>0005</td>
                            <td>sandia</td>
                            <td>35</td>
<<<<<<< HEAD
                            <td> <a href="#" target="_blank"><span class="glyphicon glyphicon-inbox"></span></td>
                            
                            
=======
                            <td>1000</td>
                            <td>10/10/2016</td>
                            <td>15/01/2017</td>
                            <td>13/10/2016</td>
                            <td>5</td>
                            <td>media</td>
                            <td></td>
>>>>>>> origin
                        </tr>
                        <tr>
                            <td>0006</td>
                            <td>banano</td>
                            <td>80</td>
<<<<<<< HEAD
                            <td> <a href="#" target="_blank"><span class="glyphicon glyphicon-inbox"></span></td>
                           
                            
=======
                            <td>1000</td>
                            <td>10/10/2016</td>
                            <td>15/01/2017</td>
                            <td>13/10/2016</td>
                            <td>5</td>
                            <td>media</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>0007</td>
                            <td>naraja</td>
                            <td>40</td>
                            <td>1000</td>
                            <td>10/10/2016</td>
                            <td>15/01/2017</td>
                            <td>13/10/2016</td>
                            <td>5</td>
                            <td>media</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>0008</td>
                            <td>mandarina</td>
                            <td>79</td>
                            <td>1000</td>
                            <td>10/10/2016</td>
                            <td>15/01/2017</td>
                            <td>13/10/2016</td>
                            <td>5</td>
                            <td>media</td>
                        </tr>
                        <tr>
                            <td>0009</td>
                            <td>piña</td>
                            <td>46</td>
                            <td>1000</td>
                            <td>10/10/2016</td>
                            <td>15/01/2017</td>
                            <td>13/10/2016</td>
                            <td>5</td>
                            <td>media</td>
                            <td></td>
>>>>>>> origin
                        </tr>
                       
                        
                           
                    
                    </tbody>
                </table>
<<<<<<< HEAD
             
=======
              
>>>>>>> origin
            </div>

        </section><br/><br/><br/>
       
        
       <%@include file="footerModulos.jspf"%> 
    </body>
</html>
