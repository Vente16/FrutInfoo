<%-- 
    Document   : FacturaVentas
    Created on : 27/02/2017, 09:42:13 PM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Factura de ventas</title>
        <link rel="stylesheet" href="../css/bootstrap.css">
        <link rel="stylesheet" href="../css/estilos2.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="../headerModulos.jspf" %><br>
        <div class="container">   
            <div>
                <form class="navbar-left" role="search"><br>
                    <p>Digite el número de la Factura</p>
                    <input type="number" class="form-control" placeholder="" value="">
                    <br>

                    <button type="submit" class="btn btn-succes">GENERAR</button>
                </form>
            </div>



            <div style="margin-top: 100px">
                <h2 style="text-align: center;">Generar Factura De venta</h2>
            </div>
            <br>
            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>Descripción</th>
                        <th>Cantidad</th>
                        <th>Valor.Unt</th>
                        <th>Iva</th>
                        <th>Valor.Total</th>
                    </tr> 
                </thead>
                <tbody>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
                <tbody>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
                 <tbody>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
                 <tbody>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
                 <tbody>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
                 <tbody>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
                 <tbody>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
                 <tbody>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
               
             
            </table>
            <button type="submit" class="btn btn-success">IMPRIMIR</button>

            <button type="submit" class="btn btn-primary">VOLVER</button>


        </section>
    </div>

    <br><br><br><br>

  <%@include file="../footerModulos.jspf" %>
</body>
</html>
