/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {
   $('.Detalle').click(function () {

        var nt = $(this).parents('tr').attr('class');
        console.log(nt);

        $.get('DetalleTabla', {"nt": nt}, function (detalle) {

            $('.InfoDetalle').html(detalle);


         });
    });
    
    
   
});
