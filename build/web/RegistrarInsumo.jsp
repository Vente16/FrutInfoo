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
        <title>Registrar insumo</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <%@include file="headerModulos.jspf"%>
    <body>
        <div style="padding-bottom: 40px">
            <section class="container" id="main">
                <div class="container-fluid"></div>

                <h2 style="text-align: center;">REGISTRAR INSUMOS</h2>
                <p style="text-align: center;">Registre aqui el Insumo actual.</p>

                <form action="RegInsumo" method="post" >

                    <br>
                    <div class="form-group">
                        <label class= "control-label" for="Codigo">Codigo:</label>
                        <input type="text" class="form-control" name="codigo" requerid="" id="Tipo_de_documento" >
                    </div>
                    <br>
                       <div class="form-group ">
                        <label for="Prioridad">Proveedor: </label>
                         <select class="form-control" name="proveedor">
                            <option value="1">Helados S.A</option>
                            <option value="2">Desechables S.A</option>
                            <option value="3">Minorista</option>
                        </select>
                    </div>
                    <br>
                    <div class="form-group">
                        <label for="Tipo">Tipo: </label>
                        <input type="text" class="form-control" name="tipo" id="Celular" placeholder="">
                    </div>


                    <br>
                    <div class="form-group">
                        <label for="Peso">Peso: </label>
                        <input type="text" class="form-control" name="peso" id="Celular" placeholder="">
                    </div>
                    <br>
                    <div class="form-group ">
                        <label for="Cantidad">Nombre Insumo:</label>
                        <input type="text" class="form-control" name="nombre" id="Nombre" placeholder="">
                    </div>
                    <br>
                    <div class="form-group  ">
                        <label for="Cantidad">Cantidad:</label>
                        <input type="text" class="form-control" name="cantidad" id="Nombre" placeholder="">
                    </div>
                    <br>
                    <div class="form-group ">
                        <label for="Valor">Valor: </label>
                        <input type="text" class="form-control" name="valor" id="Celular" placeholder="">
                    </div>
                    <br>
                    <div class="form-group  ">
                        <label for="Fecha de Ingreso">Fecha de Ingreso: </label>
                        <input type="date" class="form-control" name="fecha ingreso" id="Telefono" placeholder="dd/mm/aa">
                    </div> 
                    <br>
                    <div class="form-group ">
                        <label for="Fecha de Vencimiento">Fecha de Vencimiento:</label>
                        <input type="date" class="form-control"name="fecha vencimiento" id="Apellidos" placeholder="dd/mm/aa">
                    </div>
                    <br>
                    <div class="form-group">
                        <label for="Prioridad">Prioridad: </label>
                        <input type="text" class="form-control" name="prioridad" id="Celular" placeholder="">
                    </div>
                    <br>
                 
                    <div class="form-group ">

                        <button type="submit" class="btn btn-success">REGISTRAR</button>
                       
                    </div>

                </form>
            </section>

            <%@include file="footerModulos.jspf"%> 
    </body>
</html>
