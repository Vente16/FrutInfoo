$(document).ready(function(){
   
    $("#RegInsumo").bootstrapValidator({
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
                    },

                    stringLength: {

                        min: 3,
                        
                        max: 4,

                        message: 'El codigo debe tener como minimo 3 '

                    }

                }

            },
             proveedor: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }

                }

            },
            tipo: {

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
            nombre: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    },
                    stringLength: {

                        min: 3,
                        
                        max: 20,

                        message: 'Este campo de be tener minimo 3 palabras'

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
                    }

                }

            },
             fechavencimiento: {

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
    
    
});


