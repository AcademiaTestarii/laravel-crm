<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Academia Testarii CRM | Blog </title>

    <link href="{{asset('css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('font-awesome/css/font-awesome.css')}}" rel="stylesheet">

    <!-- Toastr style -->
    <link href="{{asset('css/plugins/toastr/toastr.min.css')}}" rel="stylesheet">
    <link href="{{asset('css/plugins/summernote/summernote.css')}}" rel="stylesheet">
    <link href="{{asset('css/plugins/summernote/summernote-bs3.css')}}" rel="stylesheet">
    <link href="{{asset('css/plugins/jQueryUI/jquery-ui.css')}}" rel="stylesheet">

    <link href="{{asset('js/plugins/Multiple-Dates-Picker-for-jQuery-UI-latest/jquery-ui.multidatespicker.css')}}"
          rel="stylesheet">
    <link href="{{asset('css/plugins/daterangepicker/daterangepicker-bs3.css')}}" rel="stylesheet">
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
                <h2>Blog</h2>
                <ol class="breadcrumb">
                    <li><a href="/dashboard">Home</a></li>
                    <li class="active"><a href="/blog_list"><strong>Blog</strong></a></li>
                </ol>
            </div>
            <div class="col-sm-4">
                <div class="title-action">
                    <a class="btn btn-primary" href="/blog">Adauga</a>
                </div>
            </div>
        </div>

        <!-- Main content -->
        <section class="content container-fluid">

            <div class="ibox float-e-margins">
                <div class="ibox-content">
                    <table id="example1" class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>Titlu</th>
                            <th>Data</th>
                            <th class="text-center">Activ</th>
                            <th class="text-center">Sterge</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($blogNews as $blog)
                            <tr>
                                <td>
                                    <a href="/blog?id={{$blog->getId()}}">{{$blog->getTitle()}}</a>
                                </td>
                                <td>{{$blog->getDate()}}</td>
                                <td class="text-center">
                                    <form action="" method="GET">
                                        <input type="checkbox" @if($blog->isActive()) checked @endif name="activ"
                                               onChange="this.form.submit()"/>
                                        <input type="hidden" name="state"
                                               value="{{$blog->getId()}}"/>
                                        <input type="hidden" name="value"
                                               value="{{$blog->getActive()}}"/>
                                        <input type="hidden" name="id"
                                               value="{{$blog->getId()}}"/>
                                    </form>
                                </td>
                                <td class="text-center">
                                    <form action="" method="GET">
                                        <button class="btn btn-danger btn-xs" onClick="confirmDelete()" type="submit"/>
                                        Sterge</button>
                                        <input type="hidden" name="delete" value="{{$blog->getId()}}"/>
                                    </form>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
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
<!-- DataTables -->
<script src="{{asset('js/plugins/dataTables/datatables.min.js')}}"></script>
<script>
    $(function () {
        $('#example1').DataTable({
            "order": [[1, "desc"]]
        });
    });
</script>

</body>
</html>