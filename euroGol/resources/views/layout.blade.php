<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="es" data-lang="es">
<!--<![endif]-->

<head>
<meta charset="utf-8">
<meta name="description" content="EuroGol es la web oficial de la UEFA, la Union of European Football Associations, el maximo organismo del futbol europeo. La UEFA trabaja para promocionar, proteger y desarrollar el futbol europeo a lo largo de sus 55 federaciones miembro, organizando tambien algunas de las muchas competenciones de clubes del mundo.">
<meta name="viewport" content="width=device-width, initial-scale=1">


<link rel="stylesheet" href="{{asset('css/font-awesome.min.css')}}">
<link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
<link rel="stylesheet" href="{{asset('css/jquery.fancybox.css')}}">
<link rel="stylesheet" href="{{asset('css/main.css')}}">
<link rel="stylesheet" href="{{asset('css/responsive.css')}}">
<link rel="stylesheet" href="{{asset('css/animate.min.css')}}">
<link rel="stylesheet" href="{{asset('https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css')}}">
<link rel="icon" href="{{asset('images/favicon.ico')}}">
<link rel="stylesheet" href="{{asset('css/icomoon.css')}}">

</head>
<body>

<!--==========================
  Menu Section
  ============================-->

<section class="banner" role="banner">
  <header id="header">   
    <div class="menu">
      <div class="header-content clearfix">
        <nav class="navigation" role="navigation">
          <ul>
            <li><a data-scroll href="/">Inicio</a></li>
            <li><a data-scroll href="/#sec2">UEFA</a></li>
            <li><a data-scroll href="/#sec4">Equipo</a></li>
            <li><a data-scroll href="/#sec3">Contacto</a></li>
          </ul>
        </nav>
          <a href="#" class="nav-toggle">Menu<span></span></a>
      </div>
    </div>
  </header>



  <div class="arriba">
    
    <i class="fa fa-arrow-circle-up" aria-hidden="true"></i>

  </div>

<!--==========================
  Banner Section
  ============================-->  

  <div class="container" id="sec1" >
    <div class="col-md-10 col-md-offset-1">
      <div class="banner-text text-center">
        @yield('banner')
      </div>
    </div>
  </div>
</section>

<!--==========================
  Descripcion Section
  ============================-->

@yield('contenido')

<!--==========================
  Footer Section
  ============================-->

<footer class="section footer">
  <div class="footer-bottom">
    <div class="container">
      <div class="col-md-12">
        <p>
        <ul class="footer-share">
          <li><a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a></li>
          <li><a href="https://www.twitter.com/"><i class="fa fa-twitter"></i></a></li>
          <li><a href="https://www.linkedin.com/"><i class="fa fa-linkedin"></i></a></li>
        </ul>
        </p>
        <p>Todos los derechos reservados © 2017<br>
          Made in<i class="fa fa-heart pulse"></i><a href="http://www.designstub.com/">Argentina</a></p>
      </div>
    </div>
  </div>
</footer>

<!--==========================
  JS Section
  ============================-->

<script src="{{asset('https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js')}}"></script> 
<script src="{{asset('js/bootstrap.min.js')}}"></script> 
<script src="{{asset('js/jquery.fancybox.pack.js')}}"></script> 
<script src="{{asset('js/jquery.waypoints.min.js')}}"></script> 
<script src="{{asset('js/retina.min.js')}}"></script> 
<script src="{{asset('js/modernizr.js')}}"></script> 
<script src="{{asset('js/jquery.contact.js')}}"></script> 
<script src="{{asset('js/main.js')}}"></script>

<!--==========================
  Scroll Section
  ============================-->

<script src="{{asset('contactform/contactform.js')}}"></script>
<script src="{{asset('dist/js/smooth-scroll.js')}}"></script>

</body>
</html>