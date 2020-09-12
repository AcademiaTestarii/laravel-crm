<?php
/*include("../__connect.php");
$page = "cursuri";
$today = getdate();*/

/* Remove image */
/*if (isset($_GET['removeimage'])) {
    $removeimage = $_GET['removeimage'];
    $picsql = mysqli_query($link,"SELECT * FROM `cursuri` WHERE `id`=".$removeimage);
    $pic=mysqli_fetch_array($picsql);
    unlink(dirname( __FILE__ )."/../images/cursuri/".$pic['image']);
    mysqli_query($link,"UPDATE `cursuri` SET `imagine`=NULL WHERE `id`=".$removeimage);*/
//header ("Location: curs.php?id=".$pic['id']);

//}
/* Remove programa */
/*if (isset($_GET['removeprograma'])) {
    $removeimage = $_GET['removeprograma'];
    $picsql = mysqli_query($link,"SELECT * FROM `cursuri` WHERE `id`=".$removeimage);
    $pic=mysqli_fetch_array($picsql);
    unlink(dirname( __FILE__ )."/../documente/".$pic['pdf_programa']);
    mysqli_query($link,"UPDATE `cursuri` SET `pdf_programa`=NULL WHERE `id`=".$removeimage);
//header ("Location: curs.php?id=".$pic['id']);
}*/
/*
if (isset($_GET['id']) && is_numeric($_GET['id']) && isset($_GET['id_main']) && is_numeric($_GET['id_main'])) {
    $id=$_GET['id'];
    $id_curs_main=$_GET['id_main'];
    $action="modifica";
    $pagetitle="Modificare";
    $sql=mysqli_query($link,"SELECT * FROM `cursuri` LEFT JOIN `curs_main` ON `cursuri`.`parent`=`curs_main`.`id_curs_main` WHERE `cursuri`.`id`=".$id);
    if (mysqli_num_rows($sql)>0) {
        // edit
        $row=mysqli_fetch_assoc($sql);
        //desfasurare
        $desfasurare="";
        $sql_desfasurare=mysqli_query($link,"SELECT * FROM `date_cursuri` WHERE `id_curs`=".$id);
        while ($row_desfasurare=mysqli_fetch_assoc($sql_desfasurare)) {
            $desfasurare.="'".strftime("%m/%d/%Y", strtotime($row_desfasurare['data']))."',";
        }
        $desfasurare=rtrim($desfasurare,",");
        // stare
        if ($row['activ']==1) {$activ="checked=\"checked\"";} else {$activ="";}
        if ($row['planificat']==1) {$planificat="checked=\"checked\"";} else {$planificat="";}
        if ($row['weekend']==1) {$weekend="checked=\"checked\"";} else {$weekend="";}
        if ($row['bucuresti']==1) {$bucuresti="checked=\"checked\"";} else {$bucuresti="";}

        if (isset($_GET['duplicat']) && is_numeric($_GET['duplicat'])) {
            $action="duplicat";
            $pagetitle="Duplicat";
        }
    } else {
        header ("Location: cursuri.php");
    }

} else {
    $action="adauga";
    $pagetitle="Adaugare";
}*/
?>
        <!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Academia Testarii CRM | {{$pageTitle}} Cursuri</title>

    <link href="{{asset('css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('font-awesome/css/font-awesome.css')}}" rel="stylesheet">

    <!-- Toastr style -->
    <link href="{{asset('css/plugins/toastr/toastr.min.css')}}" rel="stylesheet">
    <link href="{{asset('css/plugins/summernote/summernote.css')}}" rel="stylesheet">
    <link href="{{asset('css/plugins/summernote/summernote-bs3.css')}}" rel="stylesheet">
    <script src="{{asset('css/plugins/jQueryUI/jquery-ui.css')}}"></script>
    <script src="{{asset('js/plugins/Multiple-Dates-Picker-for-jQuery-UI-latest/jquery-ui.multidatespicker.css')}}"></script>
    <script src="{{asset('css/plugins/daterangepicker/daterangepicker-bs3.css')}}"></script>
    <script src="{{asset('css/plugins/select2/select2.min.css')}}"></script>

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
                    <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i>
                    </a>
                </div>
                @include('include/controlpanel')
            </nav>
        </div>
        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-8">
                <h2>{{$pageTitle}} Curs</h2>
                <ol class="breadcrumb">
                    <li><a href="/dashboard">Home</a></li>
                    <li class="active"><a href="/classes"><strong>Cursuri</strong></a></li>
                </ol>
            </div>
        </div>

        <!-- Main content -->
        <section class="wrapper wrapper-content">

            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>{{$pageTitle}} curs<small></small></h5>
                </div>
                <div class="ibox-content">

                    <form id="form" method="post" class="form-horizontal" action="action_curs.php"
                          enctype="multipart/form-data">
                        <input type="hidden" name="action" value="<?php /*echo $action;*/?>"/>
                        <input type="hidden" name="id" value="{{$class->getId()}}"/>
                        <input type="hidden" name="id_curs_main" value="{{$class->getMainClassId()}}"/>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Stare curs:</label>
                            <div class="col-sm-2"><label> <input type="checkbox" name="activ"
                                                                 @if($class->isActive()) checked="checked"
                                                                 @endif value="1"> Publicat <small>apare pe
                                        site </small></label></div>
                            <div class="col-sm-2"><label> <input type="checkbox" name="weekend"
                                                                 @if($class->isInWeekend()) checked="checked"
                                                                 @endif value="1"> Weekend </label></div>
                            <div class="col-sm-2"><label> <input type="checkbox" name="bucuresti"
                                                                 @if($class->isBucharestLocated()) checked="checked"
                                                                 @endif value="1"> Online </label></div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Titlu curs:<br/><small>Apare in meniu, in casete,
                                    etc</small></label>
                            <div class="col-sm-4"><input disabled value="{{$class->mainClass->getTitle()}}"
                                                         name="titlu_main" type="text" class="form-control" required>
                            </div>
                            <label class="col-sm-2 control-label">Suplimentar:<br/><small>Iterare, nu apare pe
                                    site</small></label>
                            <div class="col-sm-4"><input value="{{$class->getTitle()}}" name=" titlu" type="text"
                                                         class="form-control" required>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Descriere scurta:<br/><small>Slogan
                                    curs</small></label>
                            <div class="col-sm-10"><input value="{{$class->getShortDescription()}}"
                                                          name="descriere_scurta" type="text" class="form-control"
                                                          required></div>
                        </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Descriere lunga:</label>
                            <div class="col-sm-10">
						<textarea id="text1" name="descriere">
							{!! $class->getDescription() !!}
                        </textarea>
                            </div>
                        </div>

                        <div class="ibox-title">
                            <h5>Informatii inscriere<small></small></h5>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Numar cursanti:</label>
                            <div class="col-sm-10"><input value="{{$class->getStudents()}}" name="cursanti"
                                                          type="text" placeholder="doar cifre" class="form-control"
                                                          required></div>
                        </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Pret curs/cursant:</label>
                            <div class="col-sm-10"><input value="{{$class->getPrice()}}" name="pret" type="text"
                                                          placeholder="doar cifre" class="form-control" required></div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Pret redus/cursant:</label>
                            <div class="col-sm-10"><input value="{{$class->getDiscountPrice()}}" name="pret_redus"
                                                          type="text" placeholder="doar cifre" class="form-control">
                            </div>
                        </div>


                        <div class="ibox-title">
                            <h5>Detalii curs<small></small></h5>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Cui se adresează:</label>
                            <div class="col-sm-10">
						<textarea id="text2" name="cui">
							{!! $class->getForWhomDescription()!!}
						</textarea>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Ce vei învăța:</label>
                            <div class="col-sm-10">
						<textarea id="text3" name="ce">
							{!! $class->getAboutDescription() !!}
						</textarea>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Costuri:</label>
                            <div class="col-sm-10">
						<textarea id="text4" name="costuri">
							{!! $class->getCostDescription() !!}
						</textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Resurse curs:</label>
                            <div class="col-sm-10">
						<textarea id="text14" name="resurse">
							{!! $class->getResourcesDescription() !!}
						</textarea>
                            </div>
                        </div>

                        <div class="ibox-title">
                            <h5>Structura curs</h5>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Structura curs:</label>
                            <div class="col-sm-10">
						<textarea id="text5" name="structura">
							{!! $class->getStructureDescription() !!}
                        </textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Cerinte minime de participare:</label>
                            <div class="col-sm-10">
						<textarea id="text15" name="cerinte">
							{!! $class->getRequirementsDescription() !!}
                        </textarea>
                            </div>
                        </div>

                        <div class="ibox-title">
                            <h5>Programa curs</h5>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Programa curs:</label>
                            <div class="col-sm-10">
						<textarea id="text6" name="programa">
							{!! $class->getSchedule() !!}
                        </textarea>
                            </div>
                        </div>
                        <div class="ibox-title">
                            <h5>Reduceri<small></small></h5>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Early Bird:</label>
                            <div class="col-sm-10">
						<textarea id="text7" name="early">
							{!! $class->getEarlyDescription() !!}
                        </textarea>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Loyalty:</label>
                            <div class="col-sm-10">
						<textarea id="text8" name="loyality">
							{!! $class->getLoyalityDescription() !!}
                        </textarea>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Friends will be friends:</label>
                            <div class="col-sm-10">
						<textarea id="text9" name="friends">
								{!! $class->getFriendsDescription() !!}
                        </textarea>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Company discount:</label>
                            <div class="col-sm-10">
						<textarea id="text10" name="discount">
							{!! $class->getDiscountDescription() !!}
                        </textarea>
                            </div>
                        </div>

                        <div class="ibox-title">
                            <h5>Trainer</h5>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Trainer:</label>
                            <div class="col-sm-10">
                                <select class="select2 form-control" name="trainer">
                                    <option>-- Alege --</option>
                                    @foreach($trainers as $trainer)
                                        <option value="{{$trainer->getId()}}"
                                                @if(in_array($class->getId(), $trainer->classTrainers->pluck('class_id')->toArray()))
                                                selected="selected"
                                                @endif
                                        >{{$trainer->getName()}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="ibox-title">
                            <h5>Data desfasurare</h5>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Calendar: <br/><small>ll/zz/yyyy</small></label>
                            <div class="col-sm-10">
                                <input type="text" name="desfasurare" id="mdp-demo" class="form-control" value="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Loc desfasurare: <br/><small>Online sau o
                                    locatie</small></label>
                            <div class="col-sm-10">
                                <input type="text" name="desfasurarecurs" id="desfasurarecurs" class="form-control"
                                       value="{{$class->getDeployment()}}">
                            </div>
                        </div>

                        <div class="ibox-title">
                            <h5>Programa curs (PDF)</h5>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Fisier PDF:<br></label>
                            <div class="col-sm-10">
                                @if($class->getSchedulePdf())
                                    <p class="help-block"><a href="{{$class->getSchedulePdf()}}"
                                                             target="_blank"/>{{$class->schedule_pdf}}</a></p>
                                    <a class="btn btn-primary btn-sm"
                                       href="<?php echo basename($_SERVER["REQUEST_URI"]);?>&removeprograma=<?php /*echo $row['id'];*/?>"><i
                                                class="glyphicon glyphicon-trash"></i> &nbsp; Sterge programa</a>

                                @else
                                    <div class="inputBtnSection">
                                        <input id="uploadFile" class="disableInputField"
                                               placeholder="Selecteaza un fisier" disabled="disabled"/>
                                        <label class="fileUpload">
                                            <input id="filepdf" name="filepdf" type="file" class="upload"/>
                                        </label>
                                    </div>
                                @endif
                            </div>
                        </div>

                        <div class="ibox-title">
                            <h5>Imagine curs</h5>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Imagine:<br><small>va fi redimensionata automat,
                                    latimea minima: 800px</small></label>
                            <div class="col-sm-10">
                                @if($class->getImage())
                                    <p class="help-block"><img src="{{$class->getImage()}}"
                                                               width="250"/></p>
                                    <a class="btn btn-primary btn-sm"
                                       href="<?php echo basename($_SERVER["REQUEST_URI"]);?>&removeimage={{$class->getId()}}"><i
                                                class="glyphicon glyphicon-trash"></i> &nbsp; Sterge imaginea</a>
                                @else
                                    <div class="inputBtnSection">
                                        <input id="uploadImage" class="disableInputField"
                                               placeholder="Selecteaza o imagine"
                                               disabled="disabled"/>
                                        <label class="fileUpload">
                                            <input id="image" name="image" type="file" class="upload"/>
                                        </label>
                                    </div>
                                @endif
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-2">
                                <button class="btn btn-primary" type="submit">Salveaza</button>
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
            CKEDITOR.replace('text14'),
            CKEDITOR.replace('text15')
    })
</script>
<script>
    $(document).ready(function () {

        // Perioada inscriere
        $('input[name="perioada"]').daterangepicker();

        // Desfasurare curs
        var today = new Date();
        var y = today.getFullYear();

        $('#mdp-demo').multiDatesPicker({
            addDates: [{{$class->getDeployment()}}],
            numberOfMonths: [3, 4],
            defaultDate: '1/1/2020'
        });

        // Validare curs
        $("#form").validate({
            rules: {
                cursanti: {
                    required: true,
                    number: true
                },
                pret: {
                    required: true,
                    number: true
                }
            }
        });

        $(".select2").select2();

        // Check-boxuri
        $('.i-checks').iCheck({
            checkboxClass: 'icheckbox_square-green',
            radioClass: 'iradio_square-green',
        });

    });
</script>
<!-- CK Editor 4 -->
</body>
</html>