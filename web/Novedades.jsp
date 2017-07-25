


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novedades</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="js/consultarNovedad.js"></script>
    </head>


    <body>

        <%@include file="headerModulos.jspf" %> <br><br>

        <div class="container">
                
           
            <br><br>
            <label class="form-control-label" for="index-form1-1-name" class="label"><span class="titulo">Documento de identifición</span></label>
            <input type="text" name="" id="documento" class="form-control" placeholder="Ingrese el documento de identificación del empleado">

            <br> <button type="button" class="btn btn-success consultar">Consultar</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="button" value="Registrar Novedad" onClick="location.href ='RegistrarNovedad.jsp'" class="btn btn-primary" />

            <small class="mbr-section-subtitle"></small>
            <br><br>

        </div>

    </div>

    
    <div class="container">

        <div style="text-align:center">
            <h2>NOVEDADES</h2>
            <h4>Estas son todas las actividades relacionadas con  los empleados ya sean incapacidades, vacaciones, etc..</h4>
        </div>
        <br> 
        <div id="respuesta">
            
        </div>
        <div class="table table-responsive">
              
            <table class="table table-hover">
                <thead>
                   <th>Documento</th>
                   <th>Nombre de empleado</th>
                   <th>Tipo de novedad</th>  
                   <th>Detalle</th>
                </thead>
                
                <tbody id="info">
                    
                    
                </tbody>
                
                 
            </table>
            
        </div>
        
        <div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Información detallada</h4>
      </div>
      <div class="modal-body">
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
      </div>
    </div>

  </div>
</div>
     
        <div id="espacio">
            
        </div>
             
    </div><br><br><br>
  <%@include file="footerModulos.jspf" %>

 
</body>
</html>
