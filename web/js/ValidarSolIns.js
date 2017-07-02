$(document).ready(function(){
    
    $('#SolicitarIns').bootstrapValidator({
        feedbackIcons: {
            valid: 'glypicon glypicon-ok',
            invalid: 'glypicon glypicon-remove',
            validating: 'glypicon glypicon-refresh'
          
        },
        fields:{
             nombre_insumo: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
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
            
             tipo_sede: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido, digite elnúmero correspondiente a la sede'
                    },
                    
                     regexp: {
                        
                    regexp: /^[0-9]+$/,
                    message: 'Este campo solo acepta números'
                    }
                    
                }
                
            },
            
             autorizar: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }
                     
                }
                
            },
            
             fecha_solicitud: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }
                    
                }
                
            },
            
             fecha_aut: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }
                    
                }
                
            }
                
        }
                
    });
    
});


