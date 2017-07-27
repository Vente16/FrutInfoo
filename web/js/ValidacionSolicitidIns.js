$(document).ready(function(){
    
    $("#SolicitarIns").bootstrapValidator({
        feedbackIcons: {
            valid:'glyphicon glyphicon-ok',
            invalid:'glyphicon glyphicon-remove',
            validating:'glyphicon glyphicon-refresh'
        },
        fields: {
            insumo: {

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

                        message: 'Este campo es requerido'
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


