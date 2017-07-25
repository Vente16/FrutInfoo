<%-- 
    Document   : RegistrarVenta
    Created on : 3/07/2017, 09:45:51 AM
    Author     : John Jairo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Ventas</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script src="js/validacionFormVenta.js"></script>
    </head>
    <body>

        <%@include file="headerModulos.jspf" %>
        <main>
            <div class="container">
                <div style="margin-top: 100px">
                    <h2 style="text-align: center;">Registro de Ventas</h2><br><br>
                </div>
                <div class="continer">
                    <form  class="form-horizontal" role= "form" action="RegVentas" method="post">

                        <div class="form-group">    
                            <label class="col-sm-2 control-label" for="inputSuccess">
                                <span class="titulo">Nombre producto</span></label>
                            <div class="col-xs-8">
                                <select class="form-control" name="producto">
                                    <option>Banana Split</option>
                                    <option>Brevas</option>
                                    <option>Mr Brownie</option>
                                    <option>Mr Fresa</option>
                                    <option>Mr Arequipe</option>
                                    <option>Jugo</option>
                                    <option>Mr Mora</option>
                                    <option>Salpicon</option>
                                    <option>Ensalada frutas grande</option>
                                    <option>Ensalada frutas mediana</option>
                                    <option>Ensalada frutas pequeña</option>
                                    <option>Concha grande</option>
                                    <option>Concha mediana</option>
                                    <option>Concha pequeña</option>
                                    <option>Encanto</option>
                                    <option>Pasion</option>
                                    <option>Capricho</option>
                                    <option>Banana Jungle</option>  
                                </select>
                            </div>
                        </div>

                        <div id="cantidadv" class="form-group">
                            <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Cantidad Producto</span></label>
                            <div class="col-xs-8">
                                <input id="cantidad" type="text" name="cantidad" class="form-control"  placeholder="Ingrese la cantidad del producto "><br>
                                <span class="" id="validarcp"></span>
                            </div>
                        </div>

                        <div id="preciov" class="form-group">
                            <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Precio Unitario</span></label>
                            <div class="col-xs-8">
                                <input id="precio" type="text" name="precio" class="form-control"  placeholder="Ingrese el precio del producto "><br>
                                <span class="" id="validarp"></span>
                            </div>
                        </div>

                        <div id="ivav" class="form-group">
                            <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Iva</span></label>
                            <div class="col-xs-8">
                                <input id="iva" type="text" name="iva" class="form-control"  placeholder="Ingrese el Iva del producto "><br>
                                <span class="" id="validari"></span>
                            </div>
                        </div>

                        <div id="totalv" class="form-group">
                            <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Total del Producto</span></label>
                            <div class="col-xs-8">
                                <input id="total" type="text" name="total" class="form-control"  placeholder="Ingrese el total del producto "><br>
                                <span class="" id="validart"></span>
                            </div>
                        </div>

                        <div class="form-group" >    
                            <label class="col-sm-2 control-label" for="inputSuccess">
                                <span class="titulo">tipo de venta</span></label>
                            <div class="col-xs-8">
                                <select class="form-control" name="Tventa">
                                    <option>Domicilio</option>
                                    <option>Punto de venta </option>
                                </select>
                            </div>
                        </div>

                        <div  id="fechav" class="form-group">
                            <label  class="col-sm-2 control-label" for="inputSuccess"><span class="titulo"><b>Fecha de la Venta</b></span></label>
                            <div class="col-xs-8">
                                <input  id="fecha" type="date" name="FechaVen" class="form-control" placeholder="dd/mm/aa"><br>
                                <span class="" id="validarFech"></span>
                            </div>
                        </div>

                        <div  id="horav" class="form-group">
                            <label  class="col-sm-2 control-label" for="inputSuccess"><span class="titulo"><b>Hora de la Venta</b></span></label>
                            <div class="col-xs-8">
                                <input  id="fecha" type="time" name="hora" class="form-control" placeholder="xx:xx am/pm"><br>
                                <span class="" id="validarhv"></span>
                            </div>
                        </div>


                        <div id="pedidov" class="form-group">
                            <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Número del pedido</span></label>
                            <div class="col-xs-8">
                                <input id="pedido" type="number" name="IdPedido" class="form-control"  placeholder="Ingrese el número del pedido"><br>
                                <span class="" id="validarp"></span>
                            </div>
                        </div>

                        <div  id="clientev" class="form-group">
                            <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Número del cliente</span></label>
                            <div class="col-xs-8">
                                <input id="cliente" type="number" class="form-control" name="IdCliente"  placeholder="Ingrese el número del cliente"><br>
                                <span class="titulo" id="validarc"></span>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-8">
                                <button type="submit" class="btn btn-success">REGISTRAR</button>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </main>
        <%@include file="footer.jspf" %>  
    </body>
</html>
