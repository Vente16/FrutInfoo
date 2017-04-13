<%-- 
    Document   : index2
    Created on : 25/02/2017, 11:20:25 AM
    Author     : adsi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
         <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
   
    <body>
     
        <header>
   
        <nav class="navbar navbar-default" role="navigation">
            <!-- El logotipo y el icono que despliega el menú se agrupan
                 para mostrarlos mejor en los dispositivos móviles -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse"
                        data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Desplegar navegación</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <img src="../img/logolj.png" width="50px" style="vertical-align: middle; float: left;" alt="">
                <a class="navbar-brand" href="#">LA JUGOSA</a>
            </div>

            <!-- Agrupar los enlaces de navegación, los formularios y cualquier
                 otro elemento que se pueda ocultar al minimizar la barra -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
              <ul class="nav navbar-nav navbar-right">
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-briefcase"></span>Administrativo<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="Mod-Administrativo/Administrativo_admin.jsp">Autorizaciones</a></li>
          <li><a href="Mod-Administrativo/Ventas_admin.jsp">Informe de ventas</a></li>
          <li><a href="Mod-Administrativo/Insumos_admin.jsp">Informe de Insumos</a></li>
          <li><a href="Mod-Administrativo/Administatrivo_InformeEmpleados.html">Informe de empleados</a></li>
        </ul>
      </li>

      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-apple">Insumos<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="Mod-Insumos/VerlistadeInsumos.jsp">Ver lista de insumos</a></li>
          <li><a href="Mod-Insumos/SolicitarInsumo.jsp">Solicitar Insumo</a></li>
          <li><a href="Mod-Insumos/RegistrarInsumo.jsp">Registrar insumos</a></li>
          <li><a href="#">Inicio</a></li>
        </ul>
      </li>
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-shopping-cart">Ventas<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="Mod-Ventas/RegistrarVentas.jsp">Registrar ventas</a></li>
          <li><a href="Mod-Ventas/ListarVentas.jsp">Listar ventas</a></li>
          <li><a href="Mod-Ventas/InforVentas.jsp">Realizar infrome de ventas</a></li>
          <li><a href="Mod-Ventas/FacturaVentas.jsp">Generar factura de ventas</a></li>
         
        </ul>
      </li>
     
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Recursos humanos<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="Mod-RecursosHumanos/RegistrarEmpleados.jsp">Registrar empleados</a></li>
          <li><a href="Mod-RecursosHumanos/ListarEmpleados.jsp">Listar empleados</a></li>
          <li><a href="Mod-RecursosHumanos/Novedades.jsp">Novedades</a></li>
        </ul>
      </li>
      
      
       
      
         <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Clientes<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Registrar clientes</a></li>
          <li><a href="#">Listar clientes</a></li>
          <li><a href="#">Solicitar domicilio</a></li>
        </ul>
      </li>
      
        <li><a href="#">Cerrar sesión</a></li>
      
   
      </li>
      
      
    </ul>
   <!--  <ul class="nav navbar-nav navbar-right">
      <li><a href="#">Cerrar sesión</a></li> >
    </ul> -->

            </div>
        </nav>
        </head>
        
        <div class="container">
        <h1>BIENVENIDO AL SISTEMA</h1>
        </div>
        <%@include file="footerModulos.jspf" %>
        
    </body>
</html>
