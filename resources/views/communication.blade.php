<?php
/*include("../__connect.php");
$page = "cursuri";
$today = date("Y-m-d");
$emails="";*/
// stare
/*if (isset($_GET['stare']) AND is_numeric($_GET['stare'])) {
    if ($_GET['value']==1){
        $sql_update_stare=mysqli_query($link,"UPDATE `cursuri` SET `activ`=0 WHERE `id`=".$_GET['id']);
    } else {
        $sql_update_stare=mysqli_query($link,"UPDATE `cursuri` SET `activ`=1 WHERE `id`=".$_GET['id']);
    }
    header ("Location:cursuri.php");
}*/
// sterge
/*if (isset($_GET['sterge']) AND is_numeric($_GET['sterge'])) {
    $sql_sterge=mysqli_query($link,"DELETE FROM `cursuri` WHERE `id`=".$_GET['sterge']);
    header ("Location:cursuri.php");
}*/

// filtru curs
/*if (isset($_GET['curs_main']) AND is_numeric($_GET['curs_main'])) {

    $filtru=true;
    if ($_GET['curs_main']!="--") {
        $querycurs="
		SELECT * FROM `cursant_curs`
		LEFT JOIN `cursanti` ON `cursanti`.`id`=`cursant_curs`.`id_cursant`
		LEFT JOIN `cursuri` ON `cursant_curs`.`id_curs`=`cursuri`.`id`
		LEFT JOIN `curs_main` ON `cursuri`.`parent`=`curs_main`.`id_curs_main`
		WHERE `curs_main`.`id_curs_main`=".$_GET['curs_main']."
		GROUP BY `cursanti`.`email` ORDER BY `cursanti`.`nume`
		";
    } else {
        $querycurs="WHERE 1=1";
    }
} else {
    $querycurs="WHERE 1=1";
    $filtru=false;
}*/

// filtru iteratie
/*if (isset($_GET['curs_main']) AND is_numeric($_GET['curs_main']) AND isset($_GET['curs']) AND is_numeric($_GET['curs'])) {
    $filtru2=true;
    if ($_GET['curs']!="--") {
        $querycurs2="
		SELECT * FROM `cursant_curs`
		LEFT JOIN `cursanti` ON `cursanti`.`id`=`cursant_curs`.`id_cursant`
		LEFT JOIN `cursuri` ON `cursant_curs`.`id_curs`=`cursuri`.`id`
		LEFT JOIN `curs_main` ON `cursuri`.`parent`=`curs_main`.`id_curs_main`
		WHERE `curs_main`.`id_curs_main`=".$_GET['curs_main']."
		AND `cursant_curs`.`id_curs`=".$_GET['curs']."
		GROUP BY `cursanti`.`email` ORDER BY `cursanti`.`nume`
		";
    } else {
        $querycurs2="";
    }
} else {
    $querycurs2="";
    $filtru2=false;
}*/
?>
        <!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{csrf_token()}}">
    <title>Academia Testarii CRM | Comunicare</title>

    <link href="{{asset('css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('font-awesome/css/font-awesome.css')}}" rel="stylesheet">

    <!-- Toastr style -->
    <link href="{{asset('css/plugins/toastr/toastr.min.css')}}" rel="stylesheet">
    <link href="{{asset('css/plugins/daterangepicker/daterangepicker-bs3.css')}}" rel="stylesheet">
    <link href="{{asset('css/plugins/datapicker/datepicker3.css')}}" rel="stylesheet">
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
                    <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i>
                    </a>
                </div>
                @include('include/controlpanel')
            </nav>
        </div>
        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-8">
                <h2>Comunicare</h2>
                <ol class="breadcrumb">
                    <li><a href="/dashboard">Home</a></li>
                    <li class="active"><strong>Comunicare</strong></li>
                </ol>
            </div>
            <div class="col-sm-4">
                <div class="title-action">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#mesaj">Trimite
                        mesaj
                    </button>
                </div>
            </div>
        </div>

        <!-- Main content -->
        <section class="content container-fluid">
            <div class="ibox">
                <div class="ibox-content">
                    <div class="row">
                        <form method="GET" action="">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="control-label" for="curs">Filtreaza dupa cursuri</label>
                                    <select id="curs_main" class="form-control" name="main_class"
                                            onchange="this.form.submit()">
                                        <option value="">-- Toate --</option>
                                        @foreach($mainClasses as $mainClass)
                                            <option @if($selectedMainClass && $selectedMainClass->getId() == $mainClass->getId())
                                                    selected='selected'
                                                    @endif
                                                    value="{{$mainClass->getId()}}">{!! $mainClass->getTitle() !!}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            @if($selectedMainClass)
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label" for="curs">Filtreaza dupa iteratie curs</label>
                                        <select id="curs" class="form-control" name="class"
                                                onchange="this.form.submit()">
                                            <option value="">-- Toate --</option>
                                            @foreach($selectedMainClass->classesOrderByDate as $class)
                                                <option @if($selectedClass && $selectedClass->getId() == $class->getId())
                                                        selected="selected"
                                                        @endif
                                                        value="{{$class->getId()}}">
                                                    @if($class->getRegistrationStartDate())
                                                        {{$class->getRegistrationStartDate()->formatLocalized("%e %B, %Y")}}
                                                        -
                                                        {{$class->getRegistrationEndDate()->formatLocalized("%e %B, %Y")}}
                                                    @else
                                                        TBA
                                                    @endif
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            @endif
                        </form>
                    </div>
                    <hr/>
                    <div class="">
                        <table class="table table-striped table-hover" id="cursanti">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nume Prenume</th>
                                <th>Email</th>
                                <th>Telefon</th>
                                <th>Localitate</th>
                                <th>Inregistrat</th>
                                <th>Activ</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($students as $student)
                                <tr>
                                    <td>{{$student->getId()}}</td>
                                    <td>{{$student->getFirstName()}} {{$student->getLastName()}}</td>
                                    <td>{{$student->getEmail()}}</td>
                                    <td>{{$student->getPhone()}}</td>
                                    <td>{{$student->getCity()}}</td>
                                    <td>{{$student->getRegistrationDate()}}</td>
                                    <td>
                                        @if($student->getActivity())
                                            <span class="label label-primary">Activ</span>
                                        @else
                                            <span class="label label-danger">Inactiv</span>
                                        @endif
                                    </td>
                                </tr>

                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div><!-- /.box-body -->
            </div><!-- /.box -->

        </section>
        <!-- /.content -->

        <div class="footer">
            @include('include/footer')
        </div>
    </div>
