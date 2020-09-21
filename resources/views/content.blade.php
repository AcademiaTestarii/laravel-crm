<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Academia Testarii CRM | Modificare continut: </title>

    <link href="{{asset('css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('font-awesome/css/font-awesome.css')}}" rel="stylesheet">

    <!-- Toastr style -->
    <link href="{{asset('css/plugins/toastr/toastr.min.css')}}" rel="stylesheet">
    <link href="{{asset('css/plugins/summernote/summernote.css')}}" rel="stylesheet">
    <link href="{{asset('css/plugins/summernote/summernote-bs3.css')}}" rel="stylesheet">
    <link href="{{asset('css/plugins/jQueryUI/jquery-ui.css')}}" rel="stylesheet">
    <link href="{{asset('js/plugins/Multiple-Dates-Picker-for-jQuery-UI-latest/jquery-ui.multidatespicker.css')}}" rel="stylesheet">
    <link href="{{asset('css/plugins/daterangepicker/daterangepicker-bs3.css')}}" rel="stylesheet">
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
                    <form role="search" class="navbar-form-custom" action="/search">
                        <div class="form-group">
                            <input type="text" placeholder="Cautare ..." class="form-control" name="top-search"
                                   id="top-search">
                        </div>
                    </form>
                </div>
                @include('include/controlpanel')
            </nav>
        </div>
        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-8">
                <h2>Modificare continut: "@if($content) {{$content->getName()}}@endif"</h2>
                <ol class="breadcrumb">
                    <li><a href="/dashboard">Home</a></li>
                    <li class="active"><a href="adauga.php"><strong>@if($content) {{$content->getName()}}@endif</strong></a>
                    </li>
                </ol>
            </div>
        </div>

        <!-- Main content -->
        <section class="wrapper wrapper-content">

            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Modificare continut: "@if($content) {{$content->getName()}}@endif"<small></small></h5>
                </div>
                <div class="ibox-content">

                    <form id="form" method="post" class="form-horizontal" action="" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Titlu:<br/><small>Apare ca titul H1</small></label>
                            <div class="col-sm-10">
                                <input value="@if($content) {{$content->getTitle()}}@endif" name="title" type="text"
                                       class="form-control" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Continut:<br/><small>poate fi formatat</small></label>
                            <div class="col-sm-10">
						<textarea id="text1" name="text" class="summernote">
                            @if($content) {!! $content->getText() !!}@endif
                        </textarea>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>

                        @if($content->subcontents())
                            <div class="ibox-title"><h5>Sub-continut <small>Componente casete homepage</small></h5>
                            </div>
                        @endif

                        <?php
                        $counter = 2;
                        ?>
                        @foreach($content->subcontents as $subcontent)
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Titlu:<br/><small>Apare ca titul
                                        H1</small></label>
                                <div class="col-sm-10">
                                    <input value="{{$subcontent->getTitle()}}"
                                           name="title_sub_{{$subcontent->getId()}}" type="text"
                                           class="form-control" required>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Continut:<br/><small>poate fi
                                        formatat</small></label>
                                <div class="col-sm-10">
						<textarea id="text{{$counter}}" name="text_sub_{{$subcontent->getId()}}"
                                  class="summernote">
                            {{ $subcontent->getText() }}
                        </textarea>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <?php
                            $counter++;
                            ?>
                        @endforeach
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-2">
                                <input type="hidden" name="id2update"
                                       value="@if($content) {{$content->getId()}} @endif"/>
                                <button class="btn btn-white" type="reset">Reseteaza</button>
                                <button class="btn btn-primary" type="submit" name="@if($content) edit @endif">
                                    Salveaza
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>
        <!-- /.content -->
        <div class="footer">
            @include('include/footer')
        </div>
    </div>
</div>

<!-- Main scripts -->
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>

<script src="{{asset('js/bootstrap.min.js')}}"></script>
<script src="{{asset('js/plugins/metisMenu/jquery.metisMenu.js')}}"></script>
<script src="{{asset('js/plugins/slimscroll/jquery.slimscroll.min.js')}}"></script>

<!-- Custom and plugin javascript -->
<script src="{{asset('js/inspinia.js')}}"></script>
<script src="{{asset('js/plugins/pace/pace.min.js')}}"></script>

<!-- CK Editor 4 -->
<script src="{{asset('js/plugins/ckeditor/ckeditor.js')}}"></script>
<script>
    $(function () {
        // Replace the <textareas> with a CKEditor instance.
        CKEDITOR.replace('text1'),
            CKEDITOR.replace('text2'),
            CKEDITOR.replace('text3'),
            CKEDITOR.replace('text4')
    })
</script>

<!-- Jquery Validate -->
<script src="{{asset('js/plugins/validate/jquery.validate.min.js')}}"></script>
</body>
</html>