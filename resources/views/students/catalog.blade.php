<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Academia Testarii CRM | Catalog cursuri</title>

    <link href="{{asset('css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('font-awesome/css/font-awesome.css')}}" rel="stylesheet">

    <!-- Toastr style -->
    <link href="{{asset('css/plugins/toastr/toastr.min.css')}}" rel="stylesheet">
    <link href="{{asset('css/plugins/summernote/summernote.css')}}" rel="stylesheet">
    <link href="{{asset('css/plugins/summernote/summernote-bs3.css')}}" rel="stylesheet">
    <link href="{{asset('css/plugins/jQueryUI/jquery-ui.css')}}" rel="stylesheet">
    <link href="{{asset('js/plugins/Multiple-Dates-Picker-for-jQuery-UI-latest/jquery-ui.multidatespicker.css')}}"
          rel="stylesheet">
    <link href="{{asset('css/plugins/daterangepicker/daterangepicker-bs3.css')}}" rel="stylesheet">
    <link href="{{asset('css/plugins/select2/select2.min.css')}}" rel="stylesheet">

    <link href="{{asset('css/animate.css')}}" rel="stylesheet">
    <link href="{{asset('css/style.css')}}" rel="stylesheet">
    <link href="{{asset('css/plugins/iCheck/custom.css')}}" rel="stylesheet">
</head>
<body>

<div id="wrapper">
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    @include('include/user')
                    <div class="logo-element">
                        AT+
                    </div>
                </li>
                @include('include/mainmenu2')
            </ul>
        </div>
    </nav>

    <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i
                                class="fa fa-bars"></i>
                    </a>
                </div>
                @include('include/controlpanel')
            </nav>
        </div>
        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-8">
                <h2>Catalog</h2>
                <ol class="breadcrumb">
                    <li><a href="/dashboard">Home</a></li>
                    <li class="active"><a href="/catalog"><strong>Catalog</strong></a></li>
                </ol>
            </div>
        </div>

        <!-- Main content -->
        <section class="wrapper wrapper-content">

            <div class="ibox float-e-margins">
                <div class="row">
                    <?php
                    $mainClasses = [];
                    ?>
                    @foreach($classes as $class)
                        <?php
                        if ($class->getRegistrationStartDate() >= new \Carbon\Carbon()) {
                        if (!in_array($class->getMainClassId(), $mainClasses)) {
                        $mainClasses[] = $class->getMainClassId();
                        ?>
                        <div class="col-md-4 col-sm-6 col-xs-12" style="margin-top: 40px;">
                            <article class="post clearfix mb-30">
                                <div class="entry-header">
                                    <div class="post-thumb thumb">
                                        <img src="{{$class->getImage()}}"
                                             alt="" class="img-responsive img-fullwidth">
                                    </div>
                                    <div class="entry-date media-left text-center flip bg-theme-colored border-top-theme-colored2-3px pt-5 pr-15 pb-5 pl-15"
                                         style="top: -25px;position: absolute;right: 30px; z-index: 2;font-size: 13px;border-top: 3px solid #1e9edd !important;
background-color: #4c3391 !important;padding-left: 15px !important;padding-bottom: 5px !important;padding-right: 15px !important;padding-top: 5px !important;">
                                        <ul style="list-style: none;margin: 0;padding: 0;">
                                            <li class="font-16 text-white font-weight-600"
                                                style="font-size: 16px !important;">
                                            {{ $class->getRegistrationStartDate()->formatLocalized("%e")}}
                                            <li>
                                            <li class="font-16 text-white font-weight-600"
                                                style="font-size: 12px !important;text-transform: uppercase;">
                                            {{ $class->getRegistrationStartDate()->formatLocalized("%B")}}
                                            <li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="entry-content p-20 bg-white" style="background: white;">
                                    <div class="entry-meta media mt-0 mb-10" style="min-height: 220px;">
                                        <div class="media-body pl-0"
                                             style="padding:10px; background:white;">
                                            <div class="event-content pull-left flip">
                                                <h4 class="entry-title text-white text-uppercase font-weight-600 m-0 mt-5">
                                                    <a href="{{ route('class_description', $class->getMainClassId()) }}"> {{ $class->getTitle() }} </a>
                                                </h4>

                                                <p>{{ $class->getShortDescription() }}</p>

                                                <div class="price">Taxa de înscriere:
                                                    <del>
                                                        <span class="amount">{{$class->getPrice()}} Lei</span>
                                                    </del>
                                                    <strong><span
                                                                class="amount">{{ $class->getDiscountPrice() }} Lei</span></strong>
                                                </div>

                                                @if ($class->isPlanned())
                                                    <span class="mb-10 text-gray-darkgray mr-10 font-13"><i
                                                                class="fa fa-calendar mr-5 text-theme-colored"></i>Data va fi anunţata ulterior</span>
                                                @elseif ($class->getRegistrationStartDate() > \Carbon\Carbon::yesterday())
                                                    <span class="mb-0 text-gray-darkgray mr-10 font-13">Următorul curs:
                                                                    <br/>
                                                                    <i class="fa fa-calendar mr-5 text-theme-colored"></i>
                                                                    {{ $class->getRegistrationStartDate()->formatLocalized("%e %B, %Y") }} - {{ $class->getRegistrationEndDate()->formatLocalized("%e %B, %Y") }}
                                                        @endif
                                                                </span>
                                                    <br/>


                                                    <span class="mb-10 text-gray-darkgray mr-10 font-13">Locuri disponibile: {{$class->getStudents() - $class->classStudents()->count()}} </span>

                                                    <hr class="mb-0"/>
                                                    <span class="mb-10 text-gray-darkgray mr-10 font-13">Cursuri viitoare:
                                                                    <br/>
                                                            @if($class->nextClass())
                                                            <i
                                                                    class="fa fa-calendar mr-5 text-theme-colored"></i>
                                                            {{ $class->nextClass()->getRegistrationStartDate()->formatLocalized("%e %B, %Y") }}
                                                            - {{ $class->nextClass()->getRegistrationEndDate()->formatLocalized("%e %B, %Y") }}
                                                        @endif
                                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <a class="btn btn-dark btn-theme-colored2"
                                       href="{{ route('class_description', $class->getMainClassId()) }}"> Detalii
                                        curs</a>
                                    <a href="{{ route('class_signup', $class->getMainClassId()) }}"
                                       class="btn btn-dark btn-theme-colored pull-right">Înscrie-te</a>
                                </div>
                            </article>
                        </div>
                        <?php
                        }
                        }
                        ?>
                    @endforeach
                </div>
            </div>
        </section>
        <!-- /.content -->

        <div class="footer">
            @include('include/footer')
        </div>
    </div>
