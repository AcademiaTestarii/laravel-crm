<?php
/* Edit */
/*if (isset($_POST['edit'])) {
    mysqli_query($link,"UPDATE `testimoniale` SET
`nume`='".$_POST['nume']."',
`pozitie`='".$_POST['pozitie']."',
`testimonial`='".trim(mysqli_real_escape_string($link,$_POST['testimonial']))."',
`curs`='".$_POST['curs']."'
WHERE `id`=".$_POST['id2update']);
    header ("Location: testimoniale.php");
}

/* Add new */
/*if (isset($_POST['addnew'])) {
    mysqli_query($link,"INSERT INTO `testimoniale` (`nume`,`pozitie`,`testimonial`,`curs`)
VALUES
('".$_POST['nume']."','".$_POST['pozitie']."','".trim(mysqli_real_escape_string($link,$_POST['testimonial']))."','".$_POST['curs']."')");
    $last_id = mysqli_insert_id($link);
    header ("Location: testimoniale.php");
}*/

?>
        <!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Academia Testarii CRM | @if($testimonial) Modifica @else Adauga @endif testimonial</title>

    <link href="{{asset('css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('font-awesome/css/font-awesome.css')}}" rel="stylesheet">

    <!-- Toastr style -->
    <link href="{{asset('css/plugins/toastr/toastr.min.css')}}" rel="stylesheet">
    <link href="{{asset('css/plugins/summernote/summernote.css')}}" rel="stylesheet">
    <link href="{{asset('css/plugins/summernote/summernote-bs3.css')}}" rel="stylesheet">
    <script src="{{asset('css/plugins/jQueryUI/jquery-ui.css')}}"></script>
    <script src="{{asset('js/plugins/Multiple-Dates-Picker-for-jQuery-UI-latest/jquery-ui.multidatespicker.css')}}"></script>
    <script src="{{asset('css/plugins/daterangepicker/daterangepicker-bs3.css')}}"></script>
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
            <div class="col-lg-8">
                <h2>@if($testimonial) Modifica @else Adauga @endif testimonial</h2>
                <ol class="breadcrumb">
                    <li><a href="/dashboard">Home</a></li>
                    <li class="active"><a href="/testimonials"><strong>Testimonial</strong></a></li>
                </ol>
            </div>
            <div class="col-sm-4">
                <div class="title-action">
                    <a class="btn btn-primary" href="/testimonial_edit">Adauga testimonial</a>
                </div>
            </div>
        </div>

        <!-- Main content -->
        <section class="wrapper wrapper-content">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>@if($testimonial) Modifica @else Adauga @endif testimonial<small></small></h5>
                </div>
                <div class="ibox-content">
                    <form id="form" method="post" class="form-horizontal" action="">
                        @csrf
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Nume:<br/></label>
                            <div class="col-sm-10">
                                <input value="@if($testimonial) {{$testimonial->getName()}} @endif" name="name"
                                       type="text" class="form-control" required/>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Pozitie:<br/><small>pozitia,
                                    titulatura</small></label>
                            <div class="col-sm-10">
                                <input value="@if($testimonial) {{$testimonial->getPosition()}} @endif" name="position"
                                       type="text"
                                       class="form-control" required/>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Testimonial:<br/></label>
                            <div class="col-sm-10">
						<textarea id="text1" name="testimonial" class="summernote">
						@if($testimonial) {{$testimonial->getTestimonial()}} @endif
                        </textarea>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Curs:</label>
                            <div class="col-sm-10">
                                <select class="select2 form-control" name="class">
                                    <option>-- Alege --</option>
                                    @foreach($mainClasses as $mainClass)
                                        <option value="{{$mainClass->getId()}}"
                                                @if($testimonial && $mainClass->getId() == $testimonial->getClass())
                                                selected="selected"
                                                @endif
                                        >{!! $mainClass->getTitle()!!}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-2">
                                <input type="hidden" name="id2update"
                                       value="	@if($testimonial) {{$testimonial->getId()}} @endif"/>
                                <button class="btn btn-white" type="reset">Reseteaza</button>
                                <button class="btn btn-primary" type="submit"
                                        name="@if($testimonial) edit @else addnew @endif">
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

<!-- Jquery Validate -->
<script src="{{asset('js/plugins/validate/jquery.validate.min.js')}}"></script>
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
</body>
</html>
