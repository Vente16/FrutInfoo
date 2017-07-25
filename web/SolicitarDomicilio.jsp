<%-- 
    Document   : SolicitarDomicilio
    Created on : 4/07/2017, 05:58:15 PM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Solicitar Domicílio</title>
       <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estilos2.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      
    </head>
    <body>
    <style>
        
      html, body {
  height: 100%;
}

.img-home-portfolio,
.img-customer,
.portfolio-item {
  margin-bottom: 10px;
   width: 100%;
    display: inline-block;
    margin: 2px;
}



/* Page Sections */
.section,
.section-colored {
  padding: 50px 0;
}

.section-colored1{
      background-color: FCFF33;
      padding: 50px 0;
}

.section-colored {
  background-color: green;
 /* change this to change the background color of a colored section */
}

.sidebar {
  margin-top: 40px;
}

.sidebar ul {
  border-radius: 5px;
  padding: 5px;
  border: 1px solid #cccccc;
}

/* Half Page Height Carousel Customization */
.carousel {
  height: 50%;
}

.item,
.active,
.carousel-inner {
  height: 100%;
}



/* Social Icons Styles */
.list-social-icons {
  margin-bottom: 45px;
}

.tooltip-social a {
  text-decoration: none;
  color: inherit;
}

.facebook-link a:hover {
  color: #3b5998;
}

.linkedin-link a:hover {
  color: #007fb1;
}

.twitter-link a:hover {
  color: #39a9e0;
}

.google-plus-link a:hover {
  color: #d14836;
}

/* Service Page Styles */
.service-icon {
  font-size: 50px;
}

/* 404 Page Styles */
.error-404 {
  font-size: 8em;
}

/* Pricing Page Styles */
.price {
  font-size: 4em;
}

.price-cents {
  vertical-align: super;
  font-size: 50%;
}

.price-month {
  font-size: 35%;
  font-style: italic;
}



/* Responsive Styles */
@media (max-width: 767px) {

  .carousel {
    height: 70%;
 /* increases the carousel height so it looks good on phones */
  }   
    </style>
    
    
    
          <%@include file="headerModulos.jspf" %>
           <div id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                 <img  src="img/Ensalada_1.jpg" class="fill" style="width:100%; height: 400px">
                <div class="carousel-caption">
                    <h1>Las mas deliciosas Ensaladas</h1>
                </div>
            </div>
            <div class="item">
                <img src="img/Helados.jpg" class="fill" style="width:100%; height: 400px">
                <div class="carousel-caption">
                    <h1>Los mas ricos Helados</h1>
                </div>
            </div>
            <div class="item">
                <img src="img/Jugos_1.jpg" class="fill" style="width:100%; height: 400px">
                <div class="carousel-caption">
                    <h1>Los Jugos mas refrescantes</h1>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
           </div><br><br>

    <div class="section">

        <div class="container">

            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Disfruta de nuestra gran Variedad de copas y Helados</h2>
                    <hr>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-8">
                    <a > <img class="img-responsive img-home-portfolio" src="img/CopasHelado/CONOS.jpg"></a>
                    <h4 align="center">Conos: 3.000 $</h4>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-8">
                    <a > <img class="img-responsive img-home-portfolio" src="img/CopasHelado/COPA-LUNA.jpg"></a>
                    <h4 align="center">Copa Luna: 10.500 $</h4>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-8">
                    <a><img class="img-responsive img-home-portfolio" src="img/CopasHelado/Durazno con crema.jpg"></a>
                    <h4 align="center">Durazno con Crema: 10.800 $</h4>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-8">
                    <a><img class="img-responsive img-home-portfolio" src="img/CopasHelado/EspecialFresasYDuraznos.jpg"></a>
                    <h4 align="center">Especial Fresas: 10.800 $</h4>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-8">
                    <a><img class="img-responsive img-home-portfolio" src="img/CopasHelado/FresasCrema.jpg"></a>
                    <h4 align="center">Fresas Crema: 9.500 $</h4>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-8">
                    <a><img class="img-responsive img-home-portfolio" src="img/CopasHelado/copaEncanto.jpg"></a>
                    <h4 align="center">Copa Encanto: 10.500 $</h4>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-8">
                    <a><img class="img-responsive img-home-portfolio" src="img/CopasHelado/copaFiesta.jpg"></a>
                    <h4 align="center">Copa Fiesta: 11.500 $</h4>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-8">
                    <a><img class="img-responsive img-home-portfolio" src="img/CopasHelado/copaEstrella.jpg"></a>
                    <h4 align="center">Copa Estrella: 10.500 $</h4>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-8">
                    <a><img class="img-responsive img-home-portfolio" src="img/CopasHelado/copaJugosa.jpg"></a>
                    <h4 align="center">Copa Jugosa: 12.000 $</h4>
                </div>
            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->

    </div>
    <!-- /.section -->

    <div class="section-colored">

        <div class="container">

            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <h2>ENSALADAS Y SALPICONES:</h2>
                    <ul>
                        <li><h4>Dietetica Especial: 13.000 $</h4></li>
                        <li><h4>Dietetica Super Jugosa: 16.500 $</h4></li>
                        <li><h4>Super Jugosa: 15.500 $</h4></li>
                        <li><h4>Especial: 12.500 $</h4></li>
                        <li><h4>Junior: 10.500 $</h4></li>
                        <li><h4>Solo Frutas: 8.500 $</h4></li>
                        <li><h4>Salpicon grande: 7.500 $</h4></li>
                        <li><h4>Salpicon con Helado: 5.000 $</h4></li>
                        <li><h4>Salpicón solo Frutas: 4.400 $ </h4></li>
                    </ul>
                    
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <img class="img-responsive" src="img/EnsaladasYsalpicones/ensaladaHelado.jpg">
                </div>
            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->

    </div>
    <!-- /.section-colored -->

    <div class="section-colored1">

        <div class="container">

            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                     <img class="img-responsive" src="img/JugosYbebidas/malteadas_1.jpg">
                </div>
               
                
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <h2>JUGOS Y VARIEDADES:</h2>
                    <ul>
                      <li><h4>Jugos: 4.500 $</h4></li>
                        <li><h4>Jugo en Leche Combinado: 5.000 $</h4></li>
                        <li><h4>Malteadas: 6.500 $</h4></li>
                        <li><h4>Zumo Mandarina: 5.500 $</h4></li>
                        <li><h4>Brevas con queso: 9.500 $</h4></li>
                        <li><h4>Banana Split: 10.500 $</h4></li>
                        <li><h4>Concierto Paisa: 12.500 $</h4></li>
                        <li><h4>Meladas con queso: 9.500 $</h4></li>
                        <li><h4>Papaya Mixta: 10.000 $ </h4></li>
                    </ul>
                </div>
            </div>
        </div>
    </div><br>
    
     <div class="container">

        <div class="row well">
            <div class="col-lg-8 col-md-8">
                <h3>¡Handa atrevete a pedir de nuestro gran y variado menu!</h3>
                <p><b>Los mas ricos helados, ensaladas de frutas y gran variedad de jugos</b></p>
            </div>
             <div class="col-lg-4 col-md-4">
                <a class="btn btn-lg btn-primary pull-right" href="RegDomicilio.jsp">Solicitar domicilio</a>
            </div>
        </div>
        <!-- /.row -->

    </div>
   
    

           <%@include file="footer.jspf" %>
       
    </body>
</html>
