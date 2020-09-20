<?php
/*include("../__connect.php");
$page = "parteneri";
$today = getdate();

if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $id=$_GET['id'];
    $sql=mysqli_query($link,"SELECT * FROM `parteneri` WHERE `id_parteneri`=".$id);
    if (mysqli_num_rows($sql)>0) {
        // edit
        $row=mysqli_fetch_array($sql);
        $submit="edit";
        $pagetitle="Modifica parteneri";
    } else {
        header ("Location: parteneri.php");
    }
    $new=FALSE;
} else {
// add
    $new=TRUE;
    $submit="addnew";
    $pagetitle="Addauga parteneri";
}*/

/* Remove image */
/*if (isset($_GET['removeimage'])) {
    $removeimage = $_GET['removeimage'];
    $picsql = mysqli_query($link,"SELECT * FROM `parteneri` WHERE `id_parteneri`=".$removeimage);
    $pic=mysqli_fetch_array($picsql);
    unlink(dirname( __FILE__ )."/../images/parteneri/".$pic['logo_parteneri']);
    mysqli_query($link,"UPDATE `parteneri` SET `logo_parteneri`=NULL WHERE `id_parteneri`=".$removeimage);
    header ("Location: partener.php?id=".$removeimage);
}*/

/* Edit */
/*if (isset($_POST['edit'])) {
    mysqli_query($link,"UPDATE `parteneri` SET
`nume_parteneri`='".$_POST['nume_parteneri']."',
`link_parteneri`='".$_POST['link_parteneri']."',
`descriere_parteneri`='".trim(mysqli_real_escape_string($link,$_POST['descriere_parteneri']))."'
WHERE `id_parteneri`=".$_POST['id2update']);

    if ($_FILES['image']!="") {
        include('class.upload/class.upload.php');
        $handle = new upload($_FILES['image']);
        if ($handle->uploaded) {
            $handle->image_resize			= true;
            $handle->image_y				= 60;
            $handle->image_ratio_x			= true;
            // path
            $handle->process(dirname( __FILE__ )."/../images/parteneri/");
            $img_name = $handle->file_dst_name;
            if ($handle->processed) {
                mysqli_query($link,"UPDATE `parteneri` SET `logo_parteneri`='".$img_name."' WHERE `id_parteneri`=".$_POST['id2update']);
                $handle->clean();
            } else {
                echo "Process Error: Something went wrong: ".$handle->error;
                $handle->clean();
            }
        } else {
            echo "File Error: Something went wrong: ".$handle->error;
            $handle->clean();
        }
    } // end image upload
    header ("Location: parteneri.php");
}*/

/* Add new */
/*if (isset($_POST['addnew'])) {
    mysqli_query($link,"INSERT INTO `parteneri` (`nume_parteneri`,`link_parteneri`,`descriere_parteneri`) VALUES ('".$_POST['nume_parteneri']."','".$_POST['link_parteneri']."','".trim(mysqli_real_escape_string($link,$_POST['descriere_parteneri']))."')");
    $last_id = mysqli_insert_id($link);

    if ($_FILES['image']!="") {
        include('class.upload/class.upload.php');
        $handle = new upload($_FILES['image']);
        if ($handle->uploaded) {
            $handle->image_resize			= true;
            $handle->image_y				= 60;
            $handle->image_ratio_x			= true;
            // path
            $handle->process(dirname( __FILE__ )."/../images/parteneri/");
            $img_name = $handle->file_dst_name;
            if ($handle->processed) {
                mysqli_query($link,"UPDATE `parteneri` SET `logo_parteneri`='".$img_name."' WHERE `id_parteneri`=".$last_id);
                $handle->clean();
            } else {
                echo "Process Error: Something went wrong: ".$handle->error;
                $handle->clean();
            }
        } else {
            echo "File Error: Something went wrong: ".$handle->error;
            $handle->clean();
        }
    } // end image upload
    header ("Location: parteneri.php");
}*/
?>
        <!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Academia Testarii CRM | {{$pageTitle}}</title>

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
                <h2>{{$pageTitle}}</h2>
                <ol class="breadcrumb">
                    <li><a href="/dashboard">Home</a></li>
                    <li class="active"><a href="/partners_list"><strong>Parteneri</strong></a></li>
                </ol>
            </div>
            <div class="col-sm-4">
                <div class="title-action">
                    <a class="btn btn-primary" href="/partner">Adauga parteneri</a>
                </div>
            </div>
        </div>

        <!-- Main content -->
        <section class="wrapper wrapper-content">

            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>{{$pageTitle}}<small></small></h5>
                </div>
                <div class="ibox-content">

                    <form id="form" method="post" class="form-horizontal" action="" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Nume<br/></label>
                            <div class="col-sm-10">
                                <input value="@if($partner) {{$partner->getName()}} @endif" name="name" type="text"
                                       class="form-control" required="required">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Link: (http:// sau https:// in fata)<br/></label>
                            <div class="col-sm-10">
                                <input value="@if($partner) {{$partner->getUrl()}} @endif" name="url" type="text"
                                       class="form-control" required="required">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Descriere:<br/><small>informatii despre parteneri
                                    (daca sunt)</small></label>
                            <div class="col-sm-10">
						<textarea id="text" name="description" class="summernote">
							@if($partner) {!! $partner->getDescription() !!} @endif
                        </textarea>
                            </div>
                        </div>

                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Logo parteneri:</label>
                            <div class="col-sm-10">
                                @if($partner && $partner->getLogo())
                                <p class="help-block"><img src="{{$partner->getLogo()}}"/></p>
                                <a class="btn btn-primary btn-sm"
                                   href="/partner/removeimage?id={{$partner->getId()}}"><i
                                            class="glyphicon glyphicon-trash"></i> &nbsp Sterge logo</a>
                                @else
                                <label for="poza">Logo <small>(va fi redimensionat automat)</small></label><br/>
                                <div class="inputBtnSection">
                                    <input id="uploadFile" class="disableInputField" placeholder="Selecteaza o imagine"
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
                                <input type="hidden" name="id2update" value="@if($partner) {{$partner->getId()}} @endif"/>
                                <button class="btn btn-primary" type="submit" name="<?php /*echo $submit;*/?>">Salveaza
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
        CKEDITOR.replace('text')
    })
</script>

</body>

</html>