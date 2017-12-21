<!DOCTYPE html>
<html lang="en">

  <head>

    <<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Accueil-gestionArtisans</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="${pageContext.request.contextPath}/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/resources/https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='${pageContext.request.contextPath}/resources/https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/css/agency.min.css" rel="stylesheet">
      <link href="${pageContext.request.contextPath}/resources/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/myStyle.css" rel="stylesheet">


  </head>

   <body id="page-top">

    <!-- Navigation -->
    <nav  class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">

      <div class="container">
         <img  src="${pageContext.request.contextPath}/resources/img/about/logo4.png" />
        <a style="text-decoration: none; color:#EACE03;font-family: tahoma;font-size: 15px; position: relative;top:20px;left: 15px "  href="#page-top">Votre annuaire des artisants </a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav text-uppercase ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#services">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#portfolio">Arti-Zone</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#about">A propos</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#team">Equipe</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#contact">Contacter</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="loginOne">Se Connecter</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Header -->



    <header class="masthead">

      <div class="container">

        <div class="intro-text">
          <img  id="imgAide"  src="${pageContext.request.contextPath}/resources/img/about/BesionDaide.png" />
          <div id="firstTitle " style="letter-spacing: 8px" > votre devis calcul&eacute; en quelques clics :

</div>

  <div class="container mainMenu">
<a class="card"  href="#">
  <img class="card-img-top" src="${pageContext.request.contextPath}/resources/img/mainMenu/plamberie.png" alt="Card image cap">
</a>
<a class="card"  href="#">
  <img class="card-img-top" src="${pageContext.request.contextPath}/resources/img/mainMenu/Serrurerie.png" alt="Card image cap">
</a>
<a class="card"  href="#">
  <img class="card-img-top" src="${pageContext.request.contextPath}/resources/img/mainMenu/Chauffage.png" alt="Card image cap">
</a>
<a class="card"  href="#">
  <img class="card-img-top" src="${pageContext.request.contextPath}/resources/img/mainMenu/Electricite.png" alt="Card image cap">
</a>
<a class="card"  href="#">
  <img class="card-img-top" src="${pageContext.request.contextPath}/resources/img/mainMenu/Vitrerie.png" alt="Card image cap">
</a>
<a class="card"  href="#">
  <img class="card-img-top" src="${pageContext.request.contextPath}/resources/img/mainMenu/Bricolage.png" alt="Card image cap">
</a>
<a class="card"  href="#">
  <img class="card-img-top" src="${pageContext.request.contextPath}/resources/img/mainMenu/Climatisation.png" alt="Card image cap">
</a>
</div>



          <div id="titleIndex" style="line-height: 1.05em; font-weight: 600; font-size: 38px;letter-spacing: 8px " >Un artisan chez vous en moins de 2h 
et à prix garanti 24h/24 et 7j/7 </div>

         
    


   <form>
  <div class="form-row">
    

    <div class="form-group col-md-4 ">
      <select class="form-control form-control-sm" id="categories">
      <option>Cat&eacute;gories</option>
      </select>
      
      </div>
      <div class="form-group col-md-4">
      <select class="form-control form-control-sm"  id="villes">
      <option>Villes</option>
      </select>
      </div>

      <div class="form-group col-md-3">
       <button id="rechercher" type="submit" class="form-control form-control-sm">Rechercher</button>
      </div>

      </div>
         
         <img id="imgCommander"src="${pageContext.request.contextPath}/resources/img/about/PourCommande.png" / >
    </header>


