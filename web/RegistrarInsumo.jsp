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
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
                <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
                <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/js/bootstrapValidator.min.js"></script>
                <link rel="stylesheet" href="css/bootstrap.css">
                <link rel="stylesheet" href="css/estilos2.css">
                <script src="js/ValidacionRegInsumo.js"></script>
                </head>
   
                        <body>
                            <%@include file="headerModulos.jspf"%><br>
                                <main>

                                    <div class="containerForm">  
                                        <div style="margin-top: 20px">
                                            <h2 style="text-align: center;"><b>Registrar Insumos</b></h2><br><br>
                                                    </div> 


                                                    <div class="continer-propio">
                                                        <form class="form-horizontal" id="RegInsumo" action="RegInsumo" method="post" id="FormRegisIns" >

                                                            <div id="codigov" class="form-group">
                                                                <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Codigo</span></label>
                                                                <div class="col-xs-10">
                                                                    <input id="codigo" type="text" class="form-control" name="codigo"  placeholder="Digite el Codigo del insumo"><br>
                                                                            <span class="" id="validarc"></span>
                                                                            </div>
                                                                            </div>


                                                                            <div class="form-group ">
                                                                                <label class="col-sm-2 control-label" for="inputSuccess">
                                                                                    <span class="titulo">Proveedor</span></label>
                                                                                <div class="col-xs-10">
                                                                                    <select class="form-control" name="proveedor">
                                                                                        <option></option>
                                                                                        <option value="1">Helados S.A</option>
                                                                                        <option value="2">Desechables S.A</option>
                                                                                        <option value="3">Minorista</option>
                                                                                    </select>
                                                                                </div>          
                                                                            </div><br>

                                                                                <div id="tipov" class="form-group">
                                                                                    <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Tipo</span></label>
                                                                                    <div class="col-xs-10">
                                                                                        <input id="tipo" type="text" class="form-control" name="tipo"  placeholder="Digite el tipo de insumo"><br>
                                                                                                <span class="" id="validart"></span>
                                                                                                </div>
                                                                                                </div>
                                                                                                <div id="pesov" class="form-group">
                                                                                                    <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Peso</span></label>
                                                                                                    <div class="col-xs-10">
                                                                                                        <input id="peso" type="text" class="form-control" name="peso"  placeholder="Digite el peso del insumo"><br>
                                                                                                                <span class="" id="validarp"></span>
                                                                                                                </div>
                                                                                                                </div>
                                                                                                                <div id="insumov" class="form-group ">
                                                                                                                    <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Nombre Insumo</span></label>
                                                                                                                    <div class="col-xs-10">
                                                                                                                        <input id="nombreI" type="text" class="form-control" name="nombre"  placeholder="Digite el nombre del insumo"><br>
                                                                                                                                <span class="" id="validari"></span>
                                                                                                                                </div>
                                                                                                                                </div>
                                                                                                                                <div id="cantidadv" class="form-group  ">
                                                                                                                                    <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Cantidad</span></label>
                                                                                                                                    <div class="col-xs-10">
                                                                                                                                        <input id="cantidad" type="text" class="form-control" name="cantidad"  placeholder="Digite la cantidad"><br>
                                                                                                                                                <span class="" id="validarc"></span>
                                                                                                                                                </div>
                                                                                                                                                </div>
                                                                                                                                                <div id="valorv" class="form-group ">
                                                                                                                                                    <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Valor</span></label>
                                                                                                                                                    <div class="col-xs-10">
                                                                                                                                                        <input id="valor" type="text" class="form-control" name="valor"  placeholder="Digite el valor del insumo"><br>
                                                                                                                                                                <span class="" id="validarv"></span>
                                                                                                                                                                </div>
                                                                                                                                                                </div>
                                                                                                                                                                <div id="fechIv" class="form-group  ">
                                                                                                                                                                    <label  class="col-sm-2 control-label" for="inputSuccess"><span class="titulo"><b>Fecha de Ingreso</b></span></label>
                                                                                                                                                                    <div class="col-xs-10">
                                                                                                                                                                        <input type="date" name="fecha_ingreso" class="form-control" id="fecha_ingreso"  placeholder="dd/mm/aa"><br>
                                                                                                                                                                                <span class="" id="validarfi"></span>
                                                                                                                                                                                </div>
                                                                                                                                                                                </div> <br>
                                                                                                                                                                                    <div  id="fechaVv" class="form-group ">
                                                                                                                                                                                        <label  class="col-sm-2 control-label" for="inputSuccess"><span class="titulo"><b>Fecha de Vencimiento</b></span></label>
                                                                                                                                                                                        <div class="col-xs-10">
                                                                                                                                                                                            <input type="date" name="fechavencimiento" class="form-control" id="fecha_venc"  placeholder="dd/mm/aa"><br>
                                                                                                                                                                                                    <span class="" id="validarfv"></span>
                                                                                                                                                                                                    </div>
                                                                                                                                                                                                    </div>
                                                                                                                                                                                                    <br>
                                                                                                                                                                                                        <div id="prioridadv" class="form-group">
                                                                                                                                                                                                        <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Prioridad</span></label>
                                                                                                                                                                                                        <div class="col-xs-10">
                                                                                                                                                                                                        <input id="prioridad" type="text" class="form-control" name="prioridad"  placeholder="Digite la prioridad"><br>
                                                                                                                                                                                                        <span class="" id="validarp"></span>
                                                                                                                                                                                                        </div>
                                                                                                                                                                                                        </div> <br> <br>
                                                                                                                                                                                                        <div class="form-group ">
                                                                                                                                                                                                        <div class="col-xs-10">
                                                                                                                                                                                                        <button type="submit" class="btn btn-success">REGISTRAR</button>
                                                                                                                                                                                                        </div>
                                                                                                                                                                                                        </div>
                                                                                                                                                                                                        </form>

                                                                                                                                                                                                        </div>

                                                                                                                                                                                                        </div>






                                                                                                                                                                                                        </main><br>
                                                                                                                                                                                                        <%@include file="footer.jspf" %> 


                                                                                                                                                                                                        </body>
                                                                                                                                                                                                        </html>
