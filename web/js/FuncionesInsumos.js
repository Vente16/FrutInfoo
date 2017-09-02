$(document).ready(function () {
   
     function detalle(){
         
        var Id = $(this).parents('tr').attr('class');
        $.get('DetalleInsumo', {"Id":Id}, function (insumo) {
            $('.InfoDetalle').html(insumo);
        });
        
     }
  
    $('.Detalle').click(detalle);
  
    
    
    $('.Actualizar').click(function () {
        var Id = $(this).parents('tr').attr('class');
        $.post('FormActualizarInsumo', {"Id":Id}, function (ActualizarInsumo) {
            $('.FormActualizar').html(ActualizarInsumo);
            validacionActualizar();
            detalle();
            
            $(".ActualizarDB").click(function(){
                
               var codigo = $('#Codigo').val();
               var nombre = $('#NombreInsumo').val();
               var cantidad = $('#Cantidad').val();
               var act = "<td>"+codigo+"</td><td>"+nombre+"</td><td>"+cantidad+"</td><td><a href='#Detalle'  data-toggle='modal'><button class='btn btn-primary  glyphicon glyphicon-eye-open Detalle'></button></a></td>"+" <td><a href='#Actualizar'  data-toggle='modal'><button class='btn btn-success glyphicon glyphicon-edit Actualizar'></button></a> </td></tr>";
                               
              $('#tabla').find("."+Id).html(act);
              $('.Detalle').click(detalle);
              
            });
        });
        
        
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
    
    /*Validacion Modal Actualizar Insumos*/
    function validacionActualizar(){
            $("#ValActualizacionIns").bootstrapValidator({
        feedbackIcons: {
            valid:'glyphicon glyphicon-ok',
            invalid:'glyphicon glyphicon-remove',
            validating:'glyphicon glyphicon-refresh'
        },
        fields: {
             codigo: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    },
                     regexp: {
                        
                    regexp: /^[0-9]+$/,
                    message: 'Este campo solo acepta números'
                    }

                }

            },
             tipo: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    },
                     regexp: {
                        
                    regexp: /^[a-zA-Z ]*$/,

                    message: 'Este campo no acepta números'
                    }

                }

            },
            nombe_Insumo: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    },
                    regexp: {
                        
                    regexp: /^[a-zA-Z ]*$/,

                    message: 'Este campo no acepta números'
                    }

                }

            },
            cantidad: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    },
                     regexp: {
                        
                    regexp: /^[0-9]+$/,
                    message: 'Este campo solo acepta números'
                    }

                }

            },
            valor: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    },
                     regexp: {
                        
                    regexp: /^[0-9]+$/,
                    message: 'Este campo solo acepta números'
                    }

                }

            },
             fecha_ingreso: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    },
                    regexp: {
                        
                    regexp: /^([012][1-9]|3[01])(\/)(0[1-9]|1[012])\2(\d{4})$/,

                    message: 'formato de fecha invalido'
                    }

                }

            },
             fecha_vencimiento: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    },
                     regexp: {
                        
                    regexp: /^([012][1-9]|3[01])(\/)(0[1-9]|1[012])\2(\d{4})$/,

                    message: 'formato de fecha invalido'
                    }

                }

            },
             peso: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }

                }

            },
             prioridad: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    },
                    regexp: {
                        
                    regexp: /^[a-zA-Z ]*$/,

                    message: 'Este campo no acepta números'
                    }

                }

            }
            
            
            
            
        }
        
        
        
        
    });
        
        
    }
    
    
    
    
    
});