$(document).ready(function(){
    
    $("#Novedad").bootstrapValidator({
        feedbackIcons: {
            valid:'glyphicon glyphicon-ok',
            invalid:'glyphicon glyphicon-remove',
            validating:'glyphicon glyphicon-refresh'
        },
        fields: {
             novedad: {

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
             nombre: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    },
                     regexp: {
                        
                    regexp: /^[a-zA-Z ]*$/,

                    message: 'Este campo no acepta números'
                    },
                     stringLength: {

                        min: 7,
                        
                        max: 7,

                        message: 'El nombre debe contener minimo 3 palabras'

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
                    },
                     stringLength: {

                        min: 4,
                        
                        max: 20,

                        message: 'Este campo de be tener minimo 4 palabras'

                    }
                    
                }

            },
            documento: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    },
                    
                     regexp: {
                        
                    regexp: /^[0-9]+$/,
                    message: 'Este campo solo acepta números'
                    },
                     stringLength: {

                        min: 8,
                        
                        max: 10,

                        message: 'La cedula debe contener de 8 a 10 números'

                    }
                    
                }

            },
             tipos: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }
                    
                }

            },
             descripcion: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    },
                     regexp: {
                        
                    regexp: /^[a-zA-Z ]*$/,

                    message: 'Este campo no acepta números'
                    },
                     stringLength: {

                        min: 20,
                        
                        max: 100,

                        message: 'La descripción debe tener mas de 20 caracteres'

                    }
                    
                }

            },
             sede: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }
                    
                }

            },
             cargo: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }
                    
                }

            }
            

           
            
            
            
            
            
        }
        
        
        
    });
    
    
});


