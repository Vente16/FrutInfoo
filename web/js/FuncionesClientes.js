
$(document).ready(function () {


    $('.Detalle').click(function () {

        var Id = $(this).parents('tr').attr('class');

        $.get('DetalleCliente', {"Id": Id}, function (detalle) {

            $('.InfoDetalle').html(detalle);


         });




    });


    $('.Actualizar').click(function () {


        var Id = $(this).parents('tr').attr('class');

        $.post('FormActualizarClientes', {"Id": Id}, function (formulario) {

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


        $.post('ActualizarCliente',
                {"Id": Id,
                    "Nombre": Nombre,
                    "Apellido": Apellido,
                    "Telefono": Telefono,
                    "Municipio": Municipio,
                    "Barrio": Barrio,
                    "Direccion": Direccion,
                    "Celular": Celular,
                    "TipoD": TipoD,
                    "FechaN": Fecha,
                    "Correo": Correo,
                    "Membrecia": Membrecia
                }, function (Actualizar) {

            toastr.success(Actualizar);

        });

    });



    $('.Eliminar').click(function () {

        var Id = $(this).parents('tr').attr('class');

        var confirmar = confirm("¿De verdad desea eliminar este cliente?");

        if (confirmar) {

            $.get('EliminarCliente', {"Id": Id}, function (Eliminar) {

                toastr.info(Eliminar);

                $('.' + Id).remove();


             });


         }

    });





});





