$(document).ready(function(){
    alert("hola");
    $("#RegNovedad").bootstrapValidator({
        feedbackIcons: {
            valid:'glyphicon glyphicon-ok',
            invalid:'glyphicon glyphicon-remove',
            validating:'glyphicon glyphicon-refresh'    
        },
        fields: {
            novedad: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }

                }

            },
             nom: {

                validators: {

                    notEmpty: {

                        message: 'Este campo es requerido'
                    }

                }

            }
            
          
            
            
        }
        
        
    });
    
    
});


