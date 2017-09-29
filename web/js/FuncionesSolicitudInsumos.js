$(document).ready(function () {
   
     
   
   
    $('.Detalle').click(function () {
        var Id = $(this).parents('tr').attr('class');
        $.get('DetalleSolicitudInsumos', {"Id":Id}, function (DSolicitudInsumo) {
            $('.InfoDetalle').html(DSolicitudInsumo);
        });
    });
    
    $('.autorizar').click(function () {
        var Id = $(this).parents('tr').attr('class');
        var data = {"metodo": "autorizarInsumo", "Id": Id};
        $.get('permisoSolicitudInsummos',data, function (soli) {
            
            console.log(soli);
            toastr.success("<h3>Insumo autorizado</h3>");
            
            $('.'+Id).remove();
            
        }); 
        //alert(Id);
    });
    
     $('.desautorizar').click(function () {
        var Id = $(this).parents('tr').attr('class');
        var data = {"metodo": "desautorizarInsumo", "Id": Id};
        $.get('permisoSolicitudInsummos',data, function (soli) {
            
            console.log(soli);
            
             toastr.warning("<h3>Insumo desautorizado</h3>");
             $('.'+Id).remove();
            
        }); 
     
    });
    
    
});