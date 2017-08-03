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

                        message: 'La cedula contiene 10 números'

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


