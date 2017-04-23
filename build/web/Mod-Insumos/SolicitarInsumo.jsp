<%-- 
    Document   : SolicitarInsumo
    Created on : 28/02/2017, 08:02:46 PM
    Author     : SAENZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Solicitar Insumo</title>
         <link rel="stylesheet" href="../css/bootstrap.css">
        <link rel="stylesheet" href="../css/estilos2.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
     <%@include file="../headerModulos.jspf"%>
    <body>
        <section class="main container-fluid">
  <div class="container-fluid">

   <h2 style="text-align: center;">SOLICITAR INSUMO</h2>
         <p style="text-align: center;">Ingrese aqui los Insumo que desea solicitar.</p>

        

         <form class="form-group">
                               
                              <div class="form-group has-success">
                               <label for="detalle">Detalle Insumo:</label>
                                <input type="text" class="form-control" id="email" placeholder="Ingrese Insumo">
                              </div>
                                <div class="navbar-left has-success">
                                   <label for="Cantidad">Cantidad:</label>
                                    <input type="number" class="form-control" id="pwd" placeholder="Ingrese Cantidad">
                                    <br>
                                    <div class="navbar-left has-success">
                                    <label class="punto_venta">Punto de Venta:</label>
                                    <br>
                                    <select class="form-control has-success">
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
                                     <button type="button" class="btn btn-success">Agragar</button>
                                    <br>
                                    <br>
                                    </div>
                                </div>
                              
                            
                                <table class="table table-bordered"> 
                                <thead>
                                   <tr>
                                     <th>Insumo</th>
                                     <th>Catidad / unidades</th>
                                     <th>Punto de venta</th>
                                   </tr>
                                 </thead>

                                 <tbody>
                                   <tr>
                                     <td>Banano</td>
                                     <td>100</td>
                                     <td>Itagui</td>
                                   </tr>

                                 </tbody>
                               </table>
                      
                                 <button type="submit" class="btn btn-success">Solicitar</button>
                                  <button type="button" class="btn btn-primary">VOLVER</button>

</div>
            </form> 
  </section>
        
    <%@include file="../footerModulos.jspf"%>  
        
    </body>
</html>
