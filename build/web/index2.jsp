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
        <link rel="stylesheet" href="css/Sistema.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="js/BienvenidoSistema.js"></script>
    </head>
   
    <body>
       
        <%@include file="headerModulos.jspf" %> 
        
        <main>
     
        <div id="bootstrap-touch-slider" class="carousel bs-slider fade  control-round indicators-line" data-ride="carousel" data-pause="hover" data-interval="5000" >

            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#bootstrap-touch-slider" data-slide-to="0" class="active"></li>
                <li data-target="#bootstrap-touch-slider" data-slide-to="1"></li>
                <li data-target="#bootstrap-touch-slider" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper For Slides -->
            <div class="carousel-inner" role="listbox">

                <!-- Third Slide -->
                <div class="item active">

                    <!-- Slide Background -->
                    <img src="img/descarga1.jpg" alt="Bootstrap Touch Slider"  class="slide-image"/>
                    <div class="bs-slider-overlay"></div>

                    <div class="container">
                        <div class="row">
                            <!-- Slide Text Layer -->
                            <div class="slide-text slide_style_left">
                                <h1 data-animation="animated zoomInRight">Bienvenido al sistema</h1>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End of Slide -->

                <!-- Second Slide -->
                <div class="item">

                    <!-- Slide Background -->
                    <img src="img/helado5.jpg" alt="Bootstrap Touch Slider"  class="slide-image"/>
                    <div class="bs-slider-overlay"></div>
                    <!-- Slide Text Layer -->
                    <div class="slide-text slide_style_center">
                        <h1 data-animation="animated flipInX">Misión:</h1>
                        <p data-animation="animated lightSpeedIn">Somos una empresa dedicada a la producción y comercialización de productos a base de frutas naturales, que busca satisfacer las necesidades, gustos y preferencias de nuestros clientes, brindándole al consumidor alimentos de excelente calidad y buen servicio.</p><br>
                        <h1 data-animation="animated flipInX">Visión:</h1>
                        <p data-animation="animated lightSpeedIn">Día a Día buscaremos ser una empresa reconocida, por el servicio, la calidad y exquisitez de nuestros productos. Contando con el mayor nivel de cobertura local a todos nuestros clientes y apoyados en un equipo humano capaz de desarrollar sus habilidades en el desempeño de su trabajo.</p>
                    </div>
                </div>
                <!-- End of Slide -->

                <!-- Third Slide -->
                <div class="item">

                    <!-- Slide Background -->
                    <img src="img/helado1.jpg" alt="Bootstrap Touch Slider"  class="slide-image"/>
                    <div class="bs-slider-overlay"></div>
                    <!-- Slide Text Layer -->
                    <div class="slide-text slide_style_right">
                        <h1 data-animation="animated zoomInLeft">Nuestros Inicios:</h1>
                        <p data-animation="animated fadeInRight">Iniciamos labores en el año 2.000 con su primer punto de venta en el Municipio de Envigado. Actualmente contamos con nueve sucursales ubicadas en Medellín, Itagüí, Sabaneta y Bello, buscando satisfacer a la demanda del mayor número de clientes posible.</p><br>
                        <p data-animation="animated fadeInRight">Desde su inicio nuestros clientes eligieron como producto estrella la ensalada de frutas, por su nutritiva combinación de frutas frescas con diferentes ingredientes: crema jugosa, queso rallado y una decoración especial. Otros productos, que por su sabor y calidad han hecho que nuestra marca sea reconocida son los salpicones, la banana split, los jugos y las diferentes copas especiales.</p><br>
                        <p data-animation="animated fadeInRight">Contamos con personal capacitado para brindar a nuestra clientela calidad, variedad y exquisitez en nuestros productos, así como también, un excelente servicio y atención. Además un grato y acogedor ambiente en nuestros puntos de venta.</p>
                    </div>
                </div>
                <!-- End of Slide -->


            </div><!-- End of Wrapper For Slides -->

            <!-- Left Control -->
            <a class="left carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="prev">
                <span class="fa fa-angle-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>

            <!-- Right Control -->
            <a class="right carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="next">
                <span class="fa fa-angle-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>

        </div> 
        
        </main>
        <%@include file="footerModulos.jspf" %>
        
    </body>
</html>
