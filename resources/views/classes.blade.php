<?php
/*include("../__connect.php");
$page = "cursuri";
$today = date("Y-m-d");
$querystatus="";*/
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

?><!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Academia Testarii CRM | Cursuri <? echo date("Y");?></title>

    <link href="{{asset('css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('font-awesome/css/font-awesome.css')}}" rel="stylesheet">

    <!-- Toastr style -->
    <link href="{{asset('css/plugins/toastr/toastr.min.css')}}" rel="stylesheet">
    <script src="{{asset('css/plugins/daterangepicker/daterangepicker-bs3.css')}}"></script>
    <script src="{{asset('css/plugins/datapicker/datepicker3.css')}}"></script>
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
                <h2>Cursuri <?php echo date("Y");?></h2>
                <ol class="breadcrumb">
                    <li><a href="/dashboard">Home</a></li>
                    <li class="active"><strong>Cursuri <? echo date("Y");?></strong></li>
                </ol>
            </div>
            <div class="col-sm-4">
                <div class="title-action">
                    <a class="btn btn-primary" href="/class">Adauga curs nou</a>
                </div>
            </div>
        </div>

        <!-- Main content -->
        <section class="content container-fluid">
            <div class="ibox float-e-margins">
                <div class="ibox-content">
                    <div class="row">
                        <form method="GET"
                              action="/classes">
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label class="control-label" for="curs">Curs</label>
                                    <select name="id" id="curs" class="form-control">
                                        <option value="0">-- Toate --</option>
                                        @foreach($filterMainClasses as $filterMainClass)
                                            <option value="{{$filterMainClass->getId()}}"
                                                    @if($selectedMainClass && $filterMainClass->getId() == $selectedMainClass->getid())
                                                    selected="selected"
                                                    @endif
                                            >{!! $filterMainClass->getTitle()!!}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group" id="data_5">
                                    <label class="control-label">Data</label>
                                    <div class="input-daterange input-group" id="datepicker">
                                        <input type="text" class="input-sm form-control" name="start"
                                               value="<?php echo(isset($_GET['start']) ? $_GET['start'] : "01/01/2020");?>">
                                        <span class="input-group-addon">pana la</span>
                                        <input type="text" class="input-sm form-control" name="end"
                                               value="<?php echo(isset($_GET['end']) ? $_GET['end'] : "12/31/2020");?>">
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label class="control-label" for="status">Status</label>
                                    <select name="status" id="status" class="form-control">
                                        <option value="1" <?php echo(isset($_GET['status']) && $_GET['status'] == 1 ? "selected=\"\"" : ""); ?>>
                                            -- Toate --
                                        </option>
                                        <option value="2"<?php echo(isset($_GET['status']) && $_GET['status'] == 2 ? "selected=\"\"" : ""); ?>>
                                            Active
                                        </option>
                                        <option value="3"<?php echo(isset($_GET['status']) && $_GET['status'] == 3 ? "selected=\"\"" : ""); ?>>
                                            Finalizate
                                        </option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label class="control-label" for="filtreaza">&nbsp;</label>
                                    <button class="form-control btn btn-primary" type="submit" name="filtreaza">
                                        Filtreaza
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>

                    <div class="table-responsive">
                        <table id="cursuri" class="table table-bordered table-striped">
                            <thead>
                            <tr>
                                <th>id</th>
                                <th>Titlu</th>
                                <th>Start</th>
                                <th>End</th>
                                <th class="text-center">Cursanti/locuri</th>
                                <th class="text-center">Desfasurare</th>
                                <th class="text-center"></th>
                                <th class="text-center"></th>
                                <th class="text-center"></th>
                                <th class="text-center"></th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($mainClasses as $mainClass)
                                <tr class="group">
                                    <td colspan="10"><strong>{{$mainClass->getTitle()}}</strong></td>
                                </tr>
                                @if(!is_null($mainClass->classes->first()))
                                    @foreach($mainClass->classes as $class)
                                        <tr @if($class->getRegistrationStartDate()->toDateString()
                                        < (new \Carbon\Carbon())->toDateString())
                                            class="warning"
                                                @endif>
                                            <td>{{$class->getId()}}</td>
                                            <td>
                                                <strong>{{$class->getTitle()}}
                                                    @if($class->isInWeekend()) (Weekend) @endif
                                                </strong>
                                            </td>
                                            <td>
                                                @if(is_null($class->getRegistrationStartDate()))
                                                    TBA
                                                @else
                                                    {{ $class->getRegistrationStartDate()->formatLocalized("%e %B, %Y")}}
                                                @endif
                                            </td>
                                            <td>
                                                @if(is_null($class->getRegistrationEndDate()))
                                                    TBA
                                                @else
                                                    {{ $class->getRegistrationEndDate()->formatLocalized("%e %B, %Y")}}
                                                @endif
                                            </td>
                                            <td class="text-center">
                                                {{$class->classStudents->count()}}
                                                / {{$class->getStudents() }}
                                            </td>
                                            <td class="text-center">
                                                @if($class->isBucharestLocated()) On-line @else Bucuresti @endif
                                            </td>
                                            <td class="text-center">
                                                <a class="btn btn-primary btn-xs"
                                                   href="vizualizare_curs.php?id={{$class->getId()}}">Cursanti</a>
                                            </td>
                                            <td class="text-center">

                                                <a class="btn btn-info btn-xs"
                                                   href="/class?id={{$class->getId()}}&id_main={{$mainClass->getId()}}">Editare</a>

                                            </td>
                                            <td class="text-center">
                                                <a class="btn btn-success btn-xs"
                                                   href="class?id={{$class->getId()}}&duplicat=1&id_main={{$mainClass->getId()}}">Duplicat</a>
                                            </td>
                                            <td class="text-center">
                                                <form action="" method="GET">
                                                    <button class="btn btn-danger btn-xs" onClick="confirmDelete()"
                                                            type="submit"/>
                                                    Sterge</button>
                                                    <input type="hidden" name="sterge"
                                                           value="{{$class->getId()}}"/>
                                                </form>
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif
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

<!-- Mainly scripts -->
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
    });
</script>
</body>
</html>