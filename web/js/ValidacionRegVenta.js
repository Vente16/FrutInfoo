$(document).ready(function(){
    
    $("#RegVenta").bootstrapValidator({
        feedbackIcons: {
          valid:'glyphicon glyphicon-ok',
          invalid:'glyphicon glyphicon-remove',
          validating:'glyphicon glyphicon-refresh'
        },
        fields: {
         producto: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }

                }

            },
             cantidad: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }

                }

            },
            precio: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    },
                    
                    regexp: {
                        
                    regexp: /^[0-9]+$/,
                    message: 'Este campo solo acepta números'
                    },

                    stringLength: {

                        min: 4,
                        
                        max: 5,

                        message: 'El precio del producto debe ser mallor de 3 cifras'

                    }

                }

            },
             iva: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    },
                    
                    regexp: {
                        
                    regexp: /^[0-9]+$/,
                    message: 'Este campo solo acepta números'
                    },

                    stringLength: {

                        min: 3,
                        
                        max: 4,

                        message: 'El iva del producto debe ser mallor de 2 cifras'

                    }

                }

            },
             total: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    },
                    
                    regexp: {
                        
                    regexp: /^[0-9]+$/,
                    message: 'Este campo solo acepta números'
                    },

                    stringLength: {

                        min: 4,
                        
                        max: 5,

                        message: 'El total del producto debe ser mallor de 3 cifras'

                    }

                }

            },
            Tventa: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }

                }

            },
            FechaVen: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }

                }

            },
            IdPedido: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }

                }

            },
            IdCliente: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }

                }

            }
          
        }
        
    });
    
    
});