</div>

<div class="modal inmodal" id="mesaj" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog mesaj">
        <div class="modal-content animated fadeIn">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                            class="sr-only">Inchide</span></button>
                <i class="fa fa-envelope-o modal-icon"></i>
                <h4 class="modal-title">Trimite mesaj</h4>
            </div>
            <div class="modal-body">

                <div class="ibox-content">
                    <label class="control-label">Catre</label><br/>
                    {{implode("; ", $students->pluck('email')->toArray())}}
                </div>

                <div class="ibox-content">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Titlu mesaj</label>
                        <div class="col-sm-10"><input value="" name="title" type="text" class="form-control" required>
                        </div>
                    </div>
                    <div class="hr-line-dashed"></div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Mesaj:</label>
                        <div class="col-sm-10">
					<textarea id="text" name="message">

					</textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-4 col-sm-offset-2">
                            <button class="btn btn-primary" type="submit">Trimite</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Main scripts -->
<script src="{{asset('js/jquery-2.1.1.js')}}"></script>
<script src="{{asset('js/bootstrap.min.js')}}"></script>
<script src="{{asset('js/plugins/metisMenu/jquery.metisMenu.js')}}"></script>
<script src="{{asset('js/plugins/slimscroll/jquery.slimscroll.min.js')}}"></script>
<!-- Data picker -->
<script src="{{asset('js/plugins/datapicker/bootstrap-datepicker.js')}}"></script>
<!-- Date range use moment.js same as full calendar plugin -->
<script src="{{asset('js/plugins/fullcalendar/moment.min.js')}}"></script>
<!-- Date range picker -->
<script src="{{asset('js/plugins/daterangepicker/daterangepicker.js')}}"></script>
<!-- DataTables -->
<script src="{{asset('js/plugins/dataTables/datatables.min.js')}}"></script>
<script src="{{asset('js/plugins/iCheck/icheck.min.js')}}"></script>
<script src="{{asset('js/plugins/ckeditor/ckeditor.js')}}"></script>
<script>
    $(function () {
        // Replace the <textareas> with a CKEditor instance.
        CKEDITOR.replace('text')
    })
</script>
<!-- Custom and plugin javascript -->
<script src="{{asset('js/inspinia.js')}}"></script>
<script src="{{asset('js/plugins/pace/pace.min.js')}}"></script>

<script>
    $(document).ready(function () {
        $('#data_5 .input-daterange').datepicker({
            keyboardNavigation: false,
            forceParse: false,
            autoclose: true
        });

        $(function () {
            $('#cursanti').DataTable({
                "order": [[6, "desc"]]
            });
        });
    });
</script>
</body>
</html>
