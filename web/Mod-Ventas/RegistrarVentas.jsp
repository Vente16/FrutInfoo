<%-- 
    Document   : RegistrarVentas
    Created on : 26/02/2017, 11:13:13 AM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar venta</title>
          <link rel="stylesheet" href="../css/bootstrap.css">
        <link rel="stylesheet" href="../css/estilos2.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    
         <%@include file="../headerModulos.jspf" %>
         

 <br><br>
   <div>
       <form class="navbar-left" role="search">

    <input type="number" class="form-control" placeholder="Codigo del Producto" value="">
    <br>
     <input type="number" class="form-control" placeholder="Cantidad del Producto" value="">
    <br>
  
    <button type="submit" class="btn btn-success">AGREGAR</button>
    </form>
    </div><br>
    <br>
    <br><br>
            

  
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
   <button type="submit" class="btn btn-success">MODIFICAR</button>
  </div>
  <button type="submit" class="btn btn-primary">VOLVER</button>
  </div>

     </section>
         <%@include file="../footer.jspf" %>
    
</html>
