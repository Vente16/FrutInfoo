$(document).ready(function () {
   
    $('.Detalle').click(function () {
        var Id = $(this).parents('tr').attr('class');
        
        $.get('DetalleInsumo', {"Id":Id}, function (insumo) {
            $('.InfoDetalle').html(insumo);
        })
        
    });
    
    $('.Actualizar').click(function () {
        var Id = $(this).parents('tr').attr('class');
        
        $.post('FormActualizarInsumo', {"Id":Id}, function (ActualizarInsumo) {
            $('.FormActualizar').html(ActualizarInsumo);
        })
        
    });
    
    $('.ActualizarDB').click(function () {
        var Id = $('#Id').val();
        var Codigo = $('#Codigo').val();
        var Tipo = $('#Tipo').val();
        var NombreInsumo = $('#NombreInsumo').val();
        var Cantidad = $('#Cantidad').val();
        var Valor = $('#Valor').val();
        var FechaIngreso = $('#FechaIngreso').val();
        var FechaVencimiento = $('#FechaVencimiento').val();
        var Peso = $('#Peso').val();
        var Prioridad = $('#Prioridad').val();
        console.log(NombreInsumo);
        
        $.post('ActualizarInsumo', {
            "Id":Id,
            "Codigo":Codigo,
            "Tipo":Tipo,
            "NombreInsumo":NombreInsumo,
            "Cantidad":Cantidad,
            "Valor":Valor,
            "FechaIngreso":FechaIngreso,
            "FechaVencimiento":FechaVencimiento,
            "Peso":Peso,
            "Prioridad":Prioridad
        }, function (Actualizo) {
            toastr.success(Actualizo);
            
        })
        
    });
    
    
});