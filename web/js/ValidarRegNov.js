$(document).ready(function(){
    
    $('#RegNov').bootstrapValidator({
        feedbackIcons: {
            valid: 'glypicon glypicon-ok',
            invalid: 'glypicon glypicon-remove',
            validating: 'glypicon glypicon-refresh'
           
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


