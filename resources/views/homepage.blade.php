<?php
$today = getdate();
$page = "home-page";

// stare bannere
if (isset($_GET['stare']) AND is_numeric($_GET['stare'])) {
    /* if ($_GET['value']==1){
         $sql_update_stare=mysqli_query($link,"UPDATE `slider` SET `active`=0 WHERE `id`=".$_GET['id']);
     } else {
         $sql_update_stare=mysqli_query($link,"UPDATE `slider` SET `active`=1 WHERE `id`=".$_GET['id']);
     }
     header ("Location:home-page.php");*/
}

// sterge
if (isset($_GET['sterge']) AND is_numeric($_GET['sterge'])) {
    /*  $sql_sterge=mysqli_query($link,"DELETE FROM `slider` WHERE `id`=".$_GET['sterge']);
      header ("Location:home-page.php");*/
}

// testimonial
if (isset($_GET['staret']) AND is_numeric($_GET['staret'])) {
    /*if ($_GET['valuet']==1){
        $sql_update_stare=mysqli_query($link,"UPDATE `testimoniale` SET `active`=0 WHERE `id`=".$_GET['idt']);
    } else {
        $sql_update_stare=mysqli_query($link,"UPDATE `testimoniale` SET `active`=1 WHERE `id`=".$_GET['idt']);
    }
    header ("Location:home-page.php");*/
}

// sterge
if (isset($_GET['sterget']) AND is_numeric($_GET['sterget'])) {
    /*    $sql_sterge=mysqli_query($link,"DELETE FROM `testimoniale` WHERE `id`=".$_GET['sterget']);
        header ("Location:home-page.php");*/
}

