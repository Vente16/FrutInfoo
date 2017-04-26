<%-- 
    Document   : VerlistadeInsumos
    Created on : 28/02/2017, 08:18:13 PM
    Author     : SAENZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar insumos</title>
         <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
     <%@include file="headerModulos.jspf"%>
    <body>
        <section class="main container-fluid">
        <div class="container-fluid">
             <h2 style="text-align: center;">MODIFICAR INSUMO</h2>
             <p style="text-align: center;">Ingrese aqui el Insumo el cual desea modificar.</p>


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
                                    <option >Sabaneta</option>ss
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
                                <button type="button" class="btn btn-primary">VOLVER</button>
                                
                            </form>
                            </div>
                        </section>
              
     <%@include file="footerModulos.jspf"%>     
    </body>
</html>
