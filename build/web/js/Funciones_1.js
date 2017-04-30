$(document).ready(function () {

  alert("Hola");

    $('.Agregar').click(function () {

        var productos = [];


        var codigo = $('#codigo').val();
        var cantidad = $('#cantidad').val();

        if (cantidad > 0) {

            $.post('Consultar.jsp', {"Codigo": codigo, "Cantidad": cantidad}, function (datos) {

                $('.tabla').append('<tr>' + datos + '</tr>');



                $('tbody tr').each(function (valor) {

                    var Productos = {};
                    var Columna = $(this).find('td');

                    Productos.Codigo = Columna.filter(':eq(0)').text();
                    Productos.Nombre = Columna.filter(':eq(1)').text();
                    Productos.Cantidad = Columna.filter(':eq(2)').text();
                    Productos.Precio = Columna.filter(':eq(3)').text();
                    Productos.Total = Columna.filter(':eq(4)').text();
                    Productos.Iva = Columna.filter(':eq(5)').text();
                    Productos.Costo = parseInt(Columna.filter(':eq(6)').text());

                    productos.push(Productos);
                });


                var Suma = {};
                Suma.productos = productos;

                var sum = 0;

                $.each(productos, function (suma, valor) {

                    sum = parseInt(sum);
                    sum += valor.Costo;

                });

                $('#Total').html(sum);
                console.log(Suma);

                var datos = JSON.stringify(Suma);
                
                console.log(datos);
                $('#Validar').remove();

                $('.Eliminar').click(function () {

                    /*    var num = $(this).parents('tr').find('.costo').html();
                     
                     num = parseInt(num);
                     
                     var total = $('#Total').html();
                     
                     total = parseInt(total);
                     
                     var resta = total-num; */




                   $(this).parents('tr').remove();
                       $('#Total').html(resta);

                        $.each(productos, function(suma, valor){
                     
                     sum = parseInt(sum);
                     sum+= valor.Costo;
                     $('#Total').html(sum);
                     
                     
                     });  


              });

           });

      } else {

           var mensaje = "<p>La cantidad miníma debe ser 1</p>";
           $('#Validar').html(mensaje).css('color', 'red');

       }

    });




});

