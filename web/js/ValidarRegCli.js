$(document).ready(function(){
    
    $('#myform').Validator({
        feedbackIcons: {
            valid: 'glypicon glypicon-ok',
            invalid: 'glypicon glypicon-remove',
            validating: 'glypicon glypicon-refresh'
        
        },
        fields: {
             tipo_documento: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
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

                        message: 'El documento debe tener min 8, max 10 digitos'

                    }

                }

            },
           
             nombres: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }

                }

            },
            
             apellidos: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }

                }

            },
            
            FechaNac: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }

                }

            },
            
            Municipio: {

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
            
            barrio: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
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
            
            email: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    },
                    
                     emailAddress: {
 
					 message: 'El correo electronico no es valido'
 
				 }

                }

            },
            
            membresia: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }

                }

            }
                    
        }
            
    });
    
});


