<%-- 
    Document   : SolicitarInsumo
    Created on : 28/02/2017, 08:02:46 PM
    Author     : SAENZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOC<TYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Solicitar Insumo</title>
            <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
            <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css"/>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
            <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/js/bootstrapValidator.min.js"></script>
            <link rel="stylesheet" href="css/bootstrap.css">
            <link rel="stylesheet" href="css/estilos2.css">
        <script src="js/ValidacionSolicitidIns.js"></script>
    </head>
                       
    <body>
  
    <%@include file="headerModulos.jspf"%><br>

    <main>
        <div class="containerForm">
            <div style="margin-top: 100px">
                <h2 style="text-align: center;">Solicitar Insumos</h2><br><br>
            </div>

            <div class="continer-propio">
                <form  class="form-horizontal" id="SolicitarIns" action="SolicitarInsumo" method="post" >

                    <div  id="nombrev" class="form-group">
                        <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Nombre del Insumo</span></label>
                        <div class="col-xs-10">
                            <input id="nombre_insumo" type="text" name="insumo" class="form-control" placeholder="Digite el nombre del insumo"><br>
                            <span class="" id="validarn"></span>
                        </div>
                    </div>

                    <div  id="cantidadv" class="form-group">
                        <label class="col-sm-2 control-label" for="inputSuccess"><span class="titulo">Cantidad</span></label>
                        <div class="col-xs-10">
                            <input id="cantidad" type="text" class="form-control" name="cantidad"  placeholder="Digite la cantidad a solicitar"><br>
                            <span class="" id="validarc"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="inputSuccess">
                            <span class="titulo">Punto de Venta</span></label>
                        <div class="col-xs-10">
                            <select class="form-control" name="tipo_sede">
                                <option></option>
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
                    </div>    

                    <div id="fechav" class="form-group">
                        <label  class="col-sm-2 control-label" for="inputSuccess"><span class="titulo"><b>Fecha Solicitud</b></span></label>
                        <div class="col-xs-10">
                            <input type="date" name="fecha_solicitud" class="form-control" id="fecha_solicitud"  placeholder="dd/mm/aa"><br>
                            <span class="" id="validarf"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-8">
                            <button type="submit" class="btn btn-success">Solicitar</button>
                        </div>
                    </div>


                </form> 
            </div>
        </div>
    </main>  <br>    
    <%@include file="footer.jspf" %>   

</body>

</html>

                        
