$(document).ready(function(){
    $('button').click(function(){
     
    var correo = $('#email').val();
    var documento = $('#documento').val();
    var validarDocumento = {"documento": documento, "metodo": "consultarDocumento"};
    var validarCorreo = {"correo": correo, "metodo": "consultarCorreo"};
    
    //Validacion Documento.
    $.get("ValidacionClientes", validarDocumento, function( data ) {
           
           var resp = data;
           console.log(resp);
          if(data == 1){
              $('#documentov').attr("class", "form-group has-feedback has-error");
              $('#documentov').find('i').attr("class", "form-control-feedback glyphicon glyphicon-remove");
              $('#Doc').html("Ya existe este documento.");
           
              
          }
          
          // Validación correo.
          $.get("Validacion Clientes", validarCorreo, function(info) {
           
           var resp = info;
           console.log(resp);
          if(data == 1){
              $('#emailv').attr("class", "form-group has-feedback has-error");
              $('#emailv').find('i').attr("class", "form-control-feedback glyphicon glyphicon-remove");
              $('#Ema').html("Este correo ya Existe.");
              }  
          });
         
      });
      
      
      
   });
    
});


