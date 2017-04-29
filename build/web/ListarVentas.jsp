<%-- 
    Document   : ListarVentas
    Created on : 27/02/2017, 09:11:53 PM
    Author     : John Jairo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar ventas</title>
         <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="headerModulos.jspf" %>
        <br>
         <div class="container">
        <section class="main container-fluid">
        <div class="container-fluid">
        <div class="navbar-left has-success">
                                    <label class="punto_venta">Por Sede:</label>
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
            <br>
             <button type="submit" class="btn btn-success">GENERAR</button>
            
             
  
        </div><br><br>
      
  <h2 style="text-align: center;">Lista de Ventas</h2><br><br>
  <p style="text-align: left;">En el siguiente informe podra ver todas las ventas por su respectiva sede</p>
  <table class="table table-bordered table-hover">
    <thead>
      <tr>
        <th>Codigo del Producto</th>
        <th>Nombre del Producto</th>
        <th>Cantidad del Producto</th>
        <th>Precio Unitario</th>
        <th>Total</th>
        <th>Iva</th>
        <th>Total a Pagar</th>
      </tr>
    </thead>
    <tbody>
      <tr>
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
      </tr>
       <tr>
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
      </tr>
    </tr>
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
      </tr>
       <tr>
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
      </tr>
       <tr>
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
      </tr> 
    </tbody>
  </table>
  

     </section>
         </div>
         

       <%@include file="footerModulos.jspf" %>
    </body>
</html>
