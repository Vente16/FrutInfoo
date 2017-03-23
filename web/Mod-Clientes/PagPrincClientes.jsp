<%-- 
    Document   : Mod-Clientes
    Created on : 28/02/2017, 06:01:14 PM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="../css/bootstrap.css">
         <link rel="stylesheet" href="img/logoj.png">
        <link rel="stylesheet" href="../css/estilos2.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="../headerModulos.jspf" %>
         
        
         <section class="main container-fluid">
        <form class="navbar-left" role="search">
   <li><br><br><br><img src="../img/serdo.jpg" width="200px"></li>
    </form>
 
  <div style="margin-top: 100px">
    <h2 style="text-align: center;">Solicita tu Domicilio</h2><br><br>
  </div>
  <form><br><br>
  
                <div class="container">
                                    <label class="form-control-label" for="index-form1-1-name"><span class="titulo">Nombre</span></label><br>
                                    <input type="text" class="form-control" name="name"required="" data-form-field="Name" id="index-form1-1-name" placeholder="Ingrese su nnombre completo"><br>

                                     <labe2 class="form-control-label" for="index-form2-2-name"><span class="titulo"><b>Teléfono</b></span></labe2><br>
                                    <input type="text" class="form-control" name="name"required="" data-form-field="Name" id="index-form2-2-name" placeholder="Ingrese su telefono"><br>

                                    <label class="form-control-label" for="index-form1-1-name"><span class="titulo">Dirección</span></label><br>
                                        <input type="text" class="form-control" name="name"required="" data-form-field="Name" id="index-form1-1-name" placeholder="Ingrese su Dirección completa"><br>

    
                              </form><br><br>
<ul>
  
   <li class="listaimg"><img class= "Prod" src="../img/BananaSplit.jpg" width="250px" ></li>          
    <li class="listaimg"><img  class= "Prod" src="../img/Brawnie.jpg" width="250"></li>
      <li class="listaimg"><img class= "Prod" src="../img/Brevas.jpg" width="250"></li>
        <li class="listaimg"><img class= "Prod" src="../img/CopaPinocho.jpg" width="250"></li>
           <li class="listaimg"><img class= "Prod1" src="../img/especialdietetica.jpg" width="250"></li>
             <li class="listaimg"><img class= "Prod1" src="../img/solofrutas.jpg" width="250"></li>
                <li class="listaimg"><img class= "Prod1" src="../img/superjugosa.jpg" width="250"></li>
                   <li class="listaimg"><img class= "Prod1" src="../img/junior.jpg" width="250"></li>
</ul><br>



                               <button type="submit" class="btn btn-info">Solicitar</button>
                               <button type="submit" class="btn btn-success">Aceptar</button>
 
 
     </section>
        </div>
      </div>
         
  <%@include file="../footer.jspf" %>
    </body>
</html>
