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
                    <li class="active"><a href="/classes_list"><strong>Cursuri</strong></a></li>
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

                    <form id="form" method="post" class="form-horizontal" action="/class"
                          enctype="multipart/form-data">
                        @csrf
                        <input type="hidden" name="action" value="{{$action}}"/>
                        <input type="hidden" name="id" value="@if($class) {{$class->getId()}} @endif"/>
                        <input type="hidden" name="main_class_id"
                               value="@if($class) {{$class->getMainClassId()}} @endif"/>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Stare curs:</label>
                            <div class="col-sm-2"><label> <input type="checkbox" name="active"
                                                                 @if($class && $class->isActive()) checked="checked"
                                                                 @endif value="1"> Publicat <small>apare pe
                                        site </small></label></div>
                            <div class="col-sm-2"><label> <input type="checkbox" name="weekend"
                                                                 @if($class && $class->isInWeekend()) checked="checked"
                                                                 @endif value="1"> Weekend </label></div>
                            <div class="col-sm-2"><label> <input type="checkbox" name="bucharest"
                                                                 @if($class && $class->isBucharestLocated()) checked="checked"
                                                                 @endif value="1"> Online </label></div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Titlu curs:<br/><small>Apare in meniu, in casete,
                                    etc</small></label>
                            <div class="col-sm-4"><input disabled
                                                         value="@if($class && $class->mainClass) {{$class->mainClass->getTitle()}} @endif"
                                                         name="title_main" type="text" class="form-control" required>
                            </div>
                            <label class="col-sm-2 control-label">Suplimentar:<br/><small>Iterare, nu apare pe
                                    site</small></label>
                            <div class="col-sm-4"><input value="@if($class) {{$class->getTitle()}} @endif" name="title"
                                                         type="text"
                                                         class="form-control" required>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Descriere scurta:<br/><small>Slogan
                                    curs</small></label>
                            <div class="col-sm-10"><input value="@if($class) {{$class->getShortDescription()}} @endif"
                                                          name="short_description" type="text" class="form-control"
                                                          required></div>
                        </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Descriere lunga:</label>
                            <div class="col-sm-10">
						<textarea id="text1" name="description">
                            @if($class)
                                {!! $class->getDescription() !!}
                            @endif
                        </textarea>
                            </div>
                        </div>

                        <div class="ibox-title">
                            <h5>Informatii inscriere<small></small></h5>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Numar cursanti:</label>
                            <div class="col-sm-10"><input value="@if($class) {{$class->getStudents()}} @endif"
                                                          name="students"
                                                          type="text" placeholder="doar cifre" class="form-control"
                                                          required></div>
                        </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Pret curs/cursant:</label>
                            <div class="col-sm-10"><input value="@if($class) {{$class->getPrice()}} @endif" name="price"
                                                          type="text"
                                                          placeholder="doar cifre" class="form-control" required></div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Pret redus/cursant:</label>
                            <div class="col-sm-10"><input value="@if($class) {{$class->getDiscountPrice()}} @endif"
                                                          name="discount_price"
                                                          type="text" placeholder="doar cifre" class="form-control">
                            </div>
                        </div>


                        <div class="ibox-title">
                            <h5>Detalii curs<small></small></h5>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Cui se adresează:</label>
                            <div class="col-sm-10">
						<textarea id="text2" name="for_whom_description">
                            @if($class)
                                {!! $class->getForWhomDescription()!!}
                            @endif
						</textarea>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Ce vei învăța:</label>
                            <div class="col-sm-10">
						<textarea id="text3" name="about_description">
                            @if($class)
                                {!! $class->getAboutDescription() !!}
                            @endif
						</textarea>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Costuri:</label>
                            <div class="col-sm-10">
						<textarea id="text4" name="cost_description">
                            @if($class)
                                {!! $class->getCostDescription() !!}
                            @endif
						</textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Resurse curs:</label>
                            <div class="col-sm-10">
						<textarea id="text14" name="resources_description">
                            @if($class)
                                {!! $class->getResourcesDescription() !!}
                            @endif
						</textarea>
                            </div>
                        </div>

                        <div class="ibox-title">
                            <h5>Structura curs</h5>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Structura curs:</label>
                            <div class="col-sm-10">
						<textarea id="text5" name="structure_description">
                            @if($class)
                                {!! $class->getStructureDescription() !!}
                            @endif
                        </textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Cerinte minime de participare:</label>
                            <div class="col-sm-10">
						<textarea id="text15" name="requirements_description">
                            @if($class)
                                {!! $class->getRequirementsDescription() !!}
                            @endif
                        </textarea>
                            </div>
                        </div>

                        <div class="ibox-title">
                            <h5>Programa curs</h5>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Programa curs:</label>
                            <div class="col-sm-10">
						<textarea id="text6" name="schedule">
                            @if($class)
                                {!! $class->getSchedule() !!}
                            @endif
                        </textarea>
                            </div>
                        </div>
                        <div class="ibox-title">
                            <h5>Reduceri<small></small></h5>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Early Bird:</label>
                            <div class="col-sm-10">
						<textarea id="text7" name="early_description">
                            @if($class)
                                {!! $class->getEarlyDescription() !!}
                            @endif
                        </textarea>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Loyalty:</label>
                            <div class="col-sm-10">
						<textarea id="text8" name="loyality_description">
                            @if($class)
                                {!! $class->getLoyalityDescription() !!}
                            @endif
                        </textarea>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Friends will be friends:</label>
                            <div class="col-sm-10">
						<textarea id="text9" name="friends_description">
                            @if($class)
                                {!! $class->getFriendsDescription() !!}
                            @endif
                        </textarea>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Company discount:</label>
                            <div class="col-sm-10">
						<textarea id="text10" name="discount_description">
                            @if($class)
                                {!! $class->getDiscountDescription() !!}
                            @endif
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
                                                @if($class && in_array($class->getId(), $trainer->classTrainers->pluck('class_id')->toArray()))
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
                                <input type="text" name="deployment" id="mdp-demo" class="form-control" value="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Loc desfasurare: <br/><small>Online sau o
                                    locatie</small></label>
                            <div class="col-sm-10">
                                <input type="text" name="deploymentCourse" id="desfasurarecurs" class="form-control"
                                       value="@if($class) {{$class->getDeployment()}} @endif">
                            </div>
                        </div>

                        <div class="ibox-title">
                            <h5>Programa curs (PDF)</h5>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Fisier PDF:<br></label>
                            <div class="col-sm-10">
                                @if($class && $class->getSchedulePdf())
                                    <p class="help-block"><a href="{{$class->getSchedulePdf()}}"
                                                             target="_blank"/>{{$class->schedule_pdf}}</a></p>
                                    <a class="btn btn-primary btn-sm"
                                       href="<?php echo basename($_SERVER["REQUEST_URI"]);?>&removepdf={{$class->getId()}}"><i
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
                                @if($class && $class->getImage())
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
<?php
$classDates = "";
if ($class) {
    $classDates = $class->classDates->pluck('date')->toArray();
    $classDates = array_map(function ($item) {
        return "'" . strftime("%m/%d/%Y", strtotime($item)) . "'";
    }, $classDates);
    $classDates = implode(",", $classDates);
}
?>
<script>
    $(document).ready(function () {
        // Perioada inscriere
        $('input[name="perioada"]').daterangepicker();

        // Desfasurare curs
        var today = new Date();
        var y = today.getFullYear();

        $('#mdp-demo').multiDatesPicker({
            addDates: [<?php echo $classDates;?>],
            numberOfMonths: [3, 4],
            defaultDate: '1/1/2020'
        });

        // Validare curs
        $("#form").validate({
            rules: {
                students: {
                    required: true,
                    number: true
                },
                price: {
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