</div>

<!-- Mainly scripts -->
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<script src="{{asset('js/bootstrap.min.js')}}"></script>
<script src="{{asset('js/plugins/metisMenu/jquery.metisMenu.js')}}"></script>
<script src="{{asset('js/plugins/slimscroll/jquery.slimscroll.min.js')}}"></script>
<!-- Date range use moment.js same as full calendar plugin -->
<script src="{{asset('js/plugins/fullcalendar/moment.min.js')}}"></script>
<!-- Date range picker -->
<script src="{{asset('js/plugins/daterangepicker/daterangepicker.js')}}"></script>

<!-- Custom and plugin javascript -->
<script src="{{asset('js/inspinia.js')}}"></script>
<script src="{{asset('js/plugins/pace/pace.min.js')}}"></script>
<!-- Select2 -->
<script src="{{asset('js/plugins/select2/select2.full.min.js')}}"></script>

<!-- Multiple-dates -->
<script src="{{asset('js/plugins/Multiple-Dates-Picker-for-jQuery-UI-latest/jquery-ui.multidatespicker.js')}}"></script>
<!-- Jquery Validate -->
<script src="{{asset('js/plugins/validate/jquery.validate.min.js')}}"></script>
<!-- iCheck -->
<script src="{{asset('js/plugins/iCheck/icheck.min.js')}}"></script>

<script src="{{asset('js/plugins/ckeditor/ckeditor.js')}}"></script>

<!-- CK Editor 4 -->
</body>
</html>