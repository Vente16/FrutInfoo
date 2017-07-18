
$(document).ready(function(){
    
    
    
     $('.Detalle').click(function () {

        var Id = $(this).parents('tr').attr('class');
        console.log("hola " + Id);
        $.get('DetalleEmpleado', {"Id": Id}, function (detalle) {

            $('.InfoDetalle').html(detalle);


         });




    });


    $('.Actualizar').click(function () {


        var Id = $(this).parents('tr').attr('class');
        
        $.post('FormActualizarEmpleados', {"Id": Id}, function (formulario) {

            $('.FormActualizar').html(formulario);


         });


    });

    $('.ActualizarDB').click(function () {

        var Id = $('#Id').val();
        var Nombre = $('#Nombre').val();
        var TipoDoc = $('#Tdoc').val();
        var Apellido = $('#Apellido').val();
        var Telefono = $('#Telefono').val();
        var Celular = $('#Celular').val();
        var Disponibilidad = $('#Disponibilidad').val();
        var Inicon = $('#Inicon').val();
        var Fincon = $('#Fincon').val();
        var Horaini = $('#Horaini').val();
        var Horafin = $('#Horafin').val();
        var FechaN = $('#fechaN').val();
        var Correo = $('#Correo').val();
        var Documento = $('#Documento').val();
        console.log(Documento);

        $.post('ActualizarEmpleado',
                {"Id": Id,
                    "Nombre": Nombre,
                    "TipoDoc": TipoDoc,
                    "Apellido": Apellido,
                    "Telefono": Telefono,
                    "Disponibilidad": Disponibilidad,
                    "Inicon": Inicon,
                    "Fincon": Fincon,
                    "Horaini": Horaini,
                    "Horafin": Horafin,
                    "Celular": Celular,
                    "FechaN": FechaN,
                    "Correo": Correo,
                    "Documento": Documento
                }, function (Actualizar) {

            toastr.success(Actualizar);

        });

    });



    $('.Eliminar').click(function () {

        var Id = $(this).parents('tr').attr('class');

        var confirmar = confirm("¿De verdad desea eliminar a este empleado?");

        if (confirmar) {

            $.get('EliminarEmpleado', {"Id": Id}, function (Eliminar) {

                toastr.info(Eliminar);

                $('.' + Id).remove();


             });


         }

    });
    
    
    
    
});



