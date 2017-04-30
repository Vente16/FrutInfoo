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
<<<<<<< HEAD
      
            <input type="text" placeholder="Codigo del Producto" class="campos" id="codigo" > 
            <br><br>
                <input type="number" placeholder="Cantidad del Producto" class="campos" id="cantidad">
                <div id="Validar"></div>
                <br><br>

                <button type="button" class="btn btn-success Agregar">AGREGAR</button>
            
        </div>
      
=======
            <form class="navbar-left" role="search">

                <input type="text" class="form-control" placeholder="Codigo del Producto" value="">
                <br>
                <input type="text" class="form-control" placeholder="Cantidad del Producto" value="">
                <br>

                <button type="submit" class="btn btn-success">AGREGAR</button>
            </form>
        </div><br>
        <br>
        <br><br>


>>>>>>> origin

        <div style="margin-top: 100px">
            <h2 style="text-align: center;">Estos son los Productos Seleccionados</h2><br>
            <p style="text-align: left;">A continuación verá toda la información de los productos agragados </p>
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
<<<<<<< HEAD
            <tbody class="tabla">
              
=======
            <tbody>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><button class="btn btn-primary glyphicon glyphicon-edit"></button></td>
                </tr>



                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>


                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>


                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>


                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
>>>>>>> origin
            </tbody>
            
            <tfoot>
                
               <tr>
	         <td colspan="6" style="text-align:right">Total</td>
	         <td id="Total">0</td>
	       </tr> 
                
            </tfoot>
            
            
            
        </table>
<<<<<<< HEAD
      
=======
        <button type="submit" class="btn btn-success">GUARDAR</button>

        
>>>>>>> origin

</div>
<%@include file="footerModulos.jspf" %>
</html>
