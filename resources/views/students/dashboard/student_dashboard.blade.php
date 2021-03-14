<!DOCTYPE html>
<html dir="ltr" lang="ro">
    <head>

        <!-- Meta Tags -->
        <meta name="viewport" content="width=device-width,initial-scale=1.0" />
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <meta name="description" content="Academia Testarii:: Contul tau" />
        <meta name="keywords" content="" />

        <!-- Page Title -->
        <title>{{ $student->getFirstName() }}'s dashboard</title>

        <!-- Favicons -->
        <link rel="apple-touch-icon" sizes="57x57" href="{{asset('favicon/apple-icon-57x57.png')}}">
        <link rel="apple-touch-icon" sizes="60x60" href="{{asset('favicon/apple-icon-60x60.png')}}">
        <link rel="apple-touch-icon" sizes="72x72" href="{{asset('favicon/apple-icon-72x72.png')}}">
        <link rel="apple-touch-icon" sizes="76x76" href="{{asset('favicon/apple-icon-76x76.png')}}">
        <link rel="apple-touch-icon" sizes="114x114" href="{{asset('favicon/apple-icon-114x114.png')}}">
        <link rel="apple-touch-icon" sizes="120x120" href="{{asset('favicon/apple-icon-120x120.png')}}">
        <link rel="apple-touch-icon" sizes="144x144" href="{{asset('favicon/apple-icon-144x144.png')}}">
        <link rel="apple-touch-icon" sizes="152x152" href="{{asset('favicon/apple-icon-152x152.png')}}">
        <link rel="apple-touch-icon" sizes="180x180" href="{{asset('favicon/apple-icon-180x180.png')}}">
        <link rel="icon" type="image/png" sizes="192x192" href="{{asset('favicon/android-icon-192x192.png')}}">
        <link rel="icon" type="image/png" sizes="32x32" href="{{asset('favicon/favicon-32x32.png')}}">
        <link rel="icon" type="image/png" sizes="96x96" href="{{asset('favicon/favicon-96x96.png')}}">
        <link rel="icon" type="image/png" sizes="16x16" href="{{asset('favicon/favicon-16x16.png')}}">
        <link rel="manifest" href="{{asset('favicon/manifest.json')}}">
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="msapplication-TileImage" content="favicon/ms-icon-144x144.png">
        <meta name="theme-color" content="#ffffff">

        <!-- Stylesheet -->
        <link href="{{asset('css/bootstrap.min.css')}}" rel="stylesheet" type="text/css">
        <link href="{{asset('css/jquery-ui.min.css')}}" rel="stylesheet" type="text/css">
        <link href="{{asset('css/animate.css')}}" rel="stylesheet" type="text/css">
        <link href="{{asset('css/css-plugin-collections.css')}}" rel="stylesheet" />

        <!-- CSS | menuzord megamenu skins -->
        <link id="menuzord-menu-skins" href="{{asset('css/menuzord-skins/menu-academia-testarii.css')}}"
              rel="stylesheet" />
        <!-- CSS | Main style file -->
        <link href="{{asset('css/style-main.css')}}" rel="stylesheet" type="text/css">
        <!-- CSS | Preloader Styles -->
        <link href="{{asset('css/preloader.css')}}" rel="stylesheet" type="text/css">
        <!-- CSS | Custom Margin Padding Collection -->
        <link href="{{asset('css/custom-bootstrap-margin-padding.css')}}" rel="stylesheet" type="text/css">
        <!-- CSS | Responsive media queries -->
        <link href="{{asset('css/responsive.css')}}" rel="stylesheet" type="text/css">
        <!-- Academia Testarii CSS | Style css -->
        <link href="{{asset('css/style.css')}}" rel="stylesheet" type="text/css">
        <!-- Revolution Slider 5.x CSS settings -->
        <link href="{{asset('js/revolution-slider/css/settings.css')}}" rel="stylesheet" type="text/css" />
        <link href="{{asset('js/revolution-slider/css/layers.css')}}" rel="stylesheet" type="text/css" />
        <link href="{{asset('js/revolution-slider/css/navigation.css')}}" rel="stylesheet" type="text/css" />
        <!-- CSS | Academia Testarii -->
        <link href="{{asset('css/colors/academia-testarii.css')}}" rel="stylesheet" type="text/css">
        <!-- external javascripts -->
        <script src="{{asset('js/jquery-2.2.4.min.js')}}"></script>
        <script src="{{asset('js/jquery-ui.min.js')}}"></script>
        <script src="{{asset('js/bootstrap.min.js')}}"></script>
        <!-- JS | jquery plugin collection -->
        <script src="{{asset('js/jquery-plugin-collection.js')}}"></script>
        <!-- Revolution Slider 5.x SCRIPTS -->
        <script src="{{asset('js/revolution-slider/js/jquery.themepunch.tools.min.js')}}"></script>
        <script src="{{asset('js/revolution-slider/js/jquery.themepunch.revolution.min.js')}}"></script>
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <script type='application/ld+json'>{"@context":"https://schema.org","@type":"Organization","url":"/","sameAs":["https://www.facebook.com/academiatestarii/","https://www.linkedin.com/company/18151104/"],"@id":"/#organization","name":"Academia Testarii","logo":"/images/logo-academia-testarii.png"}</script>
    </head>
    <body class="" id="up">
        <div id="wrapper" class="clearfix">
            <div id="preloader">
                <div id="spinner">
                    <div class="preloader-orbit-loading">
                        <div class="cssload-loading"><i></i><i></i><i></i><i></i></div>
                    </div>
                </div>
                <!--  <div id="disable-preloader" class="btn btn-default btn-sm">Treci peste preloader</div>-->
            </div>
            <header id="header" class="header modern-header modern-header-white">
                {{--                @include("include.temp_includes.top_header")--}}
                {{--                @include("include.temp_includes.top_menu")--}}
            </header>
            <div class="main-content">
                <section class="inner-header divider parallax layer-overlay overlay-dark-5"
                         data-bg-img="images/Picture2.jpg">
                    <div class="container pt-70 pb-20">
                        <!-- Section Content -->
                        <div class="section-content">
                            <div class="row">
                                <div class="col-md-12">
                                    <h2 class="title text-white">Contul tau</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="inside">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <h2 class="mt-0 text-theme-colored">Bine ai venit in contul tău <span
                                            class="text-theme-colored2">{{ $student->getFirstName() }}</h2>
                                <p>Oferim cursuri de pregătire specializată în testare software, consultanță și servicii de resurse.</p>
                                <p>Conectat la cele mai recente tendințe, practici, tehnologii și industrie instrumente, avem o vastă experiență în zonă, adunate prin aplicare practică în procesul de dezvoltare timp de aproape 20 de ani.</p>
                            </div>
                        </div>

                    </div>
                    <div class="container profil">
                        <div class="row">

                           @include('students.dashboard.side_panel')

                            <div class="col-md-9">
                                <div class="icon-box mb-0 p-0">
                                    <div class="panel-group accordion-theme-colored accordion-icon-right"
                                         id="accordion16" role="tablist">
                                        <div class="panel panel-default">
                                            <div class="panel-heading" role="tab" id="headingCursuri">
                                                <h6 class="panel-title">
                                                    <a class="collapsed" role="button" data-toggle="collapse"
                                                       data-parent="#accordion16" href="#sectiuneaCursuri"
                                                       aria-expanded="false" aria-controls="sectiuneaCursuri">
                                                        Cursurile tale
                                                    </a>
                                                </h6>
                                            </div>
                                            <div id="sectiuneaCursuri" class="panel-collapse collapse" role="tabpanel"
                                                 aria-labelledby="headingCursuri" aria-expanded="false">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-12 col-xs-12 curs">
                                                            <ul id="myTab" class="nav nav-tabs boot-tabs">
                                                                <li class="active"><a href="#active"
                                                                                      data-toggle="tab">Cursuri active</a>
                                                                </li>
                                                                <li><a href="#inactive"
                                                                       data-toggle="tab">Cursuri absolvite</a></li>
                                                            </ul>
                                                            <div id="myTabContent" class="tab-content">
                                                                @include('students.dashboard.active_classes')

                                                                @include('students.dashboard.finished_classes')
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="panel panel-default">
                                                <div class="panel-heading" role="tab" id="headingDate">
                                                    <h6 class="panel-title">
                                                        <a class="collapsed" role="button" data-toggle="collapse"
                                                           data-parent="#accordion18" href="#sectiuneaDate"
                                                           aria-expanded="false" aria-controls="sectiuneaDate">
                                                            Schimbă datele personale
                                                        </a>
                                                    </h6>
                                                </div>
                                                <div id="sectiuneaDate" class="panel-collapse collapse" role="tabpanel"
                                                     aria-labelledby="headingDate" aria-expanded="false">
                                                    <div class="panel-body">

                                                        @if ($errors->any())
                                                            <div class="alert alert-danger">
                                                                <ul>
                                                                    @foreach ($errors->all() as $error)
                                                                        <li>{{ $error }}</li>
                                                                    @endforeach
                                                                </ul>
                                                            </div>
                                                    @endif
                                                    <!-- Update student details Form -->
                                                        @include('students.dashboard.update_details')

                                                    </div>
                                                </div>
                                            </div>

                                            <div class="panel panel-default">
                                                <div class="panel-heading" role="tab" id="headingPreferinte">
                                                    <h6 class="panel-title">
                                                        <a class="collapsed" role="button" data-toggle="collapse"
                                                           data-parent="#accordion20" href="#sectiuneaParola"
                                                           aria-expanded="false"
                                                           aria-controls="sectiuneaParola">Schimbă parola</a>
                                                    </h6>
                                                </div>

                                                @include('students.dashboard.change_password')

                                            </div>

                                            <div class="panel panel-default">
                                                <div class="panel-heading" role="tab" id="headingPreferinte">
                                                    <h6 class="panel-title">
                                                        <a class="collapsed" role="button" data-toggle="collapse"
                                                           data-parent="#accordion21" href="#sectiuneaPreferinte"
                                                           aria-expanded="false"
                                                           aria-controls="sectiuneaPreferinte">Setări notificări</a>
                                                    </h6>
                                                </div>

                                               @include('students.dashboard.notifications_settings')

                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </div>

                        </div>

                        <!-- end main-content -->
                    </div>

                    <!-- Footer -->
                    <footer id="footer" class="footer" data-bg-img="images/footer-bg.png" data-bg-color="#020443">

                        {{--                        @include("include.footer")--}}

                    </footer>
                    <a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
                </section>
                <!-- end wrapper -->

                <!-- Footer Scripts -->
                <!-- JS | Custom script for all pages -->
                <script src="js/custom.js"></script>

                <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog"
                     aria-labelledby="myLargeModalLabel">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Inchide"><span
                                            aria-hidden="true">&times;</span></button>
                            </div>
                            <div class="pl-50 pr-50 pb-50">

                                <h2 class="modal-title" id="myModalLabel2">{{$termsAndConditions->title}}</h2>
                                <hr />
                                {{ $termsAndConditions->getText() }}
                            </div>
                        </div>
                    </div>
                </div>
                <script>
                    $(document).ready(function () {
                        location.hash && $(location.hash + '.collapse').collapse('show');
                        $('sectiuneaCursuri' + '.sectiunea').collapse('hide');
                    });
                </script>
        @include("include.tracking")
    </body>
</html>
