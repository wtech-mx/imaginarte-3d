<?php
  include("inicio.php");
  

?>

<body>

  <div itemscope itemtype="http://schema.org/Article">


<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="images/slide1.jpg" alt="...">
      <div class="carousel-caption">
        ...
      </div>
    </div>
    <div class="item">
      <img src="images/slide2.jpg" alt="...">
      <div class="carousel-caption">
        ...
      </div>
    </div>

     <div class="item">
      <img src="images/slide3.jpg" alt="...">
      <div class="carousel-caption">
        ...
      </div>
    </div>

    <div class="item">
      <img src="images/slide4.jpg" alt="...">
      <div class="carousel-caption">
        ...
      </div>
    </div>
    ...
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>
</div>



      <div class="about py-lg-5 py-md-4 py-3" id="about">   
        <div class="container py-sm-5 py-4">      
          <div class="row">
            <div class="card mb-3" >
              <div class="row no-gutters" style="padding: 30px;">
                <div class="col-md-4">
                    <img src="images/bgteam.png" alt="">
                    <title>Placeholder</title>
                    <rect width="100%" height="100%" fill="#868e96"/>
                    <text x="50%" y="50%" fill="#dee2e6" dy=".3em"></text>
                  </svg>

                </div>
                <div class="col-md-8 p-5" style="padding: 10px;">
                  <div class="card-body">
                    <h2 itemprop="author" style="color: #683cc0"><strong>¿Quiénes somos?</strong></h2>
                     <div class="barra" style="background-color: #683cc0;padding: 5px;width: 10px;position: absolute;top:70px;height:90px;left: -5px"></div>
                    <p class="card-text "  itemprop="description" style="color: #000">Somos un gran equipo de especialistas en Publicidad Exterior e Interior, nuestra principal labor es satisfacer las  necesidades de comunicación y difusión de nuestros clientes a través de diferentes técnicas innovadoras.</p>
                    <h2 itemprop="author" style="color: #00bdb4"><strong>¿Qué hacemos?</strong></h2>
                    <div class="barra" style="background-color: #00bdb4;padding: 5px;width: 10px;position: absolute;top:200px;height:200px;left: -5px"></div>
                    <p class="card-text "  itemprop="description" style="color: #000">
                      • Letras 3D o Letras Corpóreas  <br>
                      • Impresión digital (lona, vinil, papel tapiz, microperforado, tela, etc.) <br>
                      • Anuncios luminosos <br>
                      • Señaletica creativa <br>
                      • Artes graficas <br>
                      • Tableros decorativos <br>
                    </p>
                    <h2 itemprop="author" style="color: #683cc0"><strong>¿Por qué elegirnos?</strong></h2>
                    <div class="barra" style="background-color: #683cc0;padding: 5px;width: 10px;position: absolute;top:440px;height:260px;left: -5px"></div>
                    <p class="card-text "  itemprop="description" style="color: #000">
                      • Somos Profesionales en Publicidad exterior e interior – diseñamos, fabricamos e instalamos <br>
                      • Ofrecemos garantía en todos nuestros trabajos <br>
                      • Servicio personalizado <br>
                      • Mejor costo = Mejor calidad <br>
                      • Somos integrales <br>
                      • Cuidamos cada detalle <br>
                      • Nos respalda grandes proyectos y más de 10 años de servicio <br>
                      • Brindamos diferentes soluciones de publicidad <br>
                    </p>
                   </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>



