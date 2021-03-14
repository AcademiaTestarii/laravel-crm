<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Academia Testarii CRM | Cursanti</title>
    <link href="{{asset('js/magnific-popup.css')}}" rel="stylesheet">
    <link href="{{asset('css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('font-awesome/css/font-awesome.css')}}" rel="stylesheet">
    <link href="{{asset('css/plugins/jQueryUI/jquery-ui.css')}}" rel="stylesheet">
    <link href="{{asset('css/plugins/iCheck/custom.css')}}" rel="stylesheet">

    <link href="{{asset('css/plugins/select2/select2.min.css')}}" rel="stylesheet">
    <!-- Toastr style -->
    <link href="{{asset('css/plugins/toastr/toastr.min.css')}}" rel="stylesheet">
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
            <div class="col-lg-10">
                <h2>Cursanti</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="/dashboard">Home</a>
                    </li>
                    <li class="active">
                        <strong>Cursanti</strong>
                    </li>
                </ol>
            </div>
            <div class="col-lg-2">

            </div>
        </div>
        <div class="wrapper wrapper-content  animated fadeInRight">
            <div class="row">
                <div class="col-sm-8">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h2>Cursanti</h2>
                            <p>Lista completa cursanti.</p>
                            <div class="clients-list">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#tab-1"><i class="fa fa-user"></i>
                                            Activi</a></li>
                                    <li class=""><a data-toggle="tab" href="#tab-2"><i class="fa fa-briefcase"></i>
                                            Arhiva</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div id="tab-1" class="tab-pane active"><br/>
                                        <div class="full-height-scroll">
                                            <div class="">
                                                <table class="table table-striped table-hover" id="cursanti">
                                                    <thead>
                                                    <tr>
                                                        <th>Nume / Prenume</th>
                                                        <th>Email</th>
                                                        <th>Telefon</th>
                                                        <th>Inregistrat</th>
                                                        <th class="text-center">Activ</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    @foreach($students as $activeStudent)
                                                        @if(!is_null($activeStudent->activity))
                                                            <tr>
                                                                <td><a data-toggle="tab"
                                                                       href="#contact-{{$activeStudent->getId()}}"
                                                                       id="{{$activeStudent->getId()}}"
                                                                       class="client-link">{{$activeStudent->getLastName()}} {{$activeStudent->getFirstName()}}</a>
                                                                </td>
                                                                <td>
                                                                    <i class="fa fa-envelope"> </i> {{$activeStudent->getEmail()}}
                                                                </td>
                                                                <td>{{$activeStudent->getPhone()}}</td>
                                                                <td>{{$activeStudent->getRegistrationDate()}}</td>
                                                                <td class="text-center">
                                                                    <span class="label label-primary">Activ</span>
                                                                </td>
                                                            </tr>
                                                        @endif
                                                    @endforeach
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>

                                    <div id="tab-2" class="tab-pane"><br/>
                                        <div class="full-height-scroll">
                                            <div class="">
                                                <table class="table table-striped table-hover" id="cursanti2">
                                                    <thead>
                                                    <tr>
                                                        <th>Nume / Prenume</th>
                                                        <th>Email</th>
                                                        <th>Telefon</th>
                                                        <th>Inregistrat</th>
                                                        <th class="text-center">Activ</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    @foreach($students as $inactiveStudent)
                                                        @if(is_null($inactiveStudent->activity))
                                                            <tr>
                                                                <td><a data-toggle="tab"
                                                                       href="#contact-{{$inactiveStudent->getId()}}"
                                                                       id="{{$inactiveStudent->getId()}}"
                                                                       class="client-link">{{$inactiveStudent->getLastName()}} {{$inactiveStudent->getFirstName()}}</a>
                                                                </td>
                                                                <td>
                                                                    <i class="fa fa-envelope"> </i> {{$inactiveStudent->getEmail()}}
                                                                </td>
                                                                <td>{{$inactiveStudent->getPhone()}}</td>
                                                                <td>{{$inactiveStudent->getRegistrationDate()}}</td>
                                                                <td class="text-center">
                                                                    <span class="label label-danger">Inactiv</span>
                                                                </td>
                                                            </tr>
                                                        @endif
                                                    @endforeach
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
                <div class="col-sm-4">
                    <div class="ibox ">
                    </div>
                </div>
            </div>
        </div>
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
<!-- DataTables -->
<script src="{{asset('js/plugins/dataTables/datatables.min.js')}}"></script>
<script>
    $(function () {
        $('#cursanti').DataTable({
            "order": [[3, "desc"]]
        });
        $('#cursanti2').DataTable({
            "order": [[3, "desc"]]
        });
    });
</script>
<!-- Custom and plugin javascript -->
<script src="{{asset('js/inspinia.js')}}"></script>
<script src="{{asset('js/plugins/pace/pace.min.js')}}"></script>
<!-- Magnific Popup core JS file -->
<script src="{{asset('js/jquery.magnific-popup.js')}}"></script>
<script>
    $('.ajax-popup-link').magnificPopup({
        type: 'ajax'
    });
</script>
<script>
    $('.client-link').click(function () {
        var studentId = this.id;

        $.ajax({
            url:"/students_list/"+studentId,
            type:'GET',
            success: function(data){
                $('.col-sm-4').html(data);
            }
        });
    });
</script>
</body>
</html>
