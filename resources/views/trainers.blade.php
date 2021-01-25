<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Academia Testarii CRM | Traineri</title>

    <link href="{{asset('css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('font-awesome/css/font-awesome.css')}}" rel="stylesheet">

    <!-- Toastr style -->
    <link href="{{asset('css/plugins/toastr/toastr.min.css')}}" rel="stylesheet">

    <link href="{{asset('css/animate.css')}}" rel="stylesheet">
    <link href="{{asset('css/style.css')}}" rel="stylesheet">
    <script>
        function confirmDelete(delUrl) {
            if (confirm("Esti sigur ca vrei sa stergi?")) {
                document.location = delUrl;
            }

            return false;
        }
    </script>
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
                    <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i>
                    </a>
                </div>
                @include('include/controlpanel')
            </nav>
        </div>
        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-8">
                <h2>Traineri</h2>
                <ol class="breadcrumb">
                    <li><a href="/dashboard">Home</a></li>
                    <li class="active"><strong>Traineri</strong></li>
                </ol>
            </div>
            <div class="col-sm-4">
                <div class="title-action">
                    <a class="btn btn-primary" href="/trainer">Adauga trainer</a>
                </div>
            </div>
        </div>

        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row row-padding">
                @foreach($trainers as $trainer)
                    <div class="col-lg-4">
                        <div class="widget-head-color-box navy-bg p-lg text-center trainer-name">
                            <div class="m-b-md">
                                <h2 class="font-bold no-margins">
                                    {{$trainer->getName()}}
                                </h2>
                                <small>{{$trainer->getTitle()}}</small>
                            </div>
                            <a href="/trainer?id={{$trainer->getId()}}">
                                <img src="{{$trainer->getImage()}}" class=" m-b-md" alt="profile" style="width:50%;">
                            </a>
                            <div>
                                <span>{{$trainer->classTrainers()->count()}} Curs(uri)</span>
                            </div>
                        </div>
                        <div class="widget-text-box trainer-bio-top">
                            <h4 class="media-heading">{{$trainer->getName()}}</h4>
                            <p>{!! $trainer->getBio() !!}</p>
                        </div>
                        <div class="widget-text-box trainer-bio-bottom">
                            <a class="btn btn-primary trainer-details" href="/trainer?id={{$trainer->getId()}}">Detalii
                                trainer</a>
                            <a onClick="confirmDelete('trainers_list?delete={{$trainer->getId()}}')"
                               class="btn btn-danger trainer-delete"
                            >Sterge trainer</a>

                        </div>
                    </div>
                @endforeach
            </div>
        </div>
        <div class="footer">
            @include('include/footer')
        </div>
    </div>
</div>

<!-- Mainly scripts -->
<script src="{{asset('js/jquery-2.1.1.js')}}"></script>
<script src="{{asset('js/bootstrap.min.js')}}"></script>
<script src="{{asset('js/plugins/metisMenu/jquery.metisMenu.js')}}"></script>
<script src="{{asset('js/plugins/slimscroll/jquery.slimscroll.min.js')}}"></script>

<!-- Custom and plugin javascript -->
<script src="{{asset('js/inspinia.js')}}"></script>
<script src="{{asset('js/plugins/pace/pace.min.js')}}"></script>

</body>

</html>