
$(document).ready(function(){
    
   $.get("ConsultarNovedades", function(datos){
       
       $(".consultar").click(function(){
           
          $("#info").html(""); 
          
          
          $.get("DetalleNovedad", {
              "metodo":"documento", "documento":$("#documento").val()}, function(document){
              
              $("#info").append(document);
              
              $("#espacio").append("<br><br><br>");
              
              $(".ver").click(function(){
            
            var id = $(this).attr("value");
           
           $.get("DetalleNovedad",{"id":id, "metodo": "id"}, function(infor){
               
               $(".modal-body").html(infor);
               
           });
           
        });
          });
          
       });
      
       $("#info").html(datos);
       
        $(".ver").click(function(){
            
            var id = $(this).attr("value");
           
           $.get("DetalleNovedad",{"id":id, "metodo": "id"}, function(infor){
               
               $(".modal-body").html(infor);
               
           });
           
        });
       
   });
       
    
});



