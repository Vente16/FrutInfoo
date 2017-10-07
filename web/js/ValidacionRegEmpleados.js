$(document).ready(function(){
    
    $("#RegEmpleado").bootstrapValidator({
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
                    },  regexp: {
                        
                    regexp: /^[a-zA-Z ]*$/,

                    message: 'Este campo no acepta números'
                    },
                     stringLength: {

                        min: 3,
                        
                        max: 20,

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
            
            direccion: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }
                    
                }

            },    
            inicon: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }
                    
                }

            },
            
            fincon: {

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

                        message: 'La cedula contiene 10 números'

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
             puntoVenta: {

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

            },
            
              fechanac: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
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

            }
            
            
            
            
        }
        
        
    });
});


