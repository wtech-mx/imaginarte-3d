 <?php
  include("header-letras.php");
 ?>   
 <?php 
include("conexion.php");
?> 
<style type="text/css" media="screen">
  .bg-cont{
    height: auto;
  }
  .bg {
  /* The image used */
  height: 50%;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>

<body>


<!--      <div class="about py-lg-5 py-md-4 py-3" id="about">   
        <div class="container py-sm-5 py-4">      
          <div class="row">
            <div class="card mb-3" >
              <div class="row no-gutters" style="padding: 30px;">

                <div class="col-md-8 p-5" style="padding: 10px;">
                  <div class="card-body">
                    <h2 itemprop="author" style="color: #683CC0"><strong>¿PORQUE ELEGIR LETRAS CORPOREAS 3D?</strong></h2>
                     <div class="barra" style="background-color: #683CC0;padding: 5px;width: 10px;position: absolute;top:70px;height:90px;left: -5px"></div>
                    <p class="card-text "  itemprop="description" style="color: #000">Somos un equipo de especialistas que promueve <br> soluciones en diseño publicitaario, mediante <br> la elavoracion de productos de alta caliad y de acuerdo a tus necesidades.</p>


                   </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>-->


<div class="row services-box" style="background-image: url('images/LOGO/background.png');background-repeat:no-repeat;padding: 60px;">

        <!-- services -->
        <section class="services py-lg-5 py-md-4 py-3" id="services">
          <div class="container  py-sm-5 py-4 ">
                <div class="title-heading text-center mb-sm-5 mb-4"style="border-radius: 10px;">
                  <h3 class="text-left" itemprop="Service" style="color: #4f1aa6;padding: 50PX;position: relative;left: -50px;">Creativa</h3>
                    <h4 itemprop="Service"></h4>
                    <div class="barra" style="background-color: #fff;padding: 5px;width: 200px;position: absolute;top:100px">
                    </div>
                  </div>
           </div>   
        </section>

          <?php
        $nums=1;
        $sql_banner_top=mysqli_query($con,"select * from banner_art where estado=1 order by orden ");
        while($rw_banner_top=mysqli_fetch_array($sql_banner_top)){
          ?>
          
          <div class="col-lg-3 col-md-4 col-xs-6 thumb">
            <a class="" href="#" data-image-id="" data-toggle="modal" data-title="<?php echo $rw_banner_top['titulo'];?>" data-caption="<?php echo $rw_banner_top['descripcion'];  ?>" data-image="img/banner/<?php echo $rw_banner_top['url_image'];?>" data-target="#image-gallery">
              <img class="card-serv img-responsive" src="img/banner/<?php echo $rw_banner_top['url_image'];?>" alt="<?php echo $rw_banner_top['titulo'];?>">
            </a>
          </div>
          <?php
          
          if ($nums%4==0){
            echo '<div class="clearfix"></div>';
          }
          $nums++;
        }
      ?>
</div>

<div class="row services-box" style="background-image: url('images/LOGO/background2.png');background-repeat:no-repeat;padding: 60px;">

        <!-- services -->
        <section class="services py-lg-5 py-md-4 py-3" id="services">
          <div class="container  py-sm-5 py-4 ">
                <div class="title-heading text-center mb-sm-5 mb-4"style="border-radius: 10px;">
                  <h3 class="text-left" itemprop="Service" style="color: #4f1aa6;padding: 50PX;position: relative;left: -50px;color: #fff">Proteccion Civil</h3>
                    <h4 itemprop="Service"></h4>
                    <div class="barra" style="background-color: #fff;padding: 5px;width: 200px;position: absolute;top:100px">
                    </div>
                  </div>
           </div>   
        </section>

          <?php
        $nums=1;
        $sql_banner_top=mysqli_query($con,"select * from banner_civil where estado=1 order by orden ");
        while($rw_banner_top=mysqli_fetch_array($sql_banner_top)){
          ?>
          
          <div class="col-lg-3 col-md-4 col-xs-6 thumb">
            <a class="" href="#" data-image-id="" data-toggle="modal" data-title="<?php echo $rw_banner_top['titulo'];?>" data-caption="<?php echo $rw_banner_top['descripcion'];  ?>" data-image="img/banner/<?php echo $rw_banner_top['url_image'];?>" data-target="#image-gallery">
              <img class="card-serv img-responsive" src="img/banner/<?php echo $rw_banner_top['url_image'];?>" alt="<?php echo $rw_banner_top['titulo'];?>">
            </a>
          </div>
          <?php
          
          if ($nums%4==0){
            echo '<div class="clearfix"></div>';
          }
          $nums++;
        }
      ?>
</div> 


      <!-- Start callto Area -->
      <section class="callto pt-50 pb-50">
        <div class="container">
          <div class="row">
             <div class="col-lg-9 callto-left">
              <h1 class="text-uppercase">Ya sea para promocionar o para equipar </h1>
             </div>

          </div>
        </div>  
      </section>
      <!-- End callto Area -->
      <!-- Start About Area -->
      <section class="About-area section-gap" id="about">
        <div class="container">
          <div class="row d-flex align-items-center">
            <div class="col-lg-6 about-left">
            <div class="comparison-slider-wrapper">
              <!-- Comparison Slider - this div contain the slider with the individual images captions -->
              <div class="comparison-slider">
                <div class="overlay"> <strong></strong> </div>
               <img src="images/Antes y Despues/Señaletica/a1.jpg" alt="marioPhoto 2">
               <!-- Div containing the image layed out on top from the left -->
               <div class="resize">
                 <div class="overlay"><strong></strong> </div>
                <img src="images/Antes y Despues/Señaletica/d1.jpg">
               </div>
               <!-- Divider where user will interact with the slider -->
               <div class="divider"></div>
              </div>

             </div>
            </div>
            <div class="col-lg-6 about-right">
              <h1>
                Olvídate de tener  <br>
                un laberinto
              </h1>
              <p>
                Olvídate de tener un laberinto y pensar si tus clientes no encontrarán el lugar que buscan.
              </p>

            </div>
          </div>
        </div>  
      </section>
      <!-- End About Area -->


<?php 
  include("footer.php");
  include("script-letras.php");
?>

</body>
