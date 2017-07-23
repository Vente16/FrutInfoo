$(document).ready(function(){
    
    $('#RegNov').bootstrapValidator({
       
           feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            novedad: {
                validators: {
                    notEmpty: {
                        message: 'The full name is required and cannot be empty'
                    }
                }
            }   
               
    }
    
    });
   
     
    
    
    
    
    
});


