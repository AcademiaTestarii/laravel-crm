<?php
/*
// mutare cursant
if (isset($_POST['curs']) && isset($_POST['cursant']) && isset($_POST['cursnou'])) {
    $cursnou=trim(mysqli_real_escape_string($link,$_POST['cursnou']));
    if ($cursnou!="--") {
        $sql_update_cursnou="UPDATE `cursant_curs` SET `id_curs` ='".$cursnou."' WHERE `id_cursant`=".$_POST['cursant']." AND `id_curs`=".$_POST['curs'];
        mysqli_query($link,$sql_update_cursnou);
    }
}

$sql_inscrisi=mysqli_query($link,"SELECT * FROM `cursant_curs` LEFT JOIN `cursanti` ON `cursant_curs`.`id_cursant`=`cursanti`.`id` WHERE `cursant_curs`.`id_curs`=".$row['id']);
$cati=mysqli_num_rows($sql_inscrisi);
if ($cati > 0) {$sunt_studenti=true;} else {$sunt_studenti=false;}

// mesaj studenti
if (isset($_POST['trimite_mesaj']) && $sunt_studenti && $_POST['subiect_mesaj']!="" && $_POST['mesaj']!="") {

    require_once('../includes/phpmailer/class.phpmailer.php');
    $mail->CharSet = 'UTF-8';
    $mail->Encoding = 'base64';
    $mail = new PHPMailer();

    $mail->SetFrom( "office@academiatestarii.ro" ,"Academia Testării" );
    $mail->AddReplyTo( "contact@academiatestarii.ro" ,"Academia Testării" );

    while ($row_emails=mysqli_fetch_array($sql_inscrisi)) {

        $mail->AddAddress( $row_emails['email'] , $row_emails['nume']." ".$row_emails['prenume'] );
        $mail->Subject = $_POST['subiect_mesaj'];
        $message = $_POST['mesaj'];
        $body = $message;
        $mail->MsgHTML( $body );
        $sendEmail = $mail->Send();
        $mail->clearAddresses();
    }
    header ("Location:vizualizare_curs.php?id=".$id);
}

// calificativ
if (isset($_POST['acorda_calificativ'])) {
    $linkfeedback=generatePassword();
    $sql_insert=(mysqli_query($link,"
	INSERT INTO `feedback` (`id_cursant`,`id_curs`,`scor`,`organizare_jira_zephyr_plus`,`organizare_jira_zephyr_minus`,`test_cases_plus`,`test_cases_minus`,`defects_plus`,`defects_minus`,`traceability_plus`,`traceability_minus`,`link`)
	VALUES
	(".$_POST['cursant'].",
	".$_POST['curs'].",
	".$_POST['nota'].",
	'".trim(mysqli_real_escape_string($link,$_POST['good_organizare']))."',
	'".trim(mysqli_real_escape_string($link,$_POST['bad_organizare']))."',
	'".trim(mysqli_real_escape_string($link,$_POST['good_cases']))."',
	'".trim(mysqli_real_escape_string($link,$_POST['bad_cases']))."',
	'".trim(mysqli_real_escape_string($link,$_POST['good_defects']))."',
	'".trim(mysqli_real_escape_string($link,$_POST['bad_defects']))."',
	'".trim(mysqli_real_escape_string($link,$_POST['good_trace']))."',
	'".trim(mysqli_real_escape_string($link,$_POST['bad_trace']))."',
	'".$linkfeedback."')
	"));
    header ("Location:vizualizare_curs.php?id=".$_POST['curs']);
}*/
?>
        <!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Academia Testarii CRM | Vizualizare curs: {{$class->mainClass->getTitle()}} {{$class->getTitle()}}</title>

    <!-- Magnific Popup core CSS file -->
    <link href="{{asset('js/magnific-popup.css')}}" rel="stylesheet">
    <link href="{{asset('css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('font-awesome/css/font-awesome.css')}}" rel="stylesheet">
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
            <nav class="navbar navbar-static-top  " role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i>
                    </a>
                </div>
                @include('include/controlpanel')
            </nav>
        </div>
        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-sm-12">
                <h2> {{$class->mainClass->getTitle()}}: {{$class->getTitle()}}
                    din {{ $class->getRegistrationStartDate()->formatLocalized("%e %B, %Y")}}</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="/dashboard">Home</a>
                    </li>
                    <li>
                        <a href="/classes_list">Cursuri</a>
                    </li>
                    <li class="active">
                        <strong>{{$class->mainClass->getTitle()}}: {{$class->getTitle()}} din
                            {{ $class->getRegistrationStartDate()->formatLocalized("%e %B, %Y")}}</strong>
                    </li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="wrapper wrapper-content animated fadeInUp">
                    <div class="ibox">
                        <div class="ibox-content">
                            <div class="row">
                                <div class="col-lg-12">
                                    @if($class->classStudents->isNotEmpty())
                                        <div class="m-b-md">
                                            <button type="button" class="btn btn-warning btn-xs pull-right"
                                                    data-toggle="modal" data-target="#mesaj">Adrese email cursanti
                                            </button>
                                        </div>
                                    @endif
                                    <dl class="dl-horizontal">
                                        <dt>Status:</dt>
                                        <dd><span class="label label-primary">Activ</span></dd>
                                    </dl>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-5">
                                    <dl class="dl-horizontal">
                                        <dt>Obiectiv:</dt>
                                        <dd> {{$class->getStudents()}}</dd>
                                        <dt>Cursanti inscrisi:</dt>
                                        @if($class->classStudents->isNotEmpty())
                                            <dd>{{$class->classStudents->count()}}</dd>
                                        @else
                                            <dd> 0</dd>
                                        @endif
                                    </dl>
                                </div>
                                <div class="col-lg-7" id="cluster_info">
                                    <dl class="dl-horizontal">
                                        <dt>Obiectiv buget:</dt>
                                        <dd>{{$class->getBugdet()}}</dd>
                                        <dt>Realizat:</dt>
                                        <dd>
                                            {{$class->getRealBugdet()}}
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <dl class="dl-horizontal">
                                        <dt>Rata ocupare:</dt>
                                        <dd>
                                            <div class="progress progress-striped active m-b-sm">
                                                <div style="width: {{$class->getOccupancyRate()}}%"
                                                     class="progress-bar"></div>
                                            </div>
                                        </dd>
                                    </dl>
                                </div>
                            </div>

                            <div class="row m-t-sm">
                                <div class="col-lg-12">
                                    <div class="ibox ">
                                        <div class="ibox-title">
                                            <h3>Lista cursanti</h3>
                                        </div>
                                        <div class="ibox-content">
                                            <table id="example1" class="table table-bordered table-striped">
                                                <thead>
                                                <tr>
                                                    <th>Nume</th>
                                                    <th>Data inscriere</th>
                                                    <th>Email</th>
                                                    <th>Telefon</th>
                                                    <th>Status</th>
                                                    <th class="text-center"></th>
                                                    <th class="text-center"></th>
                                                    <th class="text-center"></th>
                                                    <th class="text-center"></th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                @if($class->classStudents->isNotEmpty())
                                                    @foreach($class->classStudents as $classStudent)
                                                        <tr @if($classStudent->getPaymentStatus()=='Plata in asteptare') class="warning" @endif>
                                                            <td>{{$classStudent->student->getLastName()}} {{$classStudent->student->getFirstName()}}</td>
                                                            <td>{{$classStudent->student->getRegistrationDate()}} </td>
                                                            <td>{{$classStudent->student->getEmail()}}</td>
                                                            <td>{{$classStudent->student->getPhone()}}</td>
                                                            <td>{{$classStudent->getPaymentStatus()}}</td>
                                                            <td class="text-center">
                                                                <button href="inline.mutacursant.php?cursant={{$classStudent->getStudentId()}}&curs={{$class->getId()}}"
                                                                        class="btn btn-warning btn-xs ajax-popup-link">
                                                                    Muta
                                                                </button>
                                                            </td>
                                                            <td class="text-center">
                                                                @if($classStudent->student->getFeedback($class->getId())->isEmpty())
                                                                    <button type="button" class="btn btn-success btn-xs"
                                                                            data-toggle="modal"
                                                                            data-target="#calificativ{{$classStudent->getId()}}">
                                                                        Calificativ
                                                                    </button>
                                                                    <div class="modal inmodal"
                                                                         id="calificativ{{$classStudent->getId()}}"
                                                                         tabindex="-1" role="dialog" aria-hidden="true">
                                                                        <div class="modal-dialog">
                                                                            <div class="modal-content animated fadeIn">
                                                                                <div class="modal-header">
                                                                                    <button type="button" class="close"
                                                                                            data-dismiss="modal"><span
                                                                                                aria-hidden="true">&times;</span><span
                                                                                                class="sr-only">Inchide</span>
                                                                                    </button>
                                                                                    <i class="fa fa-star-half-o modal-icon"></i>
                                                                                    <h4 class="modal-title">Acordă
                                                                                        calificativ
                                                                                        pentru
                                                                                        <br/>{{$classStudent->student->getLastName()}} {{$classStudent->student->getFirstName()}}
                                                                                    </h4>
                                                                                    <small> </small>
                                                                                </div>
                                                                                <div class="modal-body">
                                                                                    <form method="POST"
                                                                                          class="calificativ"
                                                                                          action="">
                                                                                        @csrf
                                                                                        <div class="form-group">
                                                                                            <div class="col-md-12 form-horizontal">
                                                                                                <fieldset>
                                                                                                    <h4>Notă</h4>
                                                                                                    <div class="radio radio-inline">
                                                                                                        <input type="radio"
                                                                                                               id="inlineRadio1"
                                                                                                               value="1"
                                                                                                               name="nota">
                                                                                                        <label for="inlineRadio1">
                                                                                                            1 </label>
                                                                                                    </div>
                                                                                                    <div class="radio radio-inline">
                                                                                                        <input type="radio"
                                                                                                               id="inlineRadio2"
                                                                                                               value="2"
                                                                                                               name="nota">
                                                                                                        <label for="inlineRadio2">
                                                                                                            2 </label>
                                                                                                    </div>
                                                                                                    <div class="radio radio-inline">
                                                                                                        <input type="radio"
                                                                                                               id="inlineRadio3"
                                                                                                               value="3"
                                                                                                               name="nota">
                                                                                                        <label for="inlineRadio3">
                                                                                                            3 </label>
                                                                                                    </div>
                                                                                                    <div class="radio radio-inline">
                                                                                                        <input type="radio"
                                                                                                               id="inlineRadio4"
                                                                                                               value="4"
                                                                                                               name="nota">
                                                                                                        <label for="inlineRadio4">
                                                                                                            4 </label>
                                                                                                    </div>
                                                                                                    <div class="radio radio-inline">
                                                                                                        <input type="radio"
                                                                                                               id="inlineRadio5"
                                                                                                               value="5"
                                                                                                               name="nota">
                                                                                                        <label for="inlineRadio5">
                                                                                                            5 </label>
                                                                                                    </div>
                                                                                                    <div class="radio radio-inline">
                                                                                                        <input type="radio"
                                                                                                               id="inlineRadio6"
                                                                                                               value="6"
                                                                                                               name="nota">
                                                                                                        <label for="inlineRadio6">
                                                                                                            6 </label>
                                                                                                    </div>
                                                                                                    <div class="radio radio-inline">
                                                                                                        <input type="radio"
                                                                                                               id="inlineRadio7"
                                                                                                               value="7"
                                                                                                               name="nota">
                                                                                                        <label for="inlineRadio7">
                                                                                                            7 </label>
                                                                                                    </div>
                                                                                                    <div class="radio radio-inline">
                                                                                                        <input type="radio"
                                                                                                               id="inlineRadio8"
                                                                                                               value="8"
                                                                                                               name="nota">
                                                                                                        <label for="inlineRadio8">
                                                                                                            8 </label>
                                                                                                    </div>
                                                                                                    <div class="radio radio-inline">
                                                                                                        <input type="radio"
                                                                                                               id="inlineRadio9"
                                                                                                               value="9"
                                                                                                               name="nota">
                                                                                                        <label for="inlineRadio9">
                                                                                                            9 </label>
                                                                                                    </div>
                                                                                                    <div class="radio radio-inline">
                                                                                                        <input type="radio"
                                                                                                               id="inlineRadio10"
                                                                                                               value="10"
                                                                                                               name="nota">
                                                                                                        <label for="inlineRadio10">
                                                                                                            10 </label>
                                                                                                    </div>
                                                                                                </fieldset>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="form-group">
                                                                                            <div class="col-md-12"><h4>
                                                                                                    Organizare
                                                                                                    JIRA & Zephyr</h4>
                                                                                            </div>
                                                                                            <div class="col-md-6">Good
                                                                                                points
                                                                                                <textarea
                                                                                                        name="good_organizare"></textarea>
                                                                                            </div>
                                                                                            <div class="col-md-6">To
                                                                                                improve
                                                                                                <textarea
                                                                                                        name="bad_organizare"></textarea>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="form-group">
                                                                                            <div class="col-md-12"><h4>
                                                                                                    Test
                                                                                                    Cases</h4></div>
                                                                                            <div class="col-md-6">Good
                                                                                                points<textarea
                                                                                                        name="good_cases"></textarea>
                                                                                            </div>
                                                                                            <div class="col-md-6">To
                                                                                                improve<textarea
                                                                                                        name="bad_cases"></textarea>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="form-group">
                                                                                            <div class="col-md-12"><h4>
                                                                                                    Defects</h4>
                                                                                            </div>
                                                                                            <div class="col-md-6">Good
                                                                                                points<textarea
                                                                                                        name="good_defects"></textarea>
                                                                                            </div>
                                                                                            <div class="col-md-6">To
                                                                                                improve<textarea
                                                                                                        name="bad_defects"></textarea>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="form-group">
                                                                                            <div class="col-md-12"><h4>
                                                                                                    Traceability</h4>
                                                                                            </div>
                                                                                            <div class="col-md-6">Good
                                                                                                points<textarea
                                                                                                        name="good_trace"></textarea>
                                                                                            </div>
                                                                                            <div class="col-md-6">To
                                                                                                improve<textarea
                                                                                                        name="bad_trace"></textarea>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="form-group">
                                                                                            <div class="col-md-12 mt-20 text-center">
                                                                                                <button class="btn btn-info btn-sm"
                                                                                                        type="submit"
                                                                                                        name="acorda_calificativ"/>
                                                                                                Salvează
                                                                                                calificativ</button>
                                                                                            </div>
                                                                                        </div>
                                                                                        <input type="hidden"
                                                                                               name="cursant"
                                                                                               value="{{$classStudent->getId()}} "/>
                                                                                        <input type="hidden" name="curs"
                                                                                               value="{{$class->getId()}}"/>
                                                                                    </form>
                                                                                </div>
                                                                                <div class="modal-footer">
                                                                                    <button type="button"
                                                                                            class="btn btn-white"
                                                                                            data-dismiss="modal">Inchide
                                                                                    </button>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                @else
                                                                    <a href="/feedback/{{$classStudent->student->getFeedback($class->getId())[0]->getLink()}}"
                                                                       class="btn btn-warning btn-xs"
                                                                       target="_blank">Calificativ</a>
                                                                @endif
                                                            </td>
                                                            <td class="text-center">
                                                                <button href="/inline_note?student={{$classStudent->getStudentId()}}&class={{$class->getId()}}"
                                                                        class="btn @if(!is_null($classStudent->getNote())) btn-primary @else btn-info @endif btn-xs ajax-popup-link">
                                                                    Notita
                                                                </button>
                                                            </td>
                                                            <td class="text-center">
                                                                <form action="" method="GET">
                                                                    <button class="btn btn-danger btn-xs"
                                                                            onClick="confirmDelete()" type="submit"/>
                                                                    Sterge</button>
                                                                    <input type="hidden" name="delete"
                                                                           value="{{$classStudent->getStudentId()}}"/>
                                                                    <input type="hidden" name="class"
                                                                           value="{{$class->getId()}}"/>
                                                                </form>
                                                            </td>
                                                        </tr>
                                                    @endforeach
                                                @endif
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            @include('include/footer')
        </div>
    </div>
