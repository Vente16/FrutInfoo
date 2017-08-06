$(document).ready(function () {
   
    $('.Detalle').click(function () {
       var Id = $(this).parents('tr').attr('class');
       $.get('DetalleDomicilio', {"Id":Id}, function (detalle) {
            $('.InfoDetalle').html(detalle);
        })
        
    });
    
});


