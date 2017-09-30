$(document).ready(function(){
    
    $('.Detalle').click(function () {
        var Id = $(this).parents('tr').attr('class');
        $.get('DetalleEstadoInsumos', {"Id":Id}, function (DSolicitudInsumo) {
            $('.InfoDetalle').html(DSolicitudInsumo);
        });
    });
    
});


