/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {
    $('.Actualizar').click(function () {

        var Id = $(this).parents('tr').attr('class');
        console.log(Id);
        $.post('FormActualizarLogin', {"Id": Id}, function (formulario) {

            $('.FormAcutalizar').html(formulario);
            
         });    
     });
     });


 
