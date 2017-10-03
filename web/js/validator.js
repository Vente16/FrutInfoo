
$(document).ready(function () {
    $('#formlogin').bootstrapValidator({
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'

        },
 
	 fields: {
 
		 Usuario: {
 
			 validators: {
 
				 notEmpty: {
 
					 message: 'El nombre de usuario es requerido'
 
				 }
 
			 }
 
		 },
 
		 Contra: {
 
			 validators: {
 
				 notEmpty: {
 
					 message: 'La contraseña es requerida'
 
				 }
 
			 }
 
		 }
 
	 }
 
}); 
    
});
