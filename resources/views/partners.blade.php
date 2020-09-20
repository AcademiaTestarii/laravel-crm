<?php
/*include("../__connect.php");
$page = "parteneri";
$today = date("Y-m-d");
// sterge
if (isset($_GET['sterge']) AND is_numeric($_GET['sterge'])) {
    $picsql = mysqli_query($link,"SELECT * FROM `parteneri` WHERE `id_parteneri`=".$_GET['sterge']);
    $pic=mysqli_fetch_array($picsql);
    unlink(dirname( __FILE__ )."/../images/parteneri/".$pic['logo_parteneri']);
    mysqli_query($link,"DELETE FROM `parteneri` WHERE `id_parteneri`=".$_GET['sterge']);
    header ("Location:parteneri.php");
}
*/?><!--
      -->  <!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Academia Testarii CRM | Parteneri</title>

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
                    <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
                </div>
                @include('include/controlpanel')
            </nav>
        </div>
        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-8">
                <h2>Parteneri</h2>
                <ol class="breadcrumb">
                    <li><a href="/dashboard">Home</a></li>
                    <li class="active"><strong>Parteneri</strong></li>
                </ol>
            </div>
            <div class="col-sm-4">
                <div class="title-action">
                    <a class="btn btn-primary" href="/partner">Adauga parteneri</a>
                </div>
            </div>
        </div>

        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
                @foreach($partners as $partner)
                <div class="col-lg-3">
                    <div class="widget-head-color-box lazur-bg p-lg text-center">
                        <div class="m-b-md">
                            <h2 class="font-bold no-margins">
                                {{$partner->getName()}}
                            </h2>
                        </div>
                        <a href="/partner?id={{$partner->getId()}}">
                            <img src="{{$partner->getLogo()}}" class="m-b-md" alt="">
                        </a>
                    </div>
                    <div class="widget-text-box text-center">
                        <a class="btn btn-info btn-xs" href="/partner?id={{$partner->getId()}}">Editeaza</a>
                        <a onClick="confirmDelete()" class="btn btn-danger btn-xs" href="/partners_list?delete={{$partner->getId()}}">Sterge</a>
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