/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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
            ValidacionActEmpleado();

         });

    });

    $('.ActualizarDB').click(function () {

        var Id = $('#Id').val();
        var Nombre = $('#Nombre').val();
        var TipoDoc = $('#Tdoc').val();
        var Apellido = $('#Apellido').val();
        var Telefono = $('#Telefono').val();
        var Celular = $('#Celular').val();
        var Inicon = $('#Inicon').val();
        var Fincon = $('#Fincon').val();
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
                    "Inicon": Inicon,
                    "Fincon": Fincon,
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
    
    
    /*Validacion Modal Actualizar Empleados*/
    function ValidacionActEmpleado(){   
        $("#ValActFormEmpl").bootstrapValidator({
            feedbackIcons: {
              valid:'glyphicon glyphicon-ok',
              invalid:'glyphicon glyphicon-remove',
              validating:'glyphicon glyphicon-refresh'
            },
            fields: {
                nombre: {

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
            apellido: {

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
             telefono: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    },
                    
                     regexp: {
                        
                    regexp: /^[0-9]+$/,
                    message: 'Este campo solo acepta números'
                    },
                     stringLength: {

                        min: 7,
                        
                        max: 7,

                        message: 'El teléfono debe contener como minimo 7 números'

                    }
                    
                }

            },
             celular: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    },
                    
                     regexp: {
                        
                    regexp: /^[0-9]+$/,
                    message: 'Este campo solo acepta números'
                    }, stringLength: {

                        min: 10,
                        
                        max: 10,

                        message: 'El celular debe contener como minimo 10 números'

                    }
                    
                }

            },
            
             inicioC: {

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
             FinC: {

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
            
              cargo: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }
                    
                }

            },
             FechaN: {

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
            correo: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    },
                    
                     emailAddress: {
 
					 message: 'El correo electronico no es valido'
 
				 }
                    
                }

            }
                
                
            }    
        });     
    }
      
});




