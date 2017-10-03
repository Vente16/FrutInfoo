$(document).ready(function(){
    
    $("#RegistroUsu").bootstrapValidator({
        feedbackicons: {
         valid:'glyphicon glyphicon-ok',
         invalid:'glyphicon glyphicon-remove',
         validating:'glyphicon glyphicon-refresh'
        },
        fields:{
             Nombre: {

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
            Correo: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    },
                    
                     emailAddress: {
 
					 message: 'El correo electronico no es valido'
 
				 }

                }

            },
             User: {

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
             Contraseña: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    },
                    stringLength: {

                        min: 3,
                        
                        max: 8,

                        message: 'La contraseña debe tener min 3, max 8 caracteres'

                    }

                }

            },
            
            
            
            
        }
        
    });
    
});

