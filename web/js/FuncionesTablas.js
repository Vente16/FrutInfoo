
$(document).ready(function () {
   $('.Detalle').click(function () {

        var nt = $(this).parents('tr').attr('class');
        console.log(nt);

        $.get('DetalleTabla', {"nt": nt}, function (detalle) {

            $('.InfoDetalle').html(detalle);


         });
    });
    
    
   
});
