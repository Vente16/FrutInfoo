$(document).ready(function(){
    
    $("#Domicilio").bootstrapValidator({
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
                    }
                    
                }

            },
             nombres: {

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
            apellidos: {

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
            direccion: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }

                }

            }


            
            
        }
        
    });
    
});


