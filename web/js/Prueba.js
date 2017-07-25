$(document).ready(function(){
    alert("hola");
     $('#RegNov').bootstrapValidator({
        container: '#messages',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            producto: {
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
            telefono: {
                
                validators: {
                    
                    notEmpty: {
                        
                        message:'por favor llene el campo ' 
                    },
                    regexp: {
                        
                    regexp: /^[0-9]+$/,
                    message: 'Este campo solo acepta números'
                    },
                    
                    stringLength: {
                        
                        min:7,
                        message:'El numero telefonico debe contener 7 digitos',
                        max:7,
                        message:'El numero telefonico debe contener 7 digitos',
                    }
                }
                
                
            },
            celular: {
                
                validators: {
                    
                    notEmpty: {
                        
                        message:'este campo no puede esta vacio'
                    },
                     regexp: {
                        
                    regexp: /^[0-9]+$/,
                    message: 'Este campo solo acepta números'
                    },
                    stringLength: {
                        
                        min:10,
                        message:'el numero telefonico debe contener 10 digitos',
                        max:10,
                        message:'el numero telefonico debe contener 10 digitos',
                        
                    }
                }
                
            },             direccion: {
                validators: {
                    notEmpty: {
                        message: 'Este campo es requerido'
                    }
                }
            }
            

        }
    });
    
    
    
    
    
});

