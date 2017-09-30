<%-- 
    Document   : Modal
    Created on : 28-abr-2017, 20:23:45
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div id="Detalle" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header color">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h3 class="modal-title"><strong>Información detallada del cliente</strong></h3>
            </div>
            <div class="modal-body InfoDetalle">

            </div>
            <div class="modal-footer color">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
            </div>
        </div>

    </div>
</div>


<div id="Actualizar" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header color">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h3 class="modal-title"><strong>Actualizar datos del cliente</strong></h3>
      </div>
      <div class="modal-body FormAcutalizar">
        
      </div>
      <div class="modal-footer color">
        <button type="button" class="btn btn-success ActualizarDB" data-dismiss="modal">Actualizar</button> 
        <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
      </div>
    </div>

  </div>
</div>






