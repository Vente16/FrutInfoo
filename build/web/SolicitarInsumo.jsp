<%-- 
    Document   : SolicitarInsumo
    Created on : 28/02/2017, 08:02:46 PM
    Author     : SAENZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Solicitar Insumo</title>
            <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
                <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css"/>
                <link rel="stylesheet" href="css/bootstrap.css">
                    <link rel="stylesheet" href="css/estilos2.css">
                        <!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
                          <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
                        </head>
                       <%@include file="headerModulos.jspf"%>
                        <body>

                            <div class="container">

                                <h2 style="text-align: center;">SOLICITAR INSUMO</h2>
                                <p style="text-align: center;">Ingrese aqui los Insumo que desea solicitar.</p>



                                <form action="SolicitarInsumo" method="post" id="SolicitarIns">

                                    <div class="form-group">
                                        <label for="detalle">Nombre Insumo:</label>
                                        <input type="text" name="nombre_insumo" class="form-control" placeholder="Ingrese Insumo">
                                    </div>
                                    <div class="form-group">
                                        <label for="Cantidad">Cantidad:</label>
                                        <input type="text" name="cantidad" class="form-control"  placeholder="Ingrese Cantidad">
                                    </div>

                                    <div class="form-group">
                                        <label for="punto venta">Punto Venta:</label>
                                        <select class="form-control" name="tipo_sede">
                                            <option value="1">Envigado</option>
                                            <option value="2">Itagui</option>
                                            <option value="3">Sabaneta</option>
                                            <option value="4">Poblado</option>
                                            <option value="5">Crr 80</option>
                                            <option value="6">Los Sauces</option>
                                            <option value="7">Laureles</option>
                                            <option value="8">Avenida Oriental</option>
                                            <option value="9">Bello</option>
                                            <option value="10">Belén</option>
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="detalle">Autorizar:</label>
                                        <input type="text" name="autorizar" class="form-control" placeholder="si/no">
                                    </div>
                                    <div class="form-group">
                                        <label for="Cantidad">Fecha Solicitud:</label>
                                        <input type="date"  name="fecha_solicitud" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="detalle">Fecha Autorización:</label>
                                        <input type="date" name="fecha_aut" class="form-control" >
                                    </div>

                                    <button type="submit" class="btn btn-success">Solicitar</button>

                                </form> 
                            </div>

                            <%@include file="footerModulos.jspf"%>  
                            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
                            <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
                            <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/js/bootstrapValidator.min.js"></script>
                            <script src="js/ValidarSolIns.js"></script>
                        </body>

                        
