$(document).ready(function(){
    
    $('#RegEmpl').bootstrapValidator({
        feedbackIcons: {
           valid: 'glypicon glypicon-ok',
           invalid: 'glypicon glypicon-remove',
           validating: 'glypicon glypicon-refrehs'
               
        },
        fields: {
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
            
            inicio: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }
                    
                }

            },
            
            fin: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }
                    
                }

            },
            
            hora_inicio: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }
                    
                }

            },
            
            hora_salida: {

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
            
              tipo2: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }
                    
                }

            },
            
              tipo3: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }
                    
                }

            },
            
              fecha: {

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
    
   // $('#RegEmpleado').bootstrapValidator({
     //   feedbackIcons: {
       //    valid: 'glypicon glypicon-ok',
         //  invalid: 'glypicon glypicon-remove',
           //validating: 'glypicon glypicon-refresh'
    
    
    
});


