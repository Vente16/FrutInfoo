<%-- 
    Document   : ListarVentas
    Created on : 27/02/2017, 09:11:53 PM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar ventas</title>
         <link rel="stylesheet" href="../css/bootstrap.css">
        <link rel="stylesheet" href="../css/estilos2.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="../headerModulos.jspf" %>
        <br>
         <div class="container">
        <section class="main container-fluid">
        <div class="container-fluid">
        <select name="ver_info_ventas" id="info_ventas">
                <option value="">por sede</option>
                <option value="">al dia</option>
                <option value="">en general</option>
            </select>
            <br>
            <br>
             <button type="submit" class="btn btn-success">GENERAR</button>
              <button type="submit" class="btn btn-success">EDITAR</button>
               <button type="submit" class="btn btn-primary">VOLVER</button>
  
  </div>
      
  <h2 style="text-align: center;">Lista de Ventas</h2><br><br>
  <p style="text-align: left;">En el siguiente informe podra ver todas las ventas por su respectiva sede</p>
  <table class="table table-bordered table-hover">
    <thead>
      <tr>
        <th>Sede</th>
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
        <td>Envigado</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
       <tr>
        <td>Itagui</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
       <tr>
        <td>Sabaneta</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
       <tr>
        <td>Poblado</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
       <tr>
        <td>Carrera 80</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
       <tr>
        <td>Los Sauces</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
       <tr>
        <td>Laureles</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
       <tr>
        <td>Avenida Oriental</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
       <tr>
        <td>Bello</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
       <tr>
        <td>Belen</td>
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
         

         <%@include file="../footer.jspf" %>
    </body>
</html>
