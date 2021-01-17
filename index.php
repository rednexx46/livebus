<?php
session_start();
if (strlen($_SESSION['id'] == 0)) {
    $folder_path = "../login/index.php";
    $text = "Log In";
    $class = 'd-lg-none';
} else {
    $folder_path = "../login/logout.php";
    $text = "Log Out";
    $class = 'd-lg-none';
    $welcome = 'true';
}
?>
<!doctype html>
<html class="no-js" lang="pt">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>LiveBus - A forma mais fácil de encontrar o seu autocarro </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/slicknav.css">
    <link rel="stylesheet" href="assets/css/flaticon.css">
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/slick.css">
    <link rel="stylesheet" href="assets/css/nice-select.css">
    <link rel="stylesheet" href="assets/css/style.css">
</head>

<body>
    <!-- Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="assets/img/logo/logo.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader Start -->
    <header>
        <!-- Header Start -->
        <div class="header-area header-transparent">
            <div class="main-header">
                <div class="header-bottom  header-sticky">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                            <!-- Logo -->
                            <div class="col-xl-2 col-lg-2 col-md-1">
                                <div class="logo">
                                    <a href="https://livebus.pt"><img src="assets/img/logo/logo.png" alt=""></a>
                                </div>
                            </div>
                            <div class="col-xl-10 col-lg-10 col-md-8">
                                <!-- Main-menu -->
                                <div class="main-menu f-right d-none d-lg-block">
                                    <nav>
                                        <ul id="navigation">
                                            <li><a href="https://livebus.pt">Home</a></li>
                                            <li><a href="horarios">Horários </a></li>
                                            <li><a href="map">Mapa</a></li>
                                            <li><a href="equipa">Equipa</a></li>
                                            <li><a href="contact">Contactos</a></li>
                                            <li style="margin-right: 10px"><a href="about">Sobre</a></li>
                                            <li ><a>
                                                    <?php
                                                    if ($welcome == true) {
                                                        echo $_SESSION['name'];
                                                        $welcome = "false";
                                                    ?>
                                                </a>
                                                <ul class="submenu">
                                                    <li><a href="login/logout">Logout</a></li>
                                                </ul></li>
                                            <?php
                                                    } else {
                                            ?>
                                                </a>
                                            <li class="login"><a href="login/index">
                                                    <i class="ti-lock"></i>Login/Registo</a>
                                            <?php
                                                    }
                                            ?>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <!-- Mobile Menu -->
                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End -->
    </header>
    <main>

        <!-- Hero Area Start-->
        <div class="slider-area hero-overly">
            <div class="single-slider hero-overly  slider-height d-flex align-items-center">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-8 col-lg-9">
                            <!-- Hero Caption -->
                            <div class="hero__caption">
                                <br>
                                <br>
                                <span>Saiba sempre onde estamos!</span>
                                <h2>
                                    <font color="white">A forma mais fácil de encontrar o seu autocarro</font>
                                </h2>
                            </div>
                            <br>
                            <br>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!--Hero Area End-->
    </main>
    <footer>
        <!-- Footer Start-->
        <div class="footer-area">
            <div class="container">
                <div class="footer-top footer-padding">
                    <div class="row justify-content-between">
                        <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6">
                            <div class="single-footer-caption mb-50">
                                <div class="single-footer-caption mb-30">
                                    <!-- logo -->
                                    <div class="footer-logo">
                                        <h4><font color="white">Email</font></h4>
                                    <div class="footer-tittle">
                                    <ul>
                                        <li><a>geral@livebus.pt</a></li>
                                    </ul>
                                    </div>
                                    <br>
                                        <li><a href="https://drive.google.com/drive/folders/1XW9x32Ca3OyMVlXmKnLrkZBU_Pu6LY7w?usp=sharing" target="_blank" alt="Android App"><img  style="margin-right: 20px;" src="assets/img/gallery/app-logo.png"></a></li>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-2 col-md-4 col-sm-6">
                            <div class="single-footer-caption mb-50">
                                <div class="footer-tittle">
                                    <h4>Links Rápidos</h4>
                                    <ul>
                                        <li><a href="https://livebus.pt">Home</a></li>
                                        <li><a href="equipa">Equipa</a></li>
                                        <li><a href="contact">Contactos</a></li>
                                        <li><a href="about">Sobre</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
                            <div class="single-footer-caption mb-50">
                                <div class="footer-tittle">
                                    <h4>Especialidades</h4>
                                    <ul>
                                        <li><a href="horarios">Horários</a></li>
                                        <li><a href="map">Mapa</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                            <div class="single-footer-caption mb-50">
                                <div class="footer-tittle">
                                    <h4>Brevemente Disponível</h4>
                                    <ul>
                                        <li class="app-log"><img src="assets/img/elements/qr-code.png" alt="QR-Code LiveBus APP"></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class=" footer-bottom">
                    <div class="row d-flex justify-content-between align-items-center">
                        <div class="col-xl-9 col-lg-8">
                            <div class="footer-copy-right">
                                <p> Copyright &copy;<script>
                                        document.write(new Date().getFullYear());
                                    </script> - <a href="mailto:geral@livebus.pt">LiveBus</a>. Todos os Direitos Reservados.</p>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4">
                            <!-- Footer Social -->
                            <div class="footer-social f-right">
                                <a href="https://www.facebook.com/LiveBus-106844364303440" target="_blank"><i class="fab fa-facebook-f"></i></a>
                                <a href="https://twitter.com/livebuscompany" target="_blank"><i class="fab fa-twitter"></i></a>
                                <a href="https://www.instagram.com/livebus_company" target="_blank"><i class="fab fa-instagram"></i></a>
                                <a href="https://github.com/livebuscompany" target="_blank"><i class="fab fa-github"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End-->
    </footer>
    <!-- Scroll Up -->
    <div id="back-top">
        <a title="Ir para cima" href="#"> <i class="fas fa-level-up-alt"></i></a>
    </div>


    <!-- JS here -->
    <!-- All JS Custom Plugins Link Here here -->
    <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <!-- Jquery, Popper, Bootstrap -->
    <script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="./assets/js/popper.min.js"></script>
    <script src="./assets/js/bootstrap.min.js"></script>
    <!-- Jquery Mobile Menu -->
    <script src="./assets/js/jquery.slicknav.min.js"></script>

    <!-- Jquery Slick , Owl-Carousel Plugins -->
    <script src="./assets/js/owl.carousel.min.js"></script>
    <script src="./assets/js/slick.min.js"></script>
    <!-- One Page, Animated-HeadLin -->
    <script src="./assets/js/wow.min.js"></script>
    <script src="./assets/js/animated.headline.js"></script>
    <script src="./assets/js/jquery.magnific-popup.js"></script>

    <!-- Nice-select, sticky -->
    <script src="./assets/js/jquery.nice-select.min.js"></script>
    <script src="./assets/js/jquery.sticky.js"></script>

    <!-- contact js -->
    <script src="./assets/js/contact.js"></script>
    <script src="./assets/js/jquery.form.js"></script>
    <script src="./assets/js/jquery.validate.min.js"></script>
    <script src="./assets/js/mail-script.js"></script>
    <script src="./assets/js/jquery.ajaxchimp.min.js"></script>

    <!-- Jquery Plugins, main Jquery -->
    <script src="./assets/js/plugins.js"></script>
    <script src="./assets/js/main.js"></script>

    <!-- UserWay -->
    <script data-account="ha9cDqMqXg" src="https://cdn.userway.org/widget.js"></script>

</body>

</html>