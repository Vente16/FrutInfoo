
$(document).ready(function () {
   $('.Detalle').click(function () {

        var nt = $(this).parents('tr').attr('class');
        console.log(nt);

        $.get('DetalleTabla', {"nt": nt}, function (detalle) {

            $('.InfoDetalle').html(detalle);


         });
    });
    $('.habilitado:last-child').click(function () {
        var m=$(this).html();
        console.log(m);
    });
    
//        $('.habilitado:last-child').html("<input type='checkbox' class='chek'>");
    
    
    
   
   
});
