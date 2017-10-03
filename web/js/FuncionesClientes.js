
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
            ValidacionActCliente();


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
                    "Correo": Correo
                }, function (Actualizar) {

            toastr.success(Actualizar);

        });

    });


/*Validacion formulario actualizar Clientes*/
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
    
    
    function ValidacionActCliente(){
        $("#ValFormActEmpl").bootstrapValidator({
            feedbackIcons: {
                valid:'glyphicon glyphicon-ok',
                invalid:'glyphicon glyphicon-remove',
                validating:'glyphicon glyphicon-refresh'  
            },
            fields: {
                tipoDoc: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }

                }

            },
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

                        message: 'El teléfono debe contener minimo 7 números'

                    }

                }

            },
             municipio: {

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
             barrio: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }

                }

            },
             direccion: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
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
                    },

                    stringLength: {

                        min: 10,
                        
                        max: 10,

                        message: 'El celular debe contener como minimo 10 números'

                    }

                }

            },
            fechaN: {

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

            },
             membrecia: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }

                }

            }

            
                 
                
            }
            
        });
          
    }

});





