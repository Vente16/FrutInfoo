<%-- 
    Document   : RegistrarVentas
    Created on : 26/02/2017, 11:13:13 AM
    Author     : John jairo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar venta</title>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="js/Funciones_1.js"></script> 
    </head>

    <%@include file="headerModulos.jspf" %>


    <br><br>
    <div class="container">
        <div>
      
            <input type="text" placeholder="Codigo del Producto" class="campos" id="codigo" > 
            <br><br>
                <input type="number" placeholder="Cantidad del Producto" class="campos" id="cantidad">
                <div id="Validar"></div>
                <br><br>

                <button type="button" class="btn btn-success Agregar">AGREGAR</button>
            
        </div>
      

        <div style="margin-top: 100px">
            <h2 style="text-align: center;">Estos son los Productos Seleccionados</h2><br>
            <p style="text-align: left;">a continuación verá toda la información de los productos agragados </p>
        </div>
        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>Codigo del Producto</th>
                    <th>Nombre del Producto</th>
                    <th>Cantidad del Producto</th>
                    <th>Precio Unitario</th>
                    <th>Total</th>
                    <th>Iva</th>
                    <th>Costo</th>
                    <th>Eliminar</th>
                    
                </tr> 
            </thead>
            <tbody class="tabla">
              
            </tbody>
            
            <tfoot>
                
               <tr>
	         <td colspan="6" style="text-align:right">Total</td>
	         <td id="Total">0</td>
	       </tr> 
                
            </tfoot>
            
            
            
        </table>
      

</div>
<%@include file="footerModulos.jspf" %>
</html>