<?php 
include("container-services.php");
 ?>

      <!-- Start callto Area -->
      <section class="callto pt-50 pb-50 fluid">
        <div class="container">
          <div class="row text-rigth">
             <div class="col-lg-9 callto-left fluid">
              <h1 class="text-uppercase text-center">IMAGINA - COTIZA - CREA </h1>
               <div class="barra" style="background-color: #00ffa0;padding: 5px;width: 70%;position: absolute;top:90%;left: 21%">
               </div>
             </div>
          </div>
          <h1 class="text-uppercase text-center" style="">TE ACOMPAÑAMOS DE PRINCIPIO A FIN</h1>
        </div>  
      </section>

  <?php 

  include("views/index.view.php");

   ?>

    <section class="wthree-row w3-gallery py-lg-5 py-md-4 py-3" id="gallery">
        <div class="container-fluid text-center">
            <div class="title-heading text-center">
        <h3 itemprop="gallery"><strong>Proyectos Imaginarte 3D</strong></h3>
        <h2>Imagina-Cotiza-Crea</h2>

      </div>
            <ul class="portfolio-categ filter pt-5 pt-sm-4 mb-5 mb-sm-4 text-center">
                <li class="port-filter all active">
                    <a href="#">Todo</a>
                </li>
                <li class="cat-item-1">
                    <a href="#" title="Category 1">ANUNCIOS LUMINOSOS</a>
                </li>
                <li class="cat-item-2">
                    <a href="#" title="Category 2">ARTES GRÁFICAS</a>
                </li>
                <li class="cat-item-3">
                    <a href="#" title="Category 3">IMPRESIÓN DIGITAL DE ALTA RESOLUCIÓN</a>
                </li>
                <li class="cat-item-4">
                    <a href="#" title="Category 4">LETRAS 3D CORPOREAS</a>
                </li>
            </ul>
            <ul class="portfolio-area clearfix">
                <li class="portfolio-item2" data-id="id-0" data-type="cat-item-4">
                    <div>
                        <a class="image-gal" href="galleria/1.jpeg" data-gal="prettyPhoto[gallery]">

                            <img src="galleria/1.jpeg" alt= "Letras 3d y corporeas" class="img-fluid w3layouts agileits" alt="Letras 3d y corporeas">

                        </a>
                    </div>
                </li>

                <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/2.jpeg" data-gal="prettyPhoto[gallery]">

                            <img src="galleria/2.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

                <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/3.jpeg" data-gal="prettyPhoto[gallery]">

                            <img src="galleria/3.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

                <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/4.jpeg" data-gal="prettyPhoto[gallery]">

                            <img src="galleria/4.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

                <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/5.jpeg" data-gal="prettyPhoto[gallery]">

                            <img src="galleria/5.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

                <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/6.jpeg" data-gal="prettyPhoto[gallery]">

                            <img src="galleria/6.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

                <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/7.jpeg" data-gal="prettyPhoto[gallery]">

                            <img src="galleria/7.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

                <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/8.jpeg" data-gal="prettyPhoto[gallery]">

                            <img src="galleria/8.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

                <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/9.jpeg" data-gal="prettyPhoto[gallery]">

                            <img src="galleria/9.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

                <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/10.jpeg" data-gal="prettyPhoto[gallery]">

                            <img src="galleria/10.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

                <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/11.jpeg" data-gal="prettyPhoto[gallery]">

                            <img src="galleria/11.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

                <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/12.jpeg" data-gal="prettyPhoto[gallery]">

                            <img src="galleria/12.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

                <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/13.jpeg" data-gal="prettyPhoto[gallery]">

                            <img src="galleria/13.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

                <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/14.jpeg" data-gal="prettyPhoto[gallery]">

                            <img src="galleria/14.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

                 <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/15.jpeg" data-gal="prettyPhoto[gallery]">

                            <img src="galleria/15.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

                <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/16.jpeg" data-gal="prettyPhoto[gallery]">
                            <img src="galleria/16.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

                <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/17.jpeg" data-gal="prettyPhoto[gallery]">

                            <img src="galleria/17.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

                 <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/18.jpeg" data-gal="prettyPhoto[gallery]">

                            <img src="galleria/18.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

                <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/19.jpeg" data-gal="prettyPhoto[gallery]">

                            <img src="galleria/19.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

                <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/20.jpeg" data-gal="prettyPhoto[gallery]">

                            <img src="galleria/20.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

                <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/30.jpeg" data-gal="prettyPhoto[gallery]">

                            <img src="galleria/30.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

                <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/31.jpeg" data-gal="prettyPhoto[gallery]">

                            <img src="galleria/31.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

                <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/32.jpeg" data-gal="prettyPhoto[gallery]">

                            <img src="galleria/32.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

                <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/33.jpeg" data-gal="prettyPhoto[gallery]">

                            <img src="galleria/33.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

                <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/34.jpeg" data-gal="prettyPhoto[gallery]">

                            <img src="galleria/34.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

                 <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/35.jpeg" data-gal="prettyPhoto[gallery]">

                            <img src="galleria/35.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

                <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/36.jpeg" data-gal="prettyPhoto[gallery]">
                            <img src="galleria/36.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

                <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/37.jpeg" data-gal="prettyPhoto[gallery]">

                            <img src="galleria/37.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

                 <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/38.jpeg" data-gal="prettyPhoto[gallery]">

                            <img src="galleria/38.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

                <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/39.jpeg" data-gal="prettyPhoto[gallery]">

                            <img src="galleria/39.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

                <li class="portfolio-item2" data-id="id-1" data-type="cat-item-2">
                    <div>
                        <a class="image-gal" href="galleria/40.jpeg" data-gal="prettyPhoto[gallery]">

                            <img src="galleria/40.jpeg" alt="Artes Graficas" class="img-fluid w3layouts agileits" alt="Artes Graficas">

                        </a>
                    </div>
                </li>

            </ul>
    

        </div>

    </section>


        <section class="callto pt-50 pb-50 fluid "style="background: #fff">
        <div class="container text-center">
          <div class="row text-center">
             <div class="col-lg-9 callto-left" style="left: 15%;">
              <p class="">Nuestro Objetivo es facilitar el proceso brindandote diferentes opciones que pueden acomodarse a tu presupuesto , entregas e instalaciones</p>
             </div>
          </div>
           <a href="https://wa.me/5215587703080?text=Hola%20vi%20su%20pagina%20web,%20quisiera%20mas%20información %20de%20sus%20servicios" class="btn btn-lg btn-primary" target="blank" style="border-radius: 30px;background-image: linear-gradient(to right, #7e59db, #6f4bcb, #5f3cbb, #4f2eab, #3f209b); width: 70%;height: 70px">CONTACTANOS</a>
        </div>  
      </section>  


    <div class="contact py-lg-5 py-md-4 py-3" id="contact">
        <div class="container py-sm-5 py-4">
          <div class="title-heading text-center mb-sm-5 mb-4">
            <h3>CONTACTO</h3>
      
          </div>
          <div class="row">
            <div class="col-lg-4 col-sm-6">

            </div>
            <div class="col-lg-8 col-sm-6">
            <div class="contact-middle">
              <h3>Escribe tus datos</h3>
              <form action="#" method="post">
                <div class="form-group">
                <label>Nombre</label>
                 <input type="text" class="form-control" placeholder="First name" required="">
                </div>
                <div class="form-group">
                <label>Email </label>
                <input type="email" class="form-control"  placeholder="Email" required="">            
                </div>
                <div class="form-group">
                <label>Texto</label>
                  <textarea class="form-control" rows="3" required=""></textarea>
                </div>
                <button type="submit" class="btn btn-2">Enviar</button>
              </form>
            </div>
            
            </div>
        </div>
      </div>
  </div>
  
  <div class="map-w3ls">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d940.7925323384416!2d-99.12674698442629!3d19.405053863449766!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85d1feeb79d6ceb7%3A0x20030c61e1f9bfe0!2sCalz.+de+la+Viga+363%2C+Asturias%2C+06850+Ciudad+de+M%C3%A9xico%2C+CDMX!5e0!3m2!1ses!2smx!4v1545069151649" width="1200" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>
  </div>
  
<?php
  include("script-config.php");
  include("footer.php");
?>
  
</body>




