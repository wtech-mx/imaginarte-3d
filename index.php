<?php
  include("inicio.php");
  

?>

<body>

  <div itemscope itemtype="http://schema.org/Article">

  <?php 
  include "slide-frontend.php"; 
  ?>




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
                    <h2 itemprop="author" style="color: #683cc0"><strong>IMAGINARTE 3D</strong></h2>
                     <div class="barra" style="background-color: #683cc0;padding: 5px;width: 10px;position: absolute;top:70px;height:90px;left: -5px"></div>
                    <p class="card-text "  itemprop="description" style="color: #000">Somos un equipo de especialistas que promueve <br> soluciones en diseño publicitario, mediante <br> la elaboración de productos de alta caliad y de acuerdo a tus necesidades.</p>
                    <h2 itemprop="author" style="color: #00bdb4"><strong>Misión</strong></h2>
                    <div class="barra" style="background-color: #00bdb4;padding: 5px;width: 10px;position: absolute;top:200px;height:90px;left: -5px"></div>
                    <p class="card-text "  itemprop="description" style="color: #000">
                      Ofrecer productos y servicios de calidad, <br> que permitan plasmar las ideas.
                    </p>
<!--                    <h2 itemprop="author" style="color: #683cc0"><strong>¿Por qué elegirnos?</strong></h2>
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
                    </p>-->
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
              <h1 class="text-uppercase text-rigth ban-imagina">IMAGINA - COTIZA - CREA </h1>
               <div class="barra" style="">
               </div>
             </div>
          </div>
          <h1 class="text-uppercase text-center" style="">TE ACOMPAÑAMOS DE PRINCIPIO A FIN</h1>
        </div>  
      </section>

      <section class="callto pt-50 pb-50 fluid "style="background: #fff">
        <div class="container text-center">
          <div class="row text-center">
             <div class="col-lg-9 callto-left text-contet" style="left: 15%;">
              <p class="" style="color: #000">Nuestro Objetivo es facilitar el proceso brindandote  <br>diferentes opciones que pueden acomodarse a tu presupuesto , entregas e instalaciones</p>
             </div>
          </div>
           <a href="https://wa.me/5215587703080?text=Hola%20vi%20su%20pagina%20web,%20quisiera%20mas%20información %20de%20sus%20servicios" class="btn btn-lg btn-primary" target="blank" style="border-radius: 30px;background-image: linear-gradient(to right, #7e59db, #6f4bcb, #5f3cbb, #4f2eab, #3f209b); width: 70%;height: 70px">CONTACTANOS</a>
        </div>  
      </section>  

      <style type="text/css" media="screen">

      .barra{
      background-color: #00ffa0;
      padding: 5px;
      width: 70%;
      position: absolute;
      top:90%;
      left: 35%;
      }

       @media screen and (max-width: 992px) {
        .text-center p {
          color: white;
          position: relative;
          left:-100px;
        }
        .ban-imagina{
          position: relative;
          left: -30%;
        }
      }

      @media screen and (max-width: 600px) {
        .barra{
        padding: 3px;
        width: 45%;
        position: absolute;
        top:90%;
        left: 30%;
        }
      }     
      </style>

  <?php 
   include("views/index.view.php");

   ?>



<!--    <div class="contact py-lg-5 py-md-4 py-3" id="contact">
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
  </div>-->
  
  <div class="map-w3ls">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d940.7925323384416!2d-99.12674698442629!3d19.405053863449766!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85d1feeb79d6ceb7%3A0x20030c61e1f9bfe0!2sCalz.+de+la+Viga+363%2C+Asturias%2C+06850+Ciudad+de+M%C3%A9xico%2C+CDMX!5e0!3m2!1ses!2smx!4v1545069151649" width="1200" height="400" frameborder="0" style="border:0" allowfullscreen>
    </iframe>
  </div>
  
<?php
  include("script-config.php");
  include("footer.php");
?>
  
</body>




