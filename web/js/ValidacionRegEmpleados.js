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
                    }
                    
                }

            },
            
             apellido: {

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
            
            disponibilidad: {

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
            
            horaini: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }
                    
                }

            },
            
            horasal: {

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


