<%-- 
    Document   : InforVentas
    Created on : 27/02/2017, 09:33:56 PM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Informe de ventas</title>
         <link rel="stylesheet" href="../css/bootstrap.css">
        <link rel="stylesheet" href="../css/estilos2.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
         <%@include file="../headerModulos.jspf" %>
        <div class="container">
          <section class="main container-fluid">
        <form class="navbar-left" role="search">
    <p>Fecha de Inicio</p>
    <input type="date" class="form-control" placeholder="dd/mm/aa" value="">
    <br>
    <p>Fecha Final</p>
     <input type="date" class="form-control" placeholder="dd/mm/aa" value="">
     <br>
    <button type="submit" class="btn btn-success">GENERAR</button>
    <button type="submit" class="btn btn-danger">BORRAR</button>
    <button type="submit" class="btn btn-primary">VOLVER</button>
    <br><br>
    </form>
            </select><br><br><br><br>


  <h2 style="text-align: center;">Informe de Ventas</h2>
  <br><br>
  <table class="table table-bordered table-hover">
    <thead>
      <tr>
        <th>Punto de Venta</th>
        <th>Fecha</th>
        <th>Producto</th>
        <th>Unidad Vendida</th>
        <th>Cantidad Vendida</th>
        <th>Total</th>
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
      </tr>
       <tr>
        <td>Itagui</td>
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
      </tr>
       <tr>
        <td>Poblado</td>
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
      </tr>
       <tr>
        <td>Los Sauces</td>
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
      </tr>
       <tr>
        <td>Avenida Oriental</td>
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
