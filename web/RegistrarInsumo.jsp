<%-- 
    Document   : RegistrarInsumo
    Created on : 28/02/2017, 07:21:55 PM
    Author     : SAENZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar insumo</title>  
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css"/>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/estilos2.css">
       
    </head>
    <%@include file="headerModulos.jspf"%>
    <body>
        <div style="padding-bottom: 40px">
            <section class="container" id="main">
                <div class="container-fluid"></div>

                <h2 style="text-align: center;">REGISTRAR INSUMOS</h2>
                <p style="text-align: center;">Registre aqui el Insumo actual.</p>

                <form action="RegInsumo" method="post" id="FormRegisIns" >

                    <br>

                    <div class="form-group">
                        <label class= "control-label" for="Codigo">Codigo:</label>
                        <input type="text" class="form-control" name="codigo" >

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
                        <input type="text" class="form-control" name="tipo">
                    </div>


                    <br>
                    <div class="form-group">
                        <label for="Peso">Peso: </label>
                        <input type="text" class="form-control" name="peso">
                    </div>
                    <br>
                    <div class="form-group ">
                        <label for="Cantidad">Nombre Insumo:</label>
                        <input type="text" class="form-control" name="nombre">
                    </div>
                    <br>
                    <div class="form-group  ">
                        <label for="Cantidad">Cantidad:</label>
                        <input type="text" class="form-control" name="cantidad">
                    </div>
                    <br>
                    <div class="form-group ">
                        <label for="Valor">Valor: </label>
                        <input type="text" class="form-control" name="valor">
                    </div>
                    <br>
                    <div class="form-group  ">
                        <label for="Fecha de Ingreso">Fecha de Ingreso: </label>
                        <input type="date" class="form-control" name="fecha_ingreso" placeholder="dd/mm/aa">
                    </div> 
                    <br>
                    <div class="form-group ">
                        <label for="Fecha de Vencimiento">Fecha de Vencimiento:</label>
                        <input type="date" class="form-control"name="fecha_vencimiento"  placeholder="dd/mm/aa">
                    </div>
                    <br>
                    <div class="form-group">
                        <label for="Prioridad">Prioridad: </label>
                        <input type="text" class="form-control" name="prioridad">
                    </div>
                    <br>
                 
                    <div class="form-group ">

                        <button type="submit" class="btn btn-success">REGISTRAR</button>
                        
                      
                       
                    </div>

                </form>
            </section>

            <%@include file="footerModulos.jspf"%> 
             <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
             <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
             <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/js/bootstrapValidator.min.js"></script>
             <script src="js/ValidarRegInsumo.js"></script> 
             
    </body>
</html>
