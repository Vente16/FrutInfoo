<%-- 
    Document   : RegistrarEmpleados
    Created on : 26/02/2017, 09:15:36 AM
    Author     : adsi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar empleados</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>

    <body>

        <%@include file="headerModulos.jspf"%>

        <div class="container">
            <h2 style="text-align: center;"><b>REGISTRAR EMPLEADOS</b></h2>
            <h4 style="text-align: center;"><b>llene el formulario con los datos del empleado que desea registrar.</b></h4><br><br>
            <br>



            <form action="RegEmpleado" method="post">
                <div class="container">
                    <label class="form-control-label" for="index-form1-1-name"><span class="titulo">Nombres</span></label><br>
                    <input type="text" class="form-control" name="nombres"required="" data-form-field="Name" id="index-form1-1-name" placeholder="Ingrese los nombres del empleado"><br>

                    <labe2 class="form-control-label" for="index-form2-2-name"><span class="titulo"><b>Apellidos</b></span></labe2><br>
                    <input type="text" class="form-control" name="apellidos"required="" data-form-field="Name" id="index-form2-2-name" placeholder="Ingrese los apellidos del empleado"><br>

                    <label class="form-control-label" for="index-form-4-4name"><span class="titulo">Teléfono</span></label>
                    <input type="tel" class="form-control" name="telefono"required="" data-form-field="Name" id="index-form4-4-name" placeholder="Ingrese el número de teléfono del empleado"><br>

                    <label class="form-control-label" for="index-form-4-4name"><span class="titulo">Celular</span></label>
                    <input type="tel" class="form-control" name="celular"required="" data-form-field="Name" id="index-form4-4-name" placeholder="Ingrese el número celular del empleado"><br>

                    <label class="form-control-label" for="index-form3-3-name"><span class="titulo">Dirección</span></label>
                    <input type="text" class="form-control" name="direccion"required="" data-form-field="Name" id="index-form3-3-name" placeholder="Ingrese la dirección del empleado"><br>

                    <label class="form-control-label" for="index-form1-1-name"><span class="titulo">Disponibilidad</span></label>
                    <input type="text" class="form-control" name="disponibilidad"required="" data-form-field="Name" id="index-form1-1-name" placeholder="Ingrese el cargo del empleado"><br>
                    <label class="form-control-label" for="index-form1-1-name"><span class="titulo">Inicio contrato</span></label>
                    <input type="text" class="form-control" name="inicio"required="" data-form-field="Name" id="index-form1-1-name" placeholder="dd/mm/aa"><br> 
                    <label class="form-control-label" for="index-form1-1-name"><span class="titulo">Fin contrato</span></label>
                    <input type="text" class="form-control" name="fin"required="" data-form-field="Name" id="index-form1-1-name" placeholder="dd/mm/aa"><br> 
                    <label class="form-control-label" for="index-form1-1-name"><span class="titulo">Hora de inicio</span></label>
                    <input type="text" class="form-control" name="hora inicio"required="" data-form-field="Name" id="index-form1-1-name"><br> 
                    <label class="form-control-label" for="index-form1-1-name"><span class="titulo">Hora de salida</span></label>
                    <input type="text" class="form-control" name="hora salida"required="" data-form-field="Name" id="index-form1-1-name"><br>

                    <label class="form-control-label" for="index-form1-1-name"><span class="titulo">Documento de identificación</span></label><br>
                    <input type="text" class="form-control" name="documento"required="" data-form-field="Name" id="index-form1-1-name" placeholder="Ingrese el número de documento de identificación"><br>
                    <div class="form-group">
                        <label class="form-control-label" for="index-form-4-4name"><span class="titulo">Seleccione el tipo de documento</span></label>
                        <select class="form-control" name="tipo">
                            <option>Cédula de Ciudadanía(CC)</option>
                            <option>Tarjeta de Identidad (TI)</option>
                            <option>Registro Civil (RC)</option>
                            <option>Cédula de Extranjería (CE)</option>
                            <option>Otros</option>
                        </select>
                    </div>

                    <label class="form-control-label" for="index-form1-1-name"><span class="titulo">Fecha de nacimiento</span></label>
                    <input type="text" class="form-control" name="fecha"required="" data-form-field="Name" id="index-form1-1-name" placeholder="dd/mm/aa"><br> 

                    <label class="form-control-label" for="index-form1-1-name"><span class="titulo">Email</span></label>
                    <input type="text" class="form-control" name="email"required="" data-form-field="Name" id="index-form1-1-name" placeholder="Correo electronico"><br> 


                    <button type="submit" class="btn btn-success">Registrar</button>
                </div>
            </form>
        <br><br><br><br>
        <div class="modal fade" id="Confirmar" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">¿De verdad desea cuardar los siguientes datos?</h4>
                    </div>
                    <div class="modal-body">
                        <h4><b>Nombre:</b> Jhon Wilmar Venté Riascos</h4>
                        <h4><b>Documento de identificación:</b> 1021147942<br></h4>
                        <h4><b>Cargo:</b> Mesero<br></h4>
                        <h4><b>Sede en la que labora:</b> Sabaneta<br></h4>
                        <h4><b>Inicio de contrato:</b> 08/10/2016<br></h4>
                        <h4><b>Teléfono:</b> 25499852<br></h4>
                        <h4><b>Celular:</b> 3148829542<br></h4>
                        <h4><b>Dirección:</b> Calle 20 # 60-45</h4>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#Registrar">Aceptar</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                    </div>
                </div>

            </div>
        </div>

        <div class="modal fade" id="Registrar" role="dialog">
            <div class="modal-dialog">
                <!-- Cabecera del modal-->
                <div class="modal-content">
                    <div class="modal-header">
                        <div class="alert alert-success">
                            <strong>¡Éxito!</strong> Datos registrados correctamente.
                        </div>
                    </div>
                    <!-- Footer del modal, dos botones, cerrrar y Acceder-->
                    <div class="modal-footer">

                        <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>





    </div>


    <%@include file="footerModulos.jspf" %>


</body>

</html>
