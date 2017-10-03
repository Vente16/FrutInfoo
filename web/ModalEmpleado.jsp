<%-- 
    Document   : DetalleEmpleado
    Created on : 30-abr-2017, 2:59:21
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!--Modal Detalle-->
<div id="Detalle" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header color">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h3 class="modal-title"><strong>Información detallada del empleado</strong></h3>
            </div>
            <div class="modal-body InfoDetalle">

            </div>
            <div class="modal-footer color">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>

<!--Modal Actualizar-->
<div id="Actualizar" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header color">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h3 class="modal-title"><strong>Actualizar datos del empleado</strong></h3>
            </div>
            <div class="modal-body FormActualizar">

            </div>
            <div class="modal-footer color">
                <button type="button" class="btn btn-success ActualizarDB" data-dismiss="modal">Actualizar</button> 
                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>
