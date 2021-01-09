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
                            <div class="col-md-3">
                                <div class="job-overview">
                                    <dl class="dl-horizontal">
                                        <dt><i class="fa fa-calendar text-theme-colored mt-5 font-15"></i></dt>
                                        <dd>
                                            <h5 class="mt-0">Data înregistrarii:</h5>
                                            {{ $student->getRegistrationDate()->formatLocalized("%e %B, %Y") }}
                                        </dd>
                                    </dl>
                                    <dl class="dl-horizontal">
                                        <dt><i class="fa fa-map-marker text-theme-colored mt-5 font-15"></i></dt>
                                        <dd>
                                            <h5 class="mt-0">Ultima logare:</h5>
                                            {{ $student->activity ?: 'Astazi' }}

                                        </dd>
                                    </dl>
                                    <dl class="dl-horizontal">
                                        <dt><i class="fa fa-user text-theme-colored mt-5 font-15"></i></dt>
                                        <dd>
                                            <h5 class="mt-0">Documente legale:</h5>
                                            <p>
                                                <a href="javascript:void(0);" data-toggle="modal"
                                                   data-target=".bs-example-modal-lg">
                                                    <i class="fa fa-link"></i> Termeni si condiții
                                                </a>
                                            </p>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
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
                                                                <div class="tab-pane fade in active" id="active">

                                                                    @foreach($activeClasses as $active)
                                                                        <div class="row">
                                                                            <div class="col-md-6">
                                                                                <h4>{{ $active->title }}</h4>
                                                                                <p>
                                                                                    <strong>Data înscriere: </strong>
                                                                                    {{-- TODO -avem un get pt sign_up_date? --}}
                                                                                    {{ $active->sign_up_date }}
                                                                                    <br />
                                                                                    <strong>Cursul începe pe: </strong> {{ $active->resgistration_start_date }}
                                                                                    <br />
                                                                                    @if(!empty($active->discount_price && $active->discount_price != 0))
                                                                                        <strong>Preț curs: </strong>
                                                                                        <del>
                                                                                            <span class="amount">{{ $active->price }} Lei</span>
                                                                                        </del>
                                                                                        <strong><span
                                                                                                    class="amount">{{ $active->discount_price }} Lei</span></strong>
                                                                                    @else
                                                                                        <strong>Preț curs: </strong>
                                                                                        <span
                                                                                                class="amount">{{ $active->price }} Lei</span>
                                                                                    @endif
                                                                                </p>
                                                                            </div>
                                                                            <div class="col-md-6">
                                                                                @if(!empty($active->resources_description))
                                                                                    <div class="panel-group toggle accordion-theme-colored2 accordion-icon-right">
                                                                                        <div class="panel panel-default">
                                                                                            <div class="panel-heading">
                                                                                                <div class="panel-title">
                                                                                                    <a data-toggle="collapse"
                                                                                                       href="#togglea"
                                                                                                       class=""><span
                                                                                                                class="open-sub collapse"></span>Resurse curs</a>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div id="togglea#}"
                                                                                                 class="panel-collapse collapsed">
                                                                                                <div class="panel-body resurs">
                                                                                                    {{ $active->resources_description }}
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                @endif
                                                                            </div>
                                                                            <div class="col-md-12">
                                                                                @if(!empty($active->schedule_pdf))
                                                                                    {{-- TODO de definit  $crmHost--}}
                                                                                    <a href="{{-- ?php echo $crmHost; ? --}}/documents/{{ $active->schedule_pdf }}"
                                                                                       target="_blank"
                                                                                       class="btn btn-gray btn-transparent btn-xs">Programa curs</a>
                                                                                @endif

                                                                                @if(!empty($active->requirement_description))
                                                                                    | <a href="javascript:void(0)"
                                                                                         data-toggle="modal"
                                                                                         data-target=".bs-example-modal-lg2"
                                                                                         class="btn btn-gray btn-transparent btn-xs">Conditii participare</a>
                                                                                    <div class="modal fade bs-example-modal-lg2"
                                                                                         tabindex="-1" role="dialog"
                                                                                         aria-labelledby="myLargeModalLabe2">
                                                                                        <div class="modal-dialog modal-lg">
                                                                                            <div class="modal-content">
                                                                                                <div class="modal-header">
                                                                                                    <button type="button"
                                                                                                            class="close"
                                                                                                            data-dismiss="modal"
                                                                                                            aria-label="Inchide">
                                                                                                        <span aria-hidden="true">&times;</span>
                                                                                                    </button>
                                                                                                </div>
                                                                                                <div class="pl-50 pr-50 pb-50">
                                                                                                    <h2 class="modal-title"
                                                                                                        id="myModalLabel3">Cerinte minime de participare la cursul:
                                                                                                        <br />{{ $active->title }}
                                                                                                    </h2>
                                                                                                    <hr />
                                                                                                    {{ $active->requirement_description }}
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                @endif
                                                                            </div>
                                                                        </div>
                                                                    @endforeach
                                                                    <hr />
                                                                </div>

                                                                <div class="tab-pane fade" id="inactive">
                                                                    @foreach($finishedClasses as $finished)
                                                                        <div class="row">
                                                                            <div class="col-md-6">
                                                                                <h4>{{ $finished->title }}</h4>
                                                                                <p>
                                                                                    <strong>Data înscriere: </strong>
                                                                                    {{ $finished->sign_up_date}}
                                                                                    <br />
                                                                                    <strong>Cursul începe pe: </strong> {{ $finished->resgistration_start_date }}
                                                                                    <br />
                                                                                    @if(!empty($finished->discount_price && $finished->discount_price != 0))
                                                                                        <strong>Preț curs: </strong>
                                                                                        <del>
                                                                                            <span class="amount">{{ $finished->price }} Lei</span>
                                                                                        </del>
                                                                                        <strong><span
                                                                                                    class="amount">{{ $finished->discount_price }} Lei</span></strong>
                                                                                    @else
                                                                                        <strong>Preț curs: </strong>
                                                                                        <span
                                                                                                class="amount">{{ $finished->price }} Lei</span>
                                                                                    @endif
                                                                                </p>
                                                                            </div>
                                                                            <div class="col-md-6">
                                                                                @if(!empty($finished->resources_description))
                                                                                    <div class="panel-group toggle accordion-theme-colored2 accordion-icon-right">
                                                                                        <div class="panel panel-default">
                                                                                            <div class="panel-heading">
                                                                                                <div class="panel-title">
                                                                                                    <a
                                                                                                            data-toggle="collapse"
                                                                                                            href="#togglea"
                                                                                                            class=""><span
                                                                                                                class="open-sub collapsed"></span>Resurse curs</a>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div id="togglea"
                                                                                                 class="panel-collapse collapse">
                                                                                                <div class="panel-body resurs">
                                                                                                    {{ $finished->resources_description }}
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                @endif
                                                                            </div>
                                                                            <div class="col-md-12">
                                                                                @if(!empty($finished->schedule_pdf))
                                                                                    {{-- TODO de definit  $crmHost--}}
                                                                                    <a href="{{-- ?php echo $crmHost; ? --}}/documents/{{ $finished->schedule_pdf }}"
                                                                                       target="_blank"
                                                                                       class="btn btn-gray btn-transparent btn-xs">Programa curs</a>
                                                                                @endif

                                                                                @if(!empty($finished->requirement_description))
                                                                                    | <a href="javascript:void(0)"
                                                                                         data-toggle="modal"
                                                                                         data-target=".bs-example-modal-lg2"
                                                                                         class="btn btn-gray btn-transparent btn-xs">Conditii participare</a>
                                                                                    <div class="modal fade bs-example-modal-lg2"
                                                                                         tabindex="-1" role="dialog"
                                                                                         aria-labelledby="myLargeModalLabe2">
                                                                                        <div class="modal-dialog modal-lg">
                                                                                            <div class="modal-content">
                                                                                                <div class="modal-header">
                                                                                                    <button type="button"
                                                                                                            class="close"
                                                                                                            data-dismiss="modal"
                                                                                                            aria-label="Inchide">
                                                                                                        <span aria-hidden="true">&times;</span>
                                                                                                    </button>
                                                                                                </div>
                                                                                                <div class="pl-50 pr-50 pb-50">
                                                                                                    <h2 class="modal-title"
                                                                                                        id="myModalLabel3">Cerinte minime de participare la cursul:
                                                                                                        <br />{{ $finished->title }}
                                                                                                    </h2>
                                                                                                    <hr />
                                                                                                    {{ $finished->requirement_description }}
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                @endif
                                                                            </div>
                                                                        </div>
                                                                    @endforeach
                                                                    <hr />
                                                                </div>
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

                                                        <!-- Register Form Starts -->
                                                        <form id="profil" name="profil" class="reservation-form"
                                                              method="post" action="/student_dashboard"
                                                              novalidate="novalidate" enctype="multipart/form-data">

                                                            <input type="hidden" value="{{ $student->getId() }}"
                                                                   name='studentId'>
                                                            <div class="row">
                                                                <div class="col-sm-4">
                                                                    <div class="form-group mb-30"><label
                                                                                for="last_name">Nume</label>
                                                                        <input placeholder="Nume" id="last_name"
                                                                               name="last_name"
                                                                               required="" class="form-control"
                                                                               aria-required="true" type="text"
                                                                               value="{{ $student->getLastName() }}">
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-4">
                                                                    <div class="form-group mb-30"><label>Prenume</label>
                                                                        <input placeholder="Prenume" id="first_name"
                                                                               name="first_name" required=""
                                                                               class="form-control" aria-required="true"
                                                                               type="text"
                                                                               value="{{ $student->getFirstName() }}">
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-4">
                                                                    <div class="form-group mb-30">
                                                                        <label>Data naștere</label>
                                                                        <input placeholder="Data naștere"
                                                                               id="date_of_birth" name="date_of_birth"
                                                                               required="" class="form-control"
                                                                               aria-required="true" type="date"
                                                                               value="{{ $student->getDateOfBirth() }}">
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-4">
                                                                    <div class="form-group mb-30"><label>Adresă</label>
                                                                        <input placeholder="O folosim pentru factură"
                                                                               id="address" name="address" required=""
                                                                               class="form-control" aria-required="true"
                                                                               type="text"
                                                                               value="{{ $student->getAddress() }}">
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-4">
                                                                    <div class="form-group mb-30">
                                                                        <label>Localitate</label>
                                                                        <input placeholder="O folosim pentru factură"
                                                                               id="city" name="city"
                                                                               required="" class="form-control"
                                                                               aria-required="true" type="text"
                                                                               value="{{ $student->getCity() }}">
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-4">
                                                                    <div class="form-group mb-30"><label>Judet</label>
                                                                        <input placeholder="Îl folosim pentru factură"
                                                                               id="county" name="county" required=""
                                                                               class="form-control" aria-required="true"
                                                                               type="text"
                                                                               value="{{ $student->getCounty() }}">
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <div class="form-group mb-30">
                                                                        <label>Companie</label>
                                                                        <input placeholder="Daca esti angajat(ă)"
                                                                               id="company" name="company"
                                                                               class="form-control" type="text"
                                                                               value="{{ $student->getCompany() }}">
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <div class="form-group mb-30"><label>Poziție</label>
                                                                        <input placeholder="Daca esti angajat(ă)"
                                                                               id="job_title" name="job_title"
                                                                               class="form-control" type="text"
                                                                               value="{{ $student->getJob() }}">
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <div class="form-group mb-30"><label>Telefon</label>
                                                                        <input placeholder="Telefon" id="phone"
                                                                               name="phone" required=""
                                                                               class="form-control" aria-required="true"
                                                                               type="text"
                                                                               value="{{ $student->getPhone() }}">
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <div class="form-group mb-30">
                                                                        <label>Email</label>
                                                                        <small>Adresa de email nu poate fi schimbată</small>
                                                                        <input disabled placeholder="Email" id="email"
                                                                               name="email" class="form-control"
                                                                               required="" aria-required="true"
                                                                               type="email"
                                                                               value="{{ $student->getEmail() }}">
                                                                    </div>
                                                                </div>

                                                                <div class="col-sm-12">
                                                                    <div class="form-group mb-0 mt-0">
                                                                        <input name="form_botcheck" class="form-control"
                                                                               value="" type="hidden">
                                                                        <input name="action" class="form-control"
                                                                               value="profil" type="hidden">
                                                                        <input name="cursant" class="form-control"
                                                                               value="{{ $student->getId() }}"
                                                                               type="hidden">
                                                                        <button type="submit"
                                                                                class="btn btn-colored btn-block btn-theme-colored2 text-white btn-lg btn-flat"
                                                                                data-loading-text="Asteapta putin...">Actualizează datele
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </form>

                                                        <script type="text/javascript">
                                                            $("#profil").validate({
                                                                                      submitHandler : function (form) {
                                                                                          let form_btn        = $(form).find('button[type="submit"]');
                                                                                          let form_result_div = '#form-result';
                                                                                          $(form_result_div).remove();
                                                                                          form_btn.before('<div id="form-result" class="alert alert-success" role="alert" style="display: none;"></div>');
                                                                                          let form_btn_old_msg = form_btn.html();
                                                                                          form_btn.html(form_btn.prop('disabled', true).data("loading-text"));
                                                                                          $(form).ajaxSubmit({
                                                                                                                 dataType : 'json',
                                                                                                                 success  : function (data) {
                                                                                                                     if ( data.status == 'true' ) {
                                                                                                                         $(form).find('.form-control').val('');
                                                                                                                         location.href = "contul_tau.php";
                                                                                                                     }
                                                                                                                     form_btn.prop('disabled', false).html(form_btn_old_msg);
                                                                                                                     $(form_result_div).html(data.message).fadeIn('slow');
                                                                                                                     setTimeout(function () {
                                                                                                                         $(form_result_div).fadeOut('slow')
                                                                                                                     }, 6000);
                                                                                                                 }
                                                                                                             });
                                                                                      }
                                                                                  });
                                                        </script>

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
                                                <div id="sectiuneaParola" class="panel-collapse collapse"
                                                     role="tabpanel" aria-labelledby="headingPreferinte"
                                                     aria-expanded="false">
                                                    <div class="panel-body">
                                                        <form id="schimbaparola" name="schimbaparola"
                                                              class="reservation-form" method="post"
                                                              action="/student_dashboard" novalidate="novalidate"
                                                              autocomplete="off">
                                                            <div class="row">
                                                                <div class="col-sm-12">
                                                                    <div class="form-group mb-30"><label>Schimbă parola
                                                                            <small>(maxim 12 caractere)</small></label>
                                                                        <input maxlength="12"
                                                                               placeholder="Seteaza parola" id="parola"
                                                                               name="parola" required=""
                                                                               class="form-control" aria-required="true"
                                                                               type="password" value="">
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-12">
                                                                    <div class="form-group mb-0 mt-0">
                                                                        <input name="form_botcheck" class="form-control"
                                                                               value="" type="hidden">
                                                                        <input name="action" class="form-control"
                                                                               value="schimbaparola" type="hidden">
                                                                        <input name="cursant" class="form-control"
                                                                               value="{{ $student->getId() }}"
                                                                               type="hidden">
                                                                        <button type="submit"
                                                                                class="btn btn-colored btn-block btn-theme-colored2 text-white btn-lg btn-flat"
                                                                                data-loading-text="Asteapta putin...">Schimbă
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </form>

                                                        <script type="text/javascript">
                                                            $("#schimbaparola").validate({
                                                                                             submitHandler : function (form) {
                                                                                                 let form_btn        = $(form).find('button[type="submit"]');
                                                                                                 let form_result_div = '#form-result';
                                                                                                 $(form_result_div).remove();
                                                                                                 form_btn.before('<div id="form-result" class="alert alert-success" role="alert" style="display: none;"></div>');
                                                                                                 let form_btn_old_msg = form_btn.html();
                                                                                                 form_btn.html(form_btn.prop('disabled', true).data("loading-text"));
                                                                                                 $(form).ajaxSubmit({
                                                                                                                        dataType : 'json',
                                                                                                                        success  : function (data) {
                                                                                                                            if ( data.status == 'true' ) {
                                                                                                                                $(form).find('.form-control').val('');
                                                                                                                                location.href = "contul_tau.php";
                                                                                                                            }
                                                                                                                            form_btn.prop('disabled', false).html(form_btn_old_msg);
                                                                                                                            $(form_result_div).html(data.message).fadeIn('slow');
                                                                                                                            setTimeout(function () {
                                                                                                                                $(form_result_div).fadeOut('slow')
                                                                                                                            }, 6000);
                                                                                                                        }
                                                                                                                    });
                                                                                             }
                                                                                         });
                                                        </script>
                                                    </div>
                                                </div>
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
                                                <div id="sectiuneaPreferinte" class="panel-collapse collapse"
                                                     role="tabpanel" aria-labelledby="headingPreferinte"
                                                     aria-expanded="false">
                                                    <div class="panel-body">
                                                        <form id="preferinte" name="preferinte" class="reservation-form"
                                                              method="post" action="i/student_dashboard"
                                                              novalidate="novalidate">
                                                            <div class="row">
                                                                <div class="col-sm-12">
                                                                    <div class="checkbox tab-content">
                                                                        <label><input type="checkbox" value=""
                                                                                      name="promotii"
                                                                            {{ $student->getPromotions() == 1 ? "checked" : ""}}> Discounturi și promoții Academia Testării
                                                                        </label>
                                                                    </div>
                                                                    <div class="checkbox tab-content">
                                                                        <label><input type="checkbox" value=""
                                                                                      name="newsletter"
                                                                            {{ $student->getNewsletter() == 1 ? "checked" : ""}}> Newsletter Academia Testării
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-12">
                                                                    <div class="form-group mb-0 mt-0">
                                                                        <input name="form_botcheck" class="form-control"
                                                                               value="" type="hidden">
                                                                        <input name="action" class="form-control"
                                                                               value="preferinte" type="hidden">
                                                                        <input name="cursant" class="form-control"
                                                                               value="{{ $student->getId() }}"
                                                                               type="hidden">
                                                                        <button type="submit"
                                                                                class="btn btn-colored btn-block btn-theme-colored2 text-white btn-lg btn-flat"
                                                                                data-loading-text="Asteapta putin...">Actualizează preferințele
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </form>

                                                        <script type="text/javascript">
                                                            $("#preferinte").validate({
                                                                                          submitHandler : function (form) {
                                                                                              let form_btn        = $(form).find('button[type="submit"]');
                                                                                              let form_result_div = '#form-result';
                                                                                              $(form_result_div).remove();
                                                                                              form_btn.before('<div id="form-result" class="alert alert-success" role="alert" style="display: none;"></div>');
                                                                                              let form_btn_old_msg = form_btn.html();
                                                                                              form_btn.html(form_btn.prop('disabled', true).data("loading-text"));
                                                                                              $(form).ajaxSubmit({
                                                                                                                     dataType : 'json',
                                                                                                                     success  : function (data) {
                                                                                                                         if ( data.status == 'true' ) {
                                                                                                                             $(form).find('.form-control').val('');
                                                                                                                             location.href = "contul_tau.php";
                                                                                                                         }
                                                                                                                         form_btn.prop('disabled', false).html(form_btn_old_msg);
                                                                                                                         $(form_result_div).html(data.message).fadeIn('slow');
                                                                                                                         setTimeout(function () {
                                                                                                                             $(form_result_div).fadeOut('slow')
                                                                                                                         }, 6000);
                                                                                                                     }
                                                                                                                 });
                                                                                          }
                                                                                      });
                                                        </script>
                                                    </div>
                                                </div>
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
