<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Academia testarii CRM | Bannere</title>
    <link href="{{asset('css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('font-awesome/css/font-awesome.css')}}" rel="stylesheet">
    <link href="{{asset('css/plugins/iCheck/custom.css')}}" rel="stylesheet">
    <link href="{{asset('css/plugins/fullcalendar/fullcalendar.css')}}" rel="stylesheet">
    <link href="{{asset('css/plugins/fullcalendar/fullcalendar.print.css')}}" rel='stylesheet' media='print'>
    <link href="{{asset('css/animate.css')}}" rel="stylesheet">
    <link href="{{asset('css/style.css')}}" rel="stylesheet">
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
            <div class="col-lg-6">
                <h2>Bannere</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="/dashboard">Home</a>
                    </li>
                    <li class="active">
                        <a href="/sliders"><strong>Bannere</strong></a>
                    </li>
                </ol>
            </div>
            <div class="col-sm-6">
                <div class="title-action">
                    <a class="btn btn-primary" href="/sliders">Adauga banner nou</a>
                </div>
            </div>
        </div>

        <!-- Main content -->
        <section class="wrapper wrapper-content">
            <div class="ibox">
                <div class="ibox-title">
                    <h5>Adaugare banner prima pagina <small></small></h5>
                </div>
                <div class="ibox-content">

                    <form role="form" action="" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="row row-padding">
                            <div class="col-md-12">
                                <!-- general form elements -->
                                <div class="box">
                                    <div class="box-body">
                                        <div class="checkbox">
                                            <label>
                                                <input name="active" type="checkbox"
                                                       @if($slider && $slider->isActive()) checked @endif />
                                                Activ
                                            </label>
                                        </div>
                                        <div class="form-group">
                                            <label>Prima linie</label>
                                            <input type="text" class="form-control" name="title"
                                                   value="@if($slider) {{$slider->getTitle()}} @endif"
                                                   placeholder="Titlu"/>
                                        </div>
                                        <div class="form-group">
                                            <label>A doua linie</label>
                                            <input type="text" class="form-control" name="description1"
                                                   value="@if($slider) {{$slider->getDescription1()}} @endif"
                                                   placeholder="Descriere principala"/>
                                        </div>
                                        <div class="form-group">
                                            <label>Descriere secundara lunga</label>
                                            <input type="text" class="form-control" name="description2"
                                                   value="@if($slider) {{$slider->getDescription2()}} @endif"
                                                   placeholder="Descriere secundara"/>
                                        </div>
                                        <div class="form-group">
                                            <label>Text buton</label>
                                            <input type="text" class="form-control" name="button"
                                                   value="@if($slider) {{$slider->getButtonName()}} @endif"
                                                   placeholder="Enter ..."/>
                                        </div>
                                        <div class="form-group">
                                            <label>Link <small>(copiaza link din browser, trebuie sa aiba "http://" in
                                                    fata)</small></label>
                                            <input type="text" class="form-control" name="link"
                                                   value="@if($slider) {{$slider->getLink()}} @endif"
                                                   placeholder="Enter ..."/>
                                        </div>
                                        <div class="form-group">
                                            @if($slider && $slider->getImage())
                                                <p class="help-block"><img style="width:50%;"
                                                                           src="{{$slider->getImage()}}"/>
                                                </p>
                                                <a class="btn btn-primary btn-sm"
                                                   href="/slider_remove_image?id={{$slider->getId()}}"><i
                                                            class="glyphicon glyphicon-trash"></i> &nbsp Sterge imagine</a>
                                            @else
                                                <label for="image">Imagine <small>(va fi redimensionata automat, latimea
                                                        minima: 1920px)</small></label><br/>
                                                <div class="inputBtnSection">
                                                    <input id="uploadFile" class="disableInputField"
                                                           placeholder="Selecteaza o imagine" disabled="disabled"/>
                                                    <label class="fileUpload">
                                                        <input id="image" name="image" type="file" class="upload"/>
                                                    </label>
                                                </div>
                                            @endif
                                        </div>
                                    </div><!-- /.box-body -->
                                </div><!-- /.box -->
                            </div>
                            <div class="col-md-12">
                                <div class="box-footer">
                                    <input type="hidden" name="id2update"
                                           value="@if($slider) {{$slider->getId()}} @endif"/>
                                    <button type="submit" name="@if($slider) edit @else addnew @endif"
                                            class="btn btn-block btn-primary"><i class="fa fa-save"></i> Salveaza
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

        </section><!-- /.container-frluid -->

        <div class="footer">
            @include('include/footer')
        </div>
    </div>
</div>

<!-- Mainly scripts -->
<script src="{{asset('js/plugins/fullcalendar/moment.min.js')}}"></script>
<script src="{{asset('js/jquery-2.1.1.js')}}"></script>
<script src="{{asset('js/bootstrap.min.js')}}"></script>
<script src="{{asset('js/plugins/metisMenu/jquery.metisMenu.js')}}"></script>
<script src="{{asset('js/plugins/slimscroll/jquery.slimscroll.min.js')}}"></script>

<!-- Custom and plugin javascript -->
<!-- Custom and plugin javascript -->
<script src="{{asset('js/inspinia.js')}}"></script>
<script src="{{asset('js/plugins/pace/pace.min.js')}}"></script>

<!-- jQuery UI custom -->
<script src="{{asset('js/jquery-ui.custom.min.js')}}"></script>

<!-- iCheck -->
<script src="{{asset('js/plugins/iCheck/icheck.min.js')}}"></script>

</body>

</html>
