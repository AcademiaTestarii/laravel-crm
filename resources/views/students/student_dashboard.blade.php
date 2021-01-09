<!DOCTYPE html>
<html dir="ltr" lang="ro">
    <head>

        <!-- Meta Tags -->
        <meta name="viewport" content="width=device-width,initial-scale=1.0" />
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <meta name="description" content="Academia Testarii:: Contul tau" />
        <meta name="keywords" content="" />

        <!-- Page Title -->
        <title>{{ auth()->user()->name }}'s dashboard</title>

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
        <link rel="manifest" href="favicon/manifest.json">
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
                @include("top_header.blade.php")
                @include("top_menu.blade.php")
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
                                            {{ $student->getActivity()->formatLocalized("%e %B, %Y") ?: 'Astazi' }}

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
                                    <div class="panel-group accordion-theme-colored accordion-icon-right" id="accordion16" role="tablist">
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
                                                                    <?php
                                                                    $sql_cursuri_active = mysqli_query(
                                                                        $link,
                                                                        "SELECT * FROM `class_students` LEFT JOIN `classes` ON `class_students`.`class_id`=`classes`.`id` LEFT JOIN `main_classes` ON `classes`.`main_class_id`=`main_classes`.`id` WHERE `class_students`.`student_id`=" . $row['id'] . " AND `registration_end_date`>= NOW() ORDER BY `registration_start_date` ASC"
                                                                    );
                                                                    $i = 0;
                                                                    while ($row_curs_activ = mysqli_fetch_assoc(
                                                                        $sql_cursuri_active
                                                                    )) {
                                                                    $datesSqlactiv = mysqli_query(
                                                                        $link,
                                                                        "SELECT MIN(`date`) AS `start1`, MAX(`date`) AS `end1` FROM `class_dates` WHERE `class_id`=" . $row_curs_activ['class_id']
                                                                    );
                                                                    $datesRowactiv = mysqli_fetch_assoc($datesSqlactiv);
                                                                    ?>
                                                                    <div class="row">
                                                                        <div class="col-md-6">
                                                                            <h4><?php echo $row_curs_activ['main_classes.title'];?></h4>
                                                                            <p>
                                                                                <strong>Data înscriere: </strong> <?php echo strftime(
                                                                                    "%e %B %Y la %H:%M:%S",
                                                                                    strtotime(
                                                                                        $row_curs_activ['registration_start_date']
                                                                                    )
                                                                                );?><br />
                                                                                <strong>Cursul începe pe: </strong> <?php echo strftime(
                                                                                    "%e %B %Y",
                                                                                    strtotime($datesRowactiv['start1'])
                                                                                );?><br />

                                                                                <? if ($row_curs_activ['discount_price'] != "" && $row_curs_activ['discount_price'] != 0) { ?>
                                                                                <strong>Preț curs: </strong>
                                                                                <del>
                                                                                    <span class="amount"><?php echo $row_curs_activ['price'];?> Lei</span>
                                                                                </del>
                                                                                <strong><span
                                                                                            class="amount"><?php echo $row_curs_activ['discount_price'];?> Lei</span></strong>
                                                                                <?php } else { ?>
                                                                                <strong>Preț curs: </strong><span
                                                                                        class="amount"><?php echo $row_curs_activ['price'];?> Lei</span>
                                                                                <?php } ?>
                                                                            </p>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <?php if ($row_curs_activ['resources_description'] != "") { ?>
                                                                            <div class="panel-group toggle accordion-theme-colored2 accordion-icon-right">
                                                                                <div class="panel panel-default">
                                                                                    <div class="panel-heading">
                                                                                        <div class="panel-title"><a
                                                                                                    class="collapsed"
                                                                                                    data-toggle="collapse"
                                                                                                    href="#togglea<?php echo $i;?>"
                                                                                                    class=""><span
                                                                                                        class="open-sub"></span>Resurse curs</a>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div id="togglea<?php echo $i;?>"
                                                                                         class="panel-collapse collapse">
                                                                                        <div class="panel-body resurs">
                                                                                            <?php echo $row_curs_activ['resources_description'];?>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <?php } ?>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <?php if ($row_curs_activ['schedule_pdf'] != "") { ?>
                                                                            <a href="<?php echo $crmHost; ?>/documents/<?php echo $row_curs_activ['schedule_pdf'];?>"
                                                                               target="_blank"
                                                                               class="btn btn-gray btn-transparent btn-xs">Programa curs</a>
                                                                            <?php } ?>

                                                                            <?php if ($row_curs_activ['requirements_description'] != "") { ?>
                                                                            | <a href="javascript:void()"
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
                                                                                                <br /><?php echo $row_curs_activ['main_classes.title'];?>
                                                                                            </h2>
                                                                                            <hr />
                                                                                            <?php echo $row_curs_activ['requirements_description'];?>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <?php } ?>
                                                                        </div>
                                                                    </div>
                                                                    <hr />
                                                                    <?php $i++;} ?>
                                                                </div>

                                                                <div class="tab-pane fade" id="inactive">
                                                                    <?php
                                                                    $sql_cursuri_inactive = mysqli_query(
                                                                        $link,
                                                                        "SELECT * FROM `class_students` LEFT JOIN `classes` ON `class_students`.`class_id`=`classes`.`id` LEFT JOIN `main_classes` ON `classes`.`main_class_id`=`main_classes`.`id` WHERE `class_students`.`student_id`=" . $row['id'] . " AND `registration_end_date`< NOW() ORDER BY `registration_start_date` ASC"
                                                                    );
                                                                    $j = 0;
                                                                    while ($row_curs_inactiv = mysqli_fetch_assoc(
                                                                        $sql_cursuri_inactive
                                                                    )) {
                                                                    $datesSqlinactiv = mysqli_query(
                                                                        $link,
                                                                        "SELECT MIN(`date`) AS `start2`, MAX(`date`) AS `end2` FROM `class_dates` WHERE `class_id`=" . $row_curs_inactiv['class_id']
                                                                    );
                                                                    $datesRowinactiv = mysqli_fetch_assoc(
                                                                        $datesSqlinactiv
                                                                    );
                                                                    ?>

                                                                    <div class="row">
                                                                        <div class="col-md-6">
                                                                            <h4><?php echo $row_curs_inactiv['main_classes.title'];?></h4>
                                                                            <p>
                                                                                <strong>Data înscriere: </strong> <?php echo strftime(
                                                                                    "%e %B %Y la %H:%M:%S",
                                                                                    strtotime(
                                                                                        $row_curs_inactiv['registration_start_date']
                                                                                    )
                                                                                );?><br />
                                                                                <strong>Cursul începe pe: </strong> <?php echo strftime(
                                                                                    "%e %B %Y",
                                                                                    strtotime(
                                                                                        $datesRowinactiv['start2']
                                                                                    )
                                                                                );?><br />
                                                                                <strong>Preț curs: </strong> <?php echo number_format(
                                                                                    $row_curs_inactiv['price']
                                                                                );?> Lei
                                                                            </p>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <?php if ($row_curs_inactiv['resources_description'] != "") { ?>
                                                                            <div class="panel-group toggle accordion-theme-colored2 accordion-icon-right">
                                                                                <div class="panel panel-default">
                                                                                    <div class="panel-heading">
                                                                                        <div class="panel-title"><a
                                                                                                    class="collapsed"
                                                                                                    data-toggle="collapse"
                                                                                                    href="#toggle<?php echo $j;?>"
                                                                                                    class=""><span
                                                                                                        class="open-sub"></span>Resurse curs</a>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div id="toggle<?php echo $j;?>"
                                                                                         class="panel-collapse collapse">
                                                                                        <div class="panel-body resurs">
                                                                                            <?php echo $row_curs_inactiv['resources_description'];?>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <?php } ?>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <?php if ($row_curs_inactiv['pdf_programa'] != "") { ?>
                                                                            <a href="<?php echo $crmHost; ?>/documents/<?php echo $row_curs_inactiv['pdf_programa'];?>"
                                                                               target="_blank"
                                                                               class="btn btn-gray btn-transparent btn-xs">Programa curs</a>
                                                                            <?php } ?>

                                                                            <?php if ($row_curs_inactiv['schedule_pdf'] != "") { ?>
                                                                            | <a href="javascript:void()"
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
                                                                                                <br /><?php echo $row_curs_inactiv['main_classes.title'];?>
                                                                                            </h2>
                                                                                            <hr />
                                                                                            <?php echo $row_curs_inactiv['requirements_description'];?>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <?php } ?>

                                                                            <?php
                                                                            $sql_feedback = "SELECT * FROM `feedback` WHERE `student_id`=" . $row['id'];
                                                                            $query_feedback = mysqli_query(
                                                                                $link,
                                                                                $sql_feedback
                                                                            );
                                                                            if (mysqli_num_rows($query_feedback) > 0) {
                                                                            $row_feedback = mysqli_fetch_array(
                                                                                $query_feedback
                                                                            );
                                                                            ?>
                                                                            |
                                                                            <a href="feedback.php?id=<?php echo $row_feedback['link'];?>"
                                                                               target="_blank"
                                                                               class="btn btn-gray btn-transparent btn-xs">Feedback curs</a>
                                                                            |
                                                                            <a href="certificat.php?id=<?php echo $row_feedback['link'];?>"
                                                                               target="_blank"
                                                                               class="btn btn-gray btn-transparent btn-xs">Certificat de ablosvire curs</a>
                                                                            <?php } ?>
                                                                        </div>
                                                                    </div>
                                                                    <hr />
                                                                    <?php $j++; } ?>
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
                                                              method="post" action="includes/profil.php"
                                                              novalidate="novalidate" enctype="multipart/form-data">
                                                            <div class="row">
                                                                <div class="col-sm-4">
                                                                    <div class="form-group mb-30"><label>Nume</label>
                                                                        <input placeholder="Nume" id="nume" name="nume"
                                                                               required="" class="form-control"
                                                                               aria-required="true" type="text"
                                                                               value="<?php echo $row['first_name'];?>">
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-4">
                                                                    <div class="form-group mb-30"><label>Prenume</label>
                                                                        <input placeholder="Prenume" id="prenume"
                                                                               name="prenume" required=""
                                                                               class="form-control" aria-required="true"
                                                                               type="text"
                                                                               value="<?php echo $row['last_name'];?>">
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-4">
                                                                    <div class="form-group mb-30">
                                                                        <label>Data naștere</label>
                                                                        <input placeholder="Data naștere"
                                                                               id="data_nastere" name="data_nastere"
                                                                               required="" class="form-control"
                                                                               aria-required="true" type="date"
                                                                               value="<?php echo $row['date_of_birth'];?>">
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-4">
                                                                    <div class="form-group mb-30"><label>Adresă</label>
                                                                        <input placeholder="O folosim pentru factură"
                                                                               id="adresa" name="adresa" required=""
                                                                               class="form-control" aria-required="true"
                                                                               type="text"
                                                                               value="<?php echo $row['address'];?>">
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-4">
                                                                    <div class="form-group mb-30">
                                                                        <label>Localitate</label>
                                                                        <input placeholder="O folosim pentru factură"
                                                                               id="localitate" name="localitate"
                                                                               required="" class="form-control"
                                                                               aria-required="true" type="text"
                                                                               value="<?php echo $row['city'];?>">
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-4">
                                                                    <div class="form-group mb-30"><label>Judet</label>
                                                                        <input placeholder="Îl folosim pentru factură"
                                                                               id="judet" name="judet" required=""
                                                                               class="form-control" aria-required="true"
                                                                               type="text"
                                                                               value="<?php echo $row['county'];?>">
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <div class="form-group mb-30">
                                                                        <label>Companie</label>
                                                                        <input placeholder="Daca esti angajat(ă)"
                                                                               id="companie" name="companie"
                                                                               class="form-control" type="text"
                                                                               value="<?php echo $row['company'];?>">
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <div class="form-group mb-30"><label>Poziție</label>
                                                                        <input placeholder="Daca esti angajat(ă)"
                                                                               id="pozitie" name="pozitie"
                                                                               class="form-control" type="text"
                                                                               value="<?php echo $row['job_title'];?>">
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <div class="form-group mb-30"><label>Telefon</label>
                                                                        <input placeholder="Telefon" id="telefon"
                                                                               name="telefon" required=""
                                                                               class="form-control" aria-required="true"
                                                                               type="text"
                                                                               value="<?php echo $row['phone'];?>">
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <div class="form-group mb-30"><label>Email</label>
                                                                        <small>Adresa de email nu poate fi schimbată<small>
                                                                                <input disabled placeholder="Email"
                                                                                       id="email" name="email"
                                                                                       class="form-control" required=""
                                                                                       aria-required="true" type="email"
                                                                                       value="<?php echo $row['email'];?>">
                                                                    </div>
                                                                </div>

                                                                <div class="col-sm-12">
                                                                    <div class="form-group mb-0 mt-0">
                                                                        <input name="form_botcheck" class="form-control"
                                                                               value="" type="hidden">
                                                                        <input name="action" class="form-control"
                                                                               value="profil" type="hidden">
                                                                        <input name="cursant" class="form-control"
                                                                               value="<?php echo $row['id'];?>"
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
                                                                                          var form_btn        = $(form).find('button[type="submit"]');
                                                                                          var form_result_div = '#form-result';
                                                                                          $(form_result_div).remove();
                                                                                          form_btn.before('<div id="form-result" class="alert alert-success" role="alert" style="display: none;"></div>');
                                                                                          var form_btn_old_msg = form_btn.html();
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
                                                              action="includes/profil.php" novalidate="novalidate"
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
                                                                               value="<?php echo $row['id'];?>"
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
                                                                                                 var form_btn        = $(form).find('button[type="submit"]');
                                                                                                 var form_result_div = '#form-result';
                                                                                                 $(form_result_div).remove();
                                                                                                 form_btn.before('<div id="form-result" class="alert alert-success" role="alert" style="display: none;"></div>');
                                                                                                 var form_btn_old_msg = form_btn.html();
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
                                                              method="post" action="includes/profil.php"
                                                              novalidate="novalidate">
                                                            <div class="row">
                                                                <div class="col-sm-12">
                                                                    <div class="checkbox tab-content">
                                                                        <label><input type="checkbox" value=""
                                                                                      name="promotii" <?php echo($row['promotions'] == 1 ? "checked" : "");?>> Discounturi și promoții Academia Testării
                                                                        </label>
                                                                    </div>
                                                                    <div class="checkbox tab-content">
                                                                        <label><input type="checkbox" value=""
                                                                                      name="newsletter" <?php echo($row['newsletter'] == 1 ? "checked" : "");?>> Newsletter Academia Testării
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
                                                                               value="<?php echo $row['id'];?>"
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
                                                                                              var form_btn        = $(form).find('button[type="submit"]');
                                                                                              var form_result_div = '#form-result';
                                                                                              $(form_result_div).remove();
                                                                                              form_btn.before('<div id="form-result" class="alert alert-success" role="alert" style="display: none;"></div>');
                                                                                              var form_btn_old_msg = form_btn.html();
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

                </section>
                <!-- end main-content -->
            </div>

            <!-- Footer -->
            <footer id="footer" class="footer" data-bg-img="images/footer-bg.png" data-bg-color="#020443">

                <?php include("include.footer.php");?>

                <?php include("include.subfooter.php");?>

            </footer>
            <a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
        </div>
        <!-- end wrapper -->

        <!-- Footer Scripts -->
        <!-- JS | Custom script for all pages -->
        <script src="js/custom.js"></script>

        <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Inchide"><span
                                    aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="pl-50 pr-50 pb-50">
                        <?php
                        $sql_termeni = "SELECT * FROM `content` WHERE id=6";
                        $termeni = mysqli_fetch_assoc(mysqli_query($link, $sql_termeni));
                        ?>

                        <h2 class="modal-title" id="myModalLabel2"><?php echo $termeni['title'];?></h2>
                        <hr />
                        <?php echo $termeni['text'];?>
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
        <?php include("tracking.php");?>
    </body>
</html>
