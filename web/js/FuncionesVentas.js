$(document).ready(function () {
   
    $('.Detalle').click(function () {
       var Id = $(this).parents('tr').attr('class');
       $.get('DetalleVentas', {"Id":Id}, function (detalle) {
            $('.InfoDetalle').html(detalle);
        })
        
    });
    
});