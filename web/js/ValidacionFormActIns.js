$(document).ready(function(){
    alert("hola");
    $("#ValActualizacionIns").bootstrapValidator({
        feedbackIcons: {
            valid:'glyphicon glyphicon-ok',
            invalid:'glyphicon glyphicon-remove',
            validating:'glyphicon glyphicon-refresh'
        },
        fields: {
             Codigo: {

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
             tipo_documento: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }

                }

            },
            nombe_Insumo: {

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
                    }

                }

            },
             fecha_vencimiento: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
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
                    }

                }

            }
            
            
            
            
        };
        
        
        
        
    });
        
});


