
$(document).ready(function(){
    
    
    
     $('.Detalle').click(function () {

        var Id = $(this).parents('tr').attr('class');
        

        $.get('DetalleEmpleado', {"Id": Id}, function (detalle) {

            $('.InfoDetalle').html(detalle);


         });




    });


    $('.Actualizar').click(function () {


        var Id = $(this).parents('tr').attr('class');

        $.get('ActualizarEmpleadoForm', {"Id": Id}, function (formulario) {

            $('.FormAcutalizar').html(formulario);


         });


    });

    $('.ActualizarDB').click(function () {

        var Id = $('#Id').val();
        var Nombre = $('#Nombre').val();
        var TipoD = $('#DocumentT').val();
        var Apellido = $('#Apellido').val();
        var Telefono = $('#Telefono').val();
        var Municipio = $('#Municipio').val();
        var Barrio = $('#Barrio').val();
        var Direccion = $('#Direccion').val();
        var Celular = $('#Celular').val();
        var Fecha = $('#FechaN').val();
        var Correo = $('#Correo').val();
        var Membrecia = $('#Membrecia').val();
        var Documento = $('#Document').html();


        $.post('ActualizarCliente',
                {"Id": Id,
                    "Nombre": Nombre,
                    "TipoD": TipoD,
                    "Apellido": Apellido,
                    "Telefono": Telefono,
                    "Municipio": Municipio,
                    "Barrio": Barrio,
                    "Direccion": Direccion,
                    "Celular": Celular,
                    "FechaN": Fecha,
                    "Correo": Correo,
                    "Membrecia": Membrecia,
                    "Documneto": Documento
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