</div>

<!-- Modals -->
@if($class->classStudents->isNotEmpty())
    <div class="modal inmodal" id="mesaj" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated fadeIn">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                                aria-hidden="true">&times;</span><span
                                class="sr-only">Inchide</span></button>
                    <i class="fa fa-envelope-o modal-icon"></i>
                    <h4 class="modal-title">Lista email-uri cursanti</h4>
                </div>
                <div class="modal-body">
                    <div class="ibox-content">
                        @foreach($class->classStudents as $classStudent)
                            {{$classStudent->student->getEmail()}};
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal inmodal" id="facturi" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated fadeIn">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                                aria-hidden="true">&times;</span><span
                                class="sr-only">Inchide</span></button>
                    <i class="fa fa-credit-card modal-icon"></i>
                    <h4 class="modal-title">Trimite facturi</h4>
                    <small>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</small>
                </div>
                <div class="modal-body">
                    <p><strong>Lorem Ipsum is simply dummy</strong> text of the printing and typesetting industry. Lorem
                        Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer
                        took
                        a galley of type and scrambled it to make a type specimen book. It has survived not only five
                        centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-white" data-dismiss="modal">Inchide</button>
                </div>
            </div>
        </div>
    </div>
@endif
<!-- /Modals -->
<div id="test-popup" class="white-popup mfp-hide">

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

<!-- Magnific Popup core JS file -->
<script src="{{asset('js/jquery.magnific-popup.js')}}"></script>
<script>
    $('.ajax-popup-link').magnificPopup({
        type: 'ajax'
    });
</script>

</body>

</html>