// salvare
if (isset($_POST['salveaza_homepage'])) {

    /* mysqli_query($link,"UPDATE `continut` SET `titlu`='".mysqli_real_escape_string($link,trim($_POST['titlu_1']))."', `text`='".mysqli_real_escape_string($link,trim($_POST['text_1']))."' WHERE `id`=1");
     mysqli_query($link,"UPDATE `activitate` SET `folowers`=".$_POST['followers'].", `cursuri`=".$_POST['cursuri'].", `absolventi`=".$_POST['absolventi'].", `recomandari`=".$_POST['recomandari']." WHERE `id`=1");

     mysqli_query($link,"UPDATE `continut` SET `titlu`='".mysqli_real_escape_string($link,trim($_POST['titlu_3']))."', `text`='".mysqli_real_escape_string($link,trim($_POST['text_3']))."' WHERE `id`=3");
     $sub=mysqli_query($link,"SELECT `id` FROM `subcontinut` WHERE `id_continut`=3");
     while ($row_sub=mysqli_fetch_assoc($sub)) {
         $idsub=$row_sub['id'];
         $titlu=$_POST['titlu_sub_'.$idsub];
         $text=$_POST['text_sub_'.$idsub];
         mysqli_query($link,"UPDATE `subcontinut` SET `titlu`='".mysqli_real_escape_string($link,trim($titlu))."', `text`='".mysqli_real_escape_string($link,trim($text))."' WHERE `id`=".$idsub);
     }
     unset($idsub);

     mysqli_query($link,"UPDATE `continut` SET `titlu`='".mysqli_real_escape_string($link,trim($_POST['titlu_4']))."', `text`='".mysqli_real_escape_string($link,trim($_POST['text_4']))."' WHERE `id`=4");
     $sub=mysqli_query($link,"SELECT `id` FROM `subcontinut` WHERE `id_continut`=4");
     while ($row_sub=mysqli_fetch_assoc($sub)) {
         $idsub=$row_sub['id'];
         $titlu=$_POST['titlu_sub_'.$idsub];
         $text=$_POST['text_sub_'.$idsub];
         mysqli_query($link,"UPDATE `subcontinut` SET `titlu`='".mysqli_real_escape_string($link,trim($titlu))."', `text`='".mysqli_real_escape_string($link,trim($text))."' WHERE `id`=".$idsub);
     }*/
}
?>
        <!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Academia Testarii CRM | Modificare continut {{ $contentHomepage->getName() }} </title>
    <link href="{{asset('css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('font-awesome/css/font-awesome.css')}}" rel="stylesheet">
    <!-- Toastr style -->r
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
                <h2>Modificare continut {{ $contentHomepage->getName() }}</h2>
                <ol class="breadcrumb">
                    <li><a href="/dashboard">Home</a></li>
                    <li class="active"><strong>{{ $contentHomepage->getName() }}</strong></li>
                </ol>
            </div>
        </div>
        <!-- Main content -->
        <section class="wrapper wrapper-content">

            <div class="ibox">
                <div class="ibox-title">
                    <h5>Sectiunea "Banere prima pagina"<small></small></h5>
                    <a class="btn btn-warning pull-right buton" href="modifica_slider.php">Adauga banner nou</a>
                </div>
                <div class="ibox-content">
                    <table id="example1" class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Data</th>
                            <th>Titlu</th>
                            <th>Imagine</th>
                            <th class="text-center">Activ</th>
                            <th class="text-center">Sterge</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($sliderInformation as $slider)
                            <tr>
                                <td>{{$slider->getId()}}</td>
                                <td>{{$slider->getCreatedAtDate()}}</td>
                                <td>
                                    <a href="modifica_slider.php?id={{$slider->getId()}}">{{$slider->getTitle()}}</a>
                                </td>
                                <td>
                                    <img src="{{ $slider->getImage()}}" width="200px"/>
                                </td>
                                <td class="text-center">
                                    <form action="" method="GET">
                                        <input type="checkbox" @if($slider->isActive()) checked @endif name="activ"
                                               onChange="this.form.submit()"/>
                                        <input type="hidden" name="stare" value="{{$slider->getId()}}"/>
                                        <input type="hidden" name="value" value="{{$slider->getActiveStatus()}}"/>
                                        <input type="hidden" name="id" value="{{$slider->getId()}}"/>
                                    </form>
                                </td>
                                <td class="text-center">
                                    <form action="" method="GET">
                                        <button class="btn btn-danger btn-xs" onClick="confirmDelete()" type="submit"/>
                                        Sterge</button>
                                        <input type="hidden" name="sterge" value="{{$slider->getId()}}"/>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>

            <form id="form" method="post" class="form-horizontal" action="" enctype="multipart/form-data">
                <div class="ibox">
                    <div class="ibox-title">
                        <h5>Sectiunea "{!!$contentHomepage->getTitle()!!}"<small></small></h5>
                    </div>
                    <div class="ibox-content">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Titlu:<br/><small>Apare ca titul H1</small></label>
                            <div class="col-sm-10">
                                <input value="{!!$contentHomepage->getTitle()!!}" name="titlu_1" type="text"
                                       class="form-control" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Continut:<br/><small>poate fi formatat</small></label>
                            <div class="col-sm-10">
                                <textarea id="text1" name="text_1" class="summernote">
                                    {!! $contentHomepage->getText() !!}
                                </textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="ibox">
                    <div class="ibox-title">
                        <h5>Sectiunea "Activitatea noastra in cifre" <small></small></h5>
                    </div>
                    <div class="ibox-content">
                        <div class="form-group">
                            <div class="col-sm-3">
                                <label class="control-label">Numar Followers:</label>
                                <input value="{{$activity->getFollowers()}}" name="followers"
                                       type="number" class="form-control" required>
                            </div>
                            <div class="col-sm-3">
                                <label class="control-label">Numar Cursuri:</label>
                                <input value="{{$activity->getNumberOfClasses()}}" name="cursuri" type="number"
                                       class="form-control" required>
                            </div>
                            <div class="col-sm-3">
                                <label class="control-label">Numar Absolventi:</label>
                                <input value="{{$activity->getNumberOfGraduates()}}" name="absolventi"
                                       type="number" class="form-control" required>
                            </div>
                            <div class="col-sm-3">
                                <label class="control-label">Numar Recomandari:</label>
                                <input value="{{$activity->getNumberOfRecommandations()}}" name="recomandari"
                                       type="number" class="form-control" required>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="ibox">
                    <div class="ibox-title">
                        <h5>Sectiunea "{{$contentTesters->getTitle()}}" <small></small></h5>
                    </div>
                    <div class="ibox-content">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Titlu:<br/><small>Apare ca titul H2</small></label>
                            <div class="col-sm-10">
                                <input value="{{$contentTesters->getTitle()}}" name="titlu_3" type="text"
                                       class="form-control" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Continut:<br/><small>poate fi formatat</small></label>
                            <div class="col-sm-10">
                                <textarea id="text2" name="text_3" class="summernote">
                                {{$contentTesters->getText()}}
                                </textarea>
                            </div>
                        </div>

                        <div class="ibox-title"><h5>Sub-continut "{{$contentTesters->title}}" <small>Componente casete
                                    homepage</small></h5></div>
                        <div class="row"><br/>
                            @foreach($contentTesters->subcontents as $key => $subcontet)
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Titlu:<br/><small>Apare ca titul
                                                H2</small></label>
                                        <div class="col-sm-10">
                                            <input value="{{$subcontet->getTitle()}}"
                                                   name="titlu_sub_{{$subcontet->getId()}}" type="text"
                                                   class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Continut:<br/><small>poate fi
                                                formatat</small></label>
                                        <div class="col-sm-10">
                                            <textarea id="text{{$key+3}}" name="text_sub_{{$subcontet->getId()}}"
                                                      class="summernote">  {!! $subcontet->getText() !!}
                                            </textarea>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
                <div class="ibox">
                    <div class="ibox-title">
                        <h5>Sectiunea "Ce spun absolventii"<small></small></h5>
                        <a class="btn btn-warning pull-right buton" href="testimonial.php">Adauga testimonial</a>
                    </div>
                    <div class="ibox-content">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Data</th>
                                <th>Nume</th>
                                <th>Testimonial</th>
                                <th class="text-center">Activ</th>
                                <th class="text-center">Sterge</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($testimonials as $testimonial)
                                <tr>
                                    <td>{{$testimonial->getId()}}</td>
                                    <td>{{$testimonial->getCreatedOn()}}</td>
                                    <td>
                                        <a href="testimonial.php?id={{$testimonial->getId()}}">{{$testimonial->getName()}}</a>
                                    </td>
                                    <td> {!!$testimonial->getTestimonial()!!}</td>
                                    <td class="text-center">
                                        <form action="" method="GET">
                                            <input type="checkbox" @if($testimonial->isActive()) checked
                                                   @endif name="activ"
                                                   onChange="this.form.submit()"/>
                                            <input type="hidden" name="staret" value="{{$testimonial->getId()}}"/>
                                            <input type="hidden" name="valuet"
                                                   value="{{$testimonial->isActive()}}"/>
                                            <input type="hidden" name="idt" value="{{$testimonial->getId()}}"/>
                                        </form>
                                    </td>
                                    <td class="text-center">
                                        <form action="" method="GET">
                                            <button class="btn btn-danger btn-xs" onClick="confirmDelete()"
                                                    type="submit"/>
                                            Sterge</button>
                                            <input type="hidden" name="sterget"
                                                   value="{{$testimonial->getId()}}"/>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="ibox">
                    <div class="ibox-title">
                        <h5>Sectiunea "{{$contentCompanies->getTitle()}}" <small></small></h5>
                    </div>
                    <div class="ibox-content">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Titlu:<br/><small>Apare ca titul H1</small></label>
                            <div class="col-sm-10">
                                <input value="{{$contentCompanies->getTitle()}}" name="titlu_4" type="text"
                                       class="form-control" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Continut:<br/><small>poate fi formatat</small></label>
                            <div class="col-sm-10">
                            <textarea id="text6" name="text_4" class="summernote">
                                {!!$contentCompanies->getText()!!}
                            </textarea>
                            </div>
                        </div>
                        <div class="ibox-title"><h5>Sub-continut "{{$contentCompanies->getTitle()}}" <small>Componente
                                    casete homepage</small></h5></div>
                        <div class="row"><br/>
                            @foreach($contentCompanies->subcontents as $key => $subcontet)
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Titlu:<br/><small>Apare ca titul
                                                H1</small></label>
                                        <div class="col-sm-10">
                                            <input value="{{$subcontet->getTitle()}}"
                                                   name="titlu_sub_{{$subcontet->getId()}}" type="text"
                                                   class="form-control"
                                                   required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Continut:<br/><small>poate fi
                                                formatat</small></label>
                                        <div class="col-sm-10">
                                <textarea id="text{{$key+7}}" name="text_sub_{{$subcontet->getId()}}"
                                          class="summernote">
                                   {!! $subcontet->getText() !!}
                                </textarea>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
                <div class="ibox">
                    <div class="ibox-content">
                        <div class="form-group">
                            <div class="col-sm-12">
                                <center>
                                    <button class="btn btn-warning" type="submit" name="salveaza_homepage">Salveaza
                                    </button>
                                </center>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <br/><br/><br/>
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
            CKEDITOR.replace('text4'),
            CKEDITOR.replace('text5'),
            CKEDITOR.replace('text6'),
            CKEDITOR.replace('text7'),
            CKEDITOR.replace('text8'),
            CKEDITOR.replace('text9'),
            CKEDITOR.replace('text10'),
            CKEDITOR.replace('text11'),
            CKEDITOR.replace('text12'),
            CKEDITOR.replace('text13')
    })
</script>
<!-- Jquery Validate -->
<script src="{{asset('js/plugins/validate/jquery.validate.min.js')}}"></script>
</body>
</html>