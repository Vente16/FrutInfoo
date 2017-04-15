<%-- 
    Document   : RegistrarInsumo
    Created on : 28/02/2017, 07:21:55 PM
    Author     : SAENZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="../css/bootstrap.css">
        <link rel="stylesheet" href="../css/estilos2.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
     <%@include file="../headerModulos.jspf"%>
    <body>
        <div style="padding-bottom: 40px">
            <section class="container" id="main">
        <div class="container-fluid"></div>

        <h2 style="text-align: center;">REGISTRAR INSUMOS</h2>
         <p style="text-align: center;">Registre aqui el Insumo actual.</p>

        <form action="" class="form-group has-success">
      
    <br>
     <div class="form-group  has-success">
      <label class= "control-label" for="Codigo">Codigo:</label>
      <input type="text" class="form-control" id="Tipo_de_documento" placeholder="">
    </div>
    <br>
    <div class="form-group has-success">
      <label for="Datalle" >Detalle: </label>
      <input type="text" class="form-control" id="documento" placeholder="">
    </div>
    <br>
  <div class="form-group  has-success">
    <label for="Cantidad">Cantidad:</label>
    <input type="number" class="form-control" id="Nombre" placeholder="">
  </div>
  <br>
  <div class="form-group  has-success">
    <label for="Fecha de Vencimiento">Fecha de Vencimiento:</label>
    <input type="date" class="form-control" id="Apellidos" placeholder="dd/mm/aa">
  </div>
  <br>
  <div class="form-group  has-success">
    <label for="Fecha de Ingreso">Fecha de Ingreso: </label>
    <input type="date" class="form-control" id="Telefono" placeholder="dd/mm/aa">
  </div> 
  <br>
  <div class="form-group has-success">
    <label for="Proveedor">Proveedor: </label>
    <input type="text" class="form-control" id="Direccion" placeholder="">
  </div>
  <br>
   <div class="form-group has-success">
    <label for="Tipo">Tipo: </label>
    <input type="text" class="form-control" id="Celular" placeholder="">

  </div>
  <br>
    <div class="form-group has-success">
    <label for="Peso">Peso: </label>
    <input type="text" class="form-control" id="Celular" placeholder="">
  </div>
  <br>
  <div class="form-group has">
 
  <input type="button" class="btn btn-success" value="Guardar" id="boton">
  <button type="button" class="btn btn-primary">VOLVER</button>
  </div>

</form>
</section>

         <%@include file="../footerModulos.jspf"%> 
    </body>
</html>
