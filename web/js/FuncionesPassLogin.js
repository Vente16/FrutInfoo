
$(document).ready(function () {
    $('.Actualizar').click(function () {

        var Id = $(this).parents('tr').attr('class');
       
        $.post('FormActualizarLogin', {"Id": Id}, function (formulario) {

            $('.FormAcutalizar').html(formulario);
            
         });    
     });
     
     $('.ActualizarDB').click(function () {

        var Id = $('#Id').val();
        var pass = $('#Contra').val();
        var rol = $('#Rol').val();
        
        $.post('ActualizarLogin',
                {"Id": Id,
                    "pass": pass,
                    "rol": rol
                }, function (Actualizar) {

            toastr.success(Actualizar);

        });

    });
     
     });


 