<div id="jssor_1" style="position:relative;margin:0 auto;top:5px;left:0px;width:980px;height:65px;overflow:hidden;visibility:hidden;">
        <!-- Loading Screen -->
        <div data-u="loading" class="jssorl-009-spin" style="position:absolute;top:0px;left:0px;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
            <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="${pageContext.request.contextPath}/resourcesimg/spin.svg" />
        </div>
        <div id="slides" data-u="slides" style="cursor:default;position:relative;top:10px;left:0px;width:980px;height:45px;overflow:hidden;padding:15px">
            <div>
                <img   data-u="image" src="${pageContext.request.contextPath}/resources/img/020.png" />
            </div>
            <div>
                <img data-u="image" src="${pageContext.request.contextPath}/resources/img/009.png" />
            </div>
            <div>
                <img data-u="image" src="${pageContext.request.contextPath}/resources/img/020.png" />
            </div>
            <div>
                <img data-u="image" src="${pageContext.request.contextPath}/resources/img/009.png" />
            </div>
            <div>
                <img data-u="image" src="${pageContext.request.contextPath}/resources/img/020.png" />
            </div>
            <div>
                <img data-u="image" src="${pageContext.request.contextPath}/resources/img/010.png" />
            </div>
            <div>
                <img data-u="image" src="${pageContext.request.contextPath}/resources/img/020.png" />
            </div>
            <div>
                <img data-u="image" src="${pageContext.request.contextPath}/resources/img/020.png" />
            </div>
            <div>
                <img data-u="image" src="${pageContext.request.contextPath}/resources/img/009.png" />
            </div>
            <div>
                <img data-u="image" src="${pageContext.request.contextPath}/resources/img/020.png" />
            </div>
            <div>
                <img data-u="image" src="${pageContext.request.contextPath}/resources/img/020.png" />
            </div>
        </div>
    </div>




    <!-- Services -->
    <section id="services" >
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 style="color:white;" class="section-heading text-uppercase">COMMENT FONCTIONNE <b>Arti-Zone</b></h2>
          </div>
        </div>
        <div class="row text-center">

    <div class="col-md-3">
            <span class="fa-stack fa-4x">
              <i class="fa fa-circle fa-stack-2x text-primary"></i>
              <i class="fa fa-shopping-cart fa-stack-1x fa-inverse"></i>
            </span>
            <h4 class="service-heading">CHOISISSEZ VOTRE FORFAIT</h4>
            <p class="text-muted">  
              Choisissez votre forfait en cas de panne, vous lancez l’application ArtiZone, vous choisissez votre univers (plomberie, serrurerie, chauffage, électricité), et vous sélectionnez le forfait qui convient le mieux a votre urgence. Les prix affichés sont clairs et fixés à l’avance.
            </p>
          </div>

          <div class="col-md-2">
            <span class="fa-stack fa-4x">
              <i class="fa fa-circle fa-stack-2x text-primary"></i>
              <i class="fa fa-shopping-cart fa-stack-1x fa-inverse"></i>
            </span>
            <h4 class="service-heading">E-Commerce</h4>
            <p class="text-muted">Notre site est un site e-commerce consiste à utiliser un média électronique – principalement, internet – dans le but de vendre des produits ou des services sans besoin de déplacer.</p>
          </div>


          <div class="col-md-2">
            <span class="fa-stack fa-4x">
              <i class="fa fa-circle fa-stack-2x text-primary"></i>
              <i class="fa fa-shopping-cart fa-stack-1x fa-inverse"></i>
            </span>
            <h4 class="service-heading">SUIVEZ VOTRE INTERVENTION</h4>
            <p class="text-muted"></p>
          </div>
          <div class="col-md-2">
            <span class="fa-stack fa-4x">
              <i class="fa fa-circle fa-stack-2x text-primary"></i>
              <i class="fa fa-laptop fa-stack-1x fa-inverse"></i>
            </span>
            <h4 class="service-heading">Responsive Design</h4>
            <p class="text-muted">Vous pouvez consulter le site web Artizone à travers une large gamme d'appareils (d'ordinateur, smartphones, tablettes, TV, etc.) avec le même confort visuel.</p>
          </div>
          <div class="col-md-2">
            <span class="fa-stack fa-4x">
              <i class="fa fa-circle fa-stack-2x text-primary"></i>
              <i class="fa fa-lock fa-stack-1x fa-inverse"></i>
            </span>
            <h4 class="service-heading">Web Security</h4>
            <p class="text-muted">Nous vous informons que votre compte Artizone est protégé et sécurité, vous pouvez sécuriser encore davantage votre compte en maintenant à jour ces paramètres.</p>
          </div>
        </div>
      </div>
    </section>

    <!-- Portfolio Grid -->
    <section class="bg-light" id="portfolio">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">Domaines d'interventions</h2>
            <h3 class="section-subheading text-muted"></h3>
          </div>
        </div>
        <div class="row">

          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal1">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fa fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/01-thumbnail.jpg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Plomberie</h4>
            </div>
          </div>

          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal2">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fa fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/02-thumbnail.jpg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Electricité</h4>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal3">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fa fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/03-thumbnail.jpg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Chauffage</h4>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal4">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fa fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/04-thumbnail.jpg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Climatisation</h4>
             
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal5">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fa fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/05-thumbnail.jpg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Bricolage</h4>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal6">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fa fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/06-thumbnail.jpg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Serrurerie</h4>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- About -->
    <section id="about">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">A Propos</h2>
            <h3 class="section-subheading text-muted"></h3>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <ul class="timeline">
              <li>
                <div class="timeline-image">
                  <img class="rounded-circle img-fluid" src="${pageContext.request.contextPath}/resources/img/about/1.jpg" alt="">
                </div>
                <div class="timeline-panel">
                  <div class="timeline-heading">
                    
                    <h4 class="subheading">ArtiZone</h4>
                  </div>
                  <div class="timeline-body">
                    <p class="text-muted">Est un service de recherche internet professionnel conçu par des professionnelles qui comprennent la frustration lorsque vous ne pouvez pas trouver ce que vous cherchez. Il est simple, il est rapide, et cela fonctionne pour vous maintenant. Nos recherches pertinentes peuvent vous fournir des informations de qualité supérieure, spécifique ou générale que vous le souhaitez.
                    Enfin, vous pouvez facilement trouver le bricoleur compétent de votre choix.</p>
                  </div>
                </div>
              </li>

              <li class="timeline-inverted">
                <div class="timeline-image">
                  <img class="rounded-circle img-fluid" src="${pageContext.request.contextPath}/resources/img/about/4.jpg" alt="">
                </div>
                <div class="timeline-panel">
                  <div class="timeline-heading">
                    
                    <h4 class="subheading">Notre objectif</h4>
                  </div>
                  <div class="timeline-body">
                    <p class="text-muted">Notre site est un site e-commerce consiste à utiliser un média électronique – principalement, internet – dans le but de vendre des produits ou des services sans besoin de déplacer.</p>
                  </div>
                </div>
              </li>
              <li class="timeline-inverted">
                <div class="timeline-image">
                  <h4>Faites partie
                    <br>de notre
                    <br>histoire!</h4>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </section>

    <!-- Team -->
    <section class="bg-light" id="team">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">Notre &eacute;quipe :</h2>
            <h3 class="section-subheading text-muted"></h3>
          </div>
        </div>

        <div class="row">

          <div class="col-sm-3">
            <div class="team-member">
              <img class="mx-auto rounded-circle" src="${pageContext.request.contextPath}/resources/img/team/1.jpg" alt="">
              <h4>Richi Sara</h4>
              <p class="text-muted">Designer</p>
              <ul class="list-inline social-buttons">
                <li class="list-inline-item">
                  <a href="https://www.facebook.com/ArtiZone-517973245251543/?modal=admin_todo_tour">
                    <i class="fa fa-twitter"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-facebook"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-linkedin"></i>
                  </a>
                </li>
              </ul>
            </div>
          </div>

          <div class="col-sm-3">
            <div class="team-member">
              <img class="mx-auto rounded-circle" src="${pageContext.request.contextPath}/resources/img/team/2.jpg" alt="">
              <h4>Jafer Oualid</h4>
              <p class="text-muted">Designer</p>
              <ul class="list-inline social-buttons">
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-twitter"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-facebook"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-linkedin"></i>
                  </a>
                </li>
              </ul>
            </div>
          </div>

          <div class="col-sm-3">
            <div class="team-member">
              <img class="mx-auto rounded-circle" src="${pageContext.request.contextPath}/resources/img/team/3.jpg" alt="">
              <h4>ElRhayati Oussama</h4>
              <p class="text-muted">Developer</p>
              <ul class="list-inline social-buttons">
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-twitter"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-facebook"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-linkedin"></i>
                  </a>
                </li>
              </ul>
            </div>
          </div>

                    <div class="col-sm-3">
            <div class="team-member">
              <img class="mx-auto rounded-circle" src="${pageContext.request.contextPath}/resources/img/team/4.jpg" alt="">
              <h4>Bouzria Souhayla</h4>
              <p class="text-muted">Developer</p>
              <ul class="list-inline social-buttons">
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-twitter"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-facebook"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-linkedin"></i>
                  </a>
                </li>
              </ul>
            </div>
          </div>

                    <div class="col-sm-3">
            <div class="team-member">
              <img class="mx-auto rounded-circle" src="${pageContext.request.contextPath}/resources/img/team/3.jpg" alt="">
              <h4>Boumaiz AbdelAli</h4>
              <p class="text-muted">Scrum Master & Developer</p>
              <ul class="list-inline social-buttons">
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-twitter"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-facebook"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-linkedin"></i>
                  </a>
                </li>
              </ul>
            </div>
          </div>

                    <div class="col-sm-3">
            <div class="team-member">
              <img class="mx-auto rounded-circle" src="${pageContext.request.contextPath}/resources/img/team/3.jpg" alt="">
              <h4>EL Hajjaji Brahim</h4>
              <p class="text-muted">Developer</p>
              <ul class="list-inline social-buttons">
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-twitter"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-facebook"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-linkedin"></i>
                  </a>
                </li>
              </ul>
            </div>
          </div>

                    <div class="col-sm-3">
            <div class="team-member">
              <img class="mx-auto rounded-circle" src="${pageContext.request.contextPath}/resources/img/team/7.jpg" alt="">
              <h4>Boufni El Hassane</h4>
              <p class="text-muted">Developer</p>
              <ul class="list-inline social-buttons">
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-twitter"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-facebook"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-linkedin"></i>
                  </a>
                </li>
              </ul>
            </div>
          </div>

                    <div class="col-sm-3">
            <div class="team-member">
              <img class="mx-auto rounded-circle" src="${pageContext.request.contextPath}/resources/img/team/3.jpg" alt="">
              <h4>Mahboub Marwa</h4>
              <p class="text-muted">Developer</p>
              <ul class="list-inline social-buttons">
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-twitter"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-facebook"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-linkedin"></i>
                  </a>
                </li>
              </ul>
            </div>
          </div>

        </div>

        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
            
          </div>
        </div>
      </div>
    </section>

    <!-- Clients -->
    <section class="py-5">
      <div class="container">
        <div class="row">
          <div class="col-md-3 col-sm-6">
            <a href="#">
              <img class="img-fluid d-block mx-auto" src="${pageContext.request.contextPath}/resources/img/logos/envato.jpg" alt="">
            </a>
          </div>
          <div class="col-md-3 col-sm-6">
            <a href="#">
              <img class="img-fluid d-block mx-auto" src="${pageContext.request.contextPath}/resources/img/logos/designmodo.jpg" alt="">
            </a>
          </div>
          <div class="col-md-3 col-sm-6">
            <a href="#">
              <img class="img-fluid d-block mx-auto" src="${pageContext.request.contextPath}/resources/img/logos/themeforest.jpg" alt="">
            </a>
          </div>
          <div class="col-md-3 col-sm-6">
            <a href="#">
              <img class="img-fluid d-block mx-auto" src="${pageContext.request.contextPath}/resources/img/logos/creative-market.jpg" alt="">
            </a>
          </div>
        </div>
      </div>
    </section>

    <!-- Contact -->
    <section id="contact">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">CONTACTEZ NOUS</h2>
            <h3 class="section-subheading text-muted"></h3>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <form id="contactForm" name="sentMessage" novalidate>
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <input class="form-control" id="name" type="text" placeholder="Votre Nom *" required data-validation-required-message="Please enter your name.">
                    <p class="help-block text-danger"></p>
                  </div>
                  <div class="form-group">
                    <input class="form-control" id="email" type="email" placeholder="Votre Email *" required data-validation-required-message="Please enter your email address.">
                    <p class="help-block text-danger"></p>
                  </div>
                  <div class="form-group">
                    <input class="form-control" id="phone" type="tel" placeholder="Tél *" required data-validation-required-message="Please enter your phone number.">
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <textarea class="form-control" id="message" placeholder="Votre Message *" required data-validation-required-message="Please enter a message."></textarea>
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
                <div class="clearfix"></div>
                <div class="col-lg-12 text-center">
                  <div id="success"></div>
                  <button id="sendMessageButton" class="btn btn-primary btn-xl text-uppercase" type="submit">Envoyer Message</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
    <!-- Footer -->
    <footer>
      <div class="container" class="backgd_footer">
        <div class="row">
          <div class="col-md-4">
            <span class="copyright">Copyright &copy; ArtiZone 2017</span>
          </div>
          <div class="col-md-4">
            <ul class="list-inline social-buttons">
              <li class="list-inline-item">
                <a href="https://twitter.com/">
                  <i class="fa fa-twitter"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="https://www.facebook.com/ArtiZone-517973245251543/?modal=admin_todo_tour">
                  <i class="fa fa-facebook"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-linkedin"></i>
                </a>
              </li>
            </ul>
          </div>
          <div class="col-md-4">
            <ul class="list-inline quicklinks">
              <li class="list-inline-item">
                <a href="#">Accueil</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </footer>

    <!-- Portfolio Modals -->

    <!-- Modal 1 -->
    <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="close-modal" data-dismiss="modal">
            <div class="lr">
              <div class="rl"></div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-lg-8 mx-auto">
                <div class="modal-body">
                  <!-- Project Details Go Here -->
                  <h2 class="text-uppercase">Plomberie</h2>
                  <p class="item-intro text-muted"></p>
                  <img class="img-fluid d-block mx-auto" src="${pageContext.request.contextPath}/resources/img/portfolio/01-full.jpg" alt="">
                    <ul class="list-inline">
                    <li>Date: January 2017</li>
                    <li>Client: Threads</li>
                    <li>Category: Illustration</li>
                  </ul>
                  <button class="btn btn-primary" data-dismiss="modal" type="button">
                    <i class="fa fa-times"></i>
                    Fermer</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal 2 -->
    <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="close-modal" data-dismiss="modal">
            <div class="lr">
              <div class="rl"></div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-lg-8 mx-auto">
                <div class="modal-body">
                  <!-- Project Details Go Here -->
                  <h2 class="text-uppercase">Electricité</h2>
                  <p class="item-intro text-muted"></p>
                  <img class="img-fluid d-block mx-auto" src="${pageContext.request.contextPath}/resources/img/portfolio/02-full.jpg" alt="">
                  <p></p>
                  <ul class="list-inline">
                    <li>Date: January 2017</li>
                    <li>Client: Explore</li>
                    <li>Category: Graphic Design</li>
                  </ul>
                  <button class="btn btn-primary" data-dismiss="modal" type="button">
                    <i class="fa fa-times"></i>
                    Fermer</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal 3 -->
    <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="close-modal" data-dismiss="modal">
            <div class="lr">
              <div class="rl"></div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-lg-8 mx-auto">
                <div class="modal-body">
                  <!-- Project Details Go Here -->
                  <h2 class="text-uppercase">Chauffage</h2>
                  <p class="item-intro text-muted"></p>
                  <img class="img-fluid d-block mx-auto" src="${pageContext.request.contextPath}/resources/img/portfolio/03-full.jpg" alt="">
                  <p></p>
                  <ul class="list-inline">
                    <li>Date: January 2017</li>
                    <li>Client: Finish</li>
                    <li>Category: Identity</li>
                  </ul>
                  <button class="btn btn-primary" data-dismiss="modal" type="button">
                    <i class="fa fa-times"></i>
                    Fermer</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal 4 -->
    <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="close-modal" data-dismiss="modal">
            <div class="lr">
              <div class="rl"></div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-lg-8 mx-auto">
                <div class="modal-body">
                  <!-- Project Details Go Here -->
                  <h2 class="text-uppercase">Climatisation</h2>
                  <p class="item-intro text-muted"></p>
                  <img class="img-fluid d-block mx-auto" src="${pageContext.request.contextPath}/resources/img/portfolio/04-full.jpg" alt="">
                  <p></p>
                  <ul class="list-inline">
                    <li>Date: January 2017</li>
                    <li>Client: Lines</li>
                    <li>Category: Branding</li>
                  </ul>
                  <button class="btn btn-primary" data-dismiss="modal" type="button">
                    <i class="fa fa-times"></i>
                    Fermer</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal 5 -->
    <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="close-modal" data-dismiss="modal">
            <div class="lr">
              <div class="rl"></div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-lg-8 mx-auto">
                <div class="modal-body">
                  <!-- Project Details Go Here -->
                  <h2 class="text-uppercase">Bricolage</h2>
                  <p class="item-intro text-muted"></p>
                  <img class="img-fluid d-block mx-auto" src="${pageContext.request.contextPath}/resources/img/portfolio/05-full.jpg" alt="">
                  <p></p>
                  <ul class="list-inline">
                    <li>Date: January 2017</li>
                    <li>Client: Southwest</li>
                    <li>Category: Website Design</li>
                  </ul>
                  <button class="btn btn-primary" data-dismiss="modal" type="button">
                    <i class="fa fa-times"></i>
                    Fermer</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal 6 -->
    <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="close-modal" data-dismiss="modal">
            <div class="lr">
              <div class="rl"></div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-lg-8 mx-auto">
                <div class="modal-body">
                  <!-- Project Details Go Here -->
                  <h2 class="text-uppercase">Serrurerie</h2>
                  <p class="item-intro text-muted">.</p>
                  <img class="img-fluid d-block mx-auto" src="${pageContext.request.contextPath}/resources/img/portfolio/06-full.jpg" alt="">
                  <p></p>
                  <ul class="list-inline">
                    <li>Date: January 2017</li>
                    <li>Client: Window</li>
                    <li>Category: Photography</li>
                  </ul>
                  <button class="btn btn-primary" data-dismiss="modal" type="button">
                    <i class="fa fa-times"></i>
                    Fermer</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


    <!-- Créer votre compte -->
    <div class="portfolio-modal modal fade" id="compte" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="close-modal" data-dismiss="modal">
            <div class="lr">
              <div class="rl"></div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-lg-8 mx-auto">
                <div class="modal-body">
                  <!-- Project Details Go Here -->
                  <h2 class="text-uppercase">Créer votre compte</h2>
                  <p class="item-intro text-muted">Saisissez vos infos.</p>

 
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase"></h2>
            <h3 class="section-subheading text-muted"></h3>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <form id="contactForm" name="sentMessage" novalidate>
              <div class="row">

                 <!-- client -->
                 <div class="col-md-6">
                  <h4>Client</h4>
                   <div class="form-group">
                    <input class="form-control" id="email" type="email" placeholder="Email *" required data-validation-required-message="Saisissez votre Email.">
                    <p class="help-block text-danger"></p>
                  </div>
                   <div class="form-group">
                    <input class="form-control" id="nom" type="text" placeholder="Nom *" required data-validation-required-message="Saisissez votre nom.">
                    <p class="help-block text-danger"></p>
                  </div>
                   <div class="form-group">
                    <input class="form-control" id="prenom" type="text" placeholder="Prénom *" required data-validation-required-message="Saisissez votre prénom.">
                    <p class="help-block text-danger"></p>
                  </div>
                   <div class="form-group">
                    <input class="form-control" id="Password" type="Password" placeholder="mot de passe *" required data-validation-required-message="Saisissez votre mot de passe.">
                    <p class="help-block text-danger"></p>
                  </div>
                   <div class="form-group">
                    <input class="form-control" id="Password2" type="Password" placeholder="Confirmer votre mot de passe *" required data-validation-required-message="Repeter votre mot de passe.">
                    <p class="help-block text-danger"></p>
                  </div>
                 
                    <div class="color_checkbox">
                       <input type="checkbox" id="newsletter" name="cgu" class="horizonC" value="1">J'accepte les conditions générales d'utilisation d'ArtiZone.
                    </div>
                  </br>
                   <div class="col-lg-12 text-center">
                  <button class="btn btn-primary" href="loginOne">Se connecter</button>
                </div>
                </div>



                <!-- artisant -->                
                <div class="col-md-6">
                  <h4>Artisant</h4>
              <div class="form-group">
                    <input class="form-control" id="email" type="email" placeholder="Email *" required data-validation-required-message="Saisissez votre Email.">
                    <p class="help-block text-danger"></p>
                  </div>
                   <div class="form-group">
                    <input class="form-control" id="nom" type="text" placeholder="Nom *" required data-validation-required-message="Saisissez votre nom.">
                    <p class="help-block text-danger"></p>
                  </div>
                   <div class="form-group">
                    <input class="form-control" id="prenom" type="text" placeholder="Prénom *" required data-validation-required-message="Saisissez votre prénom.">
                    <p class="help-block text-danger"></p>
                  </div>
                   <div class="form-group">
                    <input class="form-control" id="Password" type="Password" placeholder="mot de passe *" required data-validation-required-message="Saisissez votre mot de passe.">
                    <p class="help-block text-danger"></p>
                  </div>
                   <div class="form-group">
                    <input class="form-control" id="Password2" type="Password" placeholder="Confirmer votre mot de passe *" required data-validation-required-message="Repeter votre mot de passe.">
                    <p class="help-block text-danger"></p>
                  </div>
                 
                    <div class="color_checkbox">
                       <input type="checkbox" id="newsletter" name="cgu" class="horizonC" value="1">J'accepte les conditions générales d'utilisation d'ArtiZone.
                    </div>
                  </br>
                   <div class="col-lg-12 text-center">
                  <button class="btn btn-primary" type="submit">Se connecter</button>
                </div>
                </div>

                <div class="clearfix"></div>
              
              </div>
            </form>
          </div>
        </div>
      </div>


                <!-- <button class="btn btn-primary" data-dismiss="modal" type="button">
                    <i class="fa fa-times"></i>
                    Annuler</button>-->
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Contact form JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/js/jqBootstrapValidation.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/contact_me.js"></script>

    <!-- Custom scripts for this template -->
    <script src="${pageContext.request.contextPath}/resources/js/agency.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/myJs.js"></script>

     <script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jssor.slider-26.6.0.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {

            var jssor_1_options = {
              $AutoPlay: 1,
              $Idle: 0,
              $SlideDuration: 5000,
              $SlideEasing: $Jease$.$Linear,
              $PauseOnHover: 4,
              $SlideWidth: 140,
              $Cols: 7,
              $Align: 0
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            /*#region responsive code begin*/

            var MAX_WIDTH = 980;

            function ScaleSlider() {
                var containerElement = jssor_1_slider.$Elmt.parentNode;
                var containerWidth = containerElement.clientWidth;

                if (containerWidth) {

                    var expectedWidth = Math.min(MAX_WIDTH || containerWidth, containerWidth);

                    jssor_1_slider.$ScaleWidth(expectedWidth);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }

            ScaleSlider();

            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            /*#endregion responsive code end*/
        });
    </script>
  </body>

</html>
