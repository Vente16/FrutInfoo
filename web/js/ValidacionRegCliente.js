$(document).ready(function(){
    
    $("#RegistrarCliente").bootstrapValidator({
        feedbackIcons: {
            valid:'glyphicon glyphicon-ok',
            invalid:'glyphicon glyphicon-remove',
            validating:'glyphicon glyphicon-refresh'
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
            apellidos: {

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
            
            FechaNac: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }

                }

            },
             Email: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    },
                    
                     emailAddress: {
 
					 message: 'El correo electronico no es valido'
 
				 }

                }

            },
            
            Municipio: {

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
            
            direccion: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }

                }

            },
            
            Barrio: {

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

            }
          
      
            
        }
        
        
    });
    
    
});


