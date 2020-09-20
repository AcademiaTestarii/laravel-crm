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
                <div class="ibox-title">
                    <h5>Blog<small></small></h5>
                </div>
                <div class="ibox-content">

                    <!-- Custom Tabs -->
                    <div class="nav-tabs-custom">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab_1" data-toggle="tab">Detalii si text</a></li>
                            <li><a href="#tab_2" data-toggle="tab">Imagini</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tab_1">
                                <!-- Form start -->
                                <form role="form" method="POST" accept-charset="UTF-8">
                                    @csrf
                                    <div class="box box-primary">
                                        <div class="box-body">
                                            <div class="row">
                                                <div class="checkbox col-md-12">
                                                    <label>
                                                        <input name="is_active"
                                                               type="checkbox"
                                                        @if($blog->isActive()) checked @endif /> Activ
                                                    </label>&nbsp;&nbsp;&nbsp;&nbsp;
                                                </div>

                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label for="titlu">Titlu</label></small>
                                                        <input type="text" name="title" class="form-control" id="titlu"
                                                               value="{{$blog->getTitle()}}">
                                                    </div>
                                                </div>

                                                <div class="form-group" id="data_1">
                                                    <label class="font-noraml">Data</label>
                                                    <div class="input-group date">
                                                        <span class="input-group-addon"><i
                                                                    class="fa fa-calendar"></i></span>
                                                        <input type="text"
                                                               class="form-control"
                                                               name="date"
                                                               value="{{$blog->getDate()->formatLocalized('%m/%d/%Y')}}">
                                                    </div>
                                                </div>
                                            </div><!-- /.row -->

                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label>Cuvinte cheie <small>(despartite de
                                                                virgula)</small></label>
                                                        <input type="text" class="form-control" name="keywords"
                                                               id="singleFieldTags2"
                                                               value="{{$blog->getKeywords()}}"/>
                                                    </div>
                                                </div>

                                            </div><!-- /.row -->

                                        </div><!-- /.box-body -->
                                    </div><!-- /.box-primary -->

                                    <div class="box box-info">
                                        <div class="box-header">
                                            <h3 class="box-title">Text</small>
                                            </h3>
                                        </div><!-- /.box-header -->
                                        <div class="box-body pad">
                                            <textarea id="text" name="short_description" rows="5" cols="80"
                                                      class="summernote">{!! $blog->getText() !!}</textarea>
                                        </div>
                                    </div><!-- /.box-info -->

                                    <div class="box-footer">
                                        <button type="submit" name="modifica" value="modifica" class="btn btn-primary">
                                            Modifica
                                        </button>
                                    </div>
                                </form>
                                <!-- Form end -->
                            </div>
                            <!-- /.tab-pane -->

                            <div class="tab-pane" id="tab_2">
                                <div id="dropzone">
                                    <form action="upload_images_blog.php?id={{$blog->getId()}}" class="dropzone"
                                          id="noutati_dropzone">
                                        <div class="dz-message">Trage fisierele aici sau click pentru upload.<br> <span
                                                    class="note">(Se pot selecta multiple fisiere si la drag si la upload)</span>
                                        </div>

                                    </form>
                                </div>
                                <?php /*$select_images_query = "SELECT * FROM `imagini_noutati` WHERE `id_noutate` = " . $id;

                                $select_images = mysqli_query($link, $select_images_query);
                                if ($select_images->num_rows != 0) {*/ ?>
                                <hr/>
                                <form method="post" action="sterge_imagini_blog.php?id={{$blog->getId()}}">
                                    <div class="row">
                                        <?php/* while ($image = mysqli_fetch_assoc($select_images)) {*/ ?>

                                        <div class="col-md-2 pb-30">
                                            <input type="checkbox" name="galerie[]"
                                                   value="<?php/* echo $image['id_imagine']; */?>"/> Sterge
                                            <img class="img-responsive thumbnail"
                                                 src="../images/blog/<?php /*echo $image['imagine'];*/ ?>">
                                            <input type="radio" name="imagine_principala"
                                                   value="<?php /*echo $image['id_imagine']; */?>" <?php /*if ($image['imagine_principala'] == 1) echo "checked"; */?>>
                                            Imagine principala
                                        </div>

                                        <?php //} ?>
                                        <div class="col-md-12">
                                            <button class="btn btn-block btn-danger" type="submit"
                                                    name="sterge_galerie">Sterge imaginile selectate / Modifica
                                                imaginea principala
                                            </button>
                                        </div>
                                    </div>
                                </form>
                                <?php// } ?>
                            </div>
                            <!-- /.tab-pane -->
                        </div>
                        <!-- /.tab-content -->
                    </div>
                    <!-- nav-tabs-custom -->
                </div><!-- /.col-md-12 -->

            </div><!-- /.row -->

        </section><!-- /.container-frluid -->
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
<!-- Data picker -->
<script src="{{asset('js/plugins/datapicker/bootstrap-datepicker.js')}}"></script>
<!-- Custom and plugin javascript -->
<script src="{{asset('js/inspinia.js')}}"></script>
<script src="{{asset('js/plugins/pace/pace.min.js')}}"></script>

<!-- Dropzone -->
<script src="{{asset('js/plugins/dropzone/dropzone.js')}}"></script>
<link href="{{asset('css/plugins/dropzone/dropzone.css')}}" rel="stylesheet">

<!-- CK Editor 4 -->
<script src="{{asset('js/plugins/ckeditor/ckeditor.js')}}"></script>
<script>
    $(function () {
        // Replace the <textareas> with a CKEditor instance.
        CKEDITOR.replace('text')
    })
</script>

<!-- Tagit script -->
<link href="{{asset('js/plugins/tagit/jquery.tagit.css')}}" rel="stylesheet">
<link href="{{asset('js/plugins/tagit/tagit.ui-zendesk.css')}}" rel="stylesheet">
<script src="{{asset('js/plugins/tagit/tag-it.js')}}"></script>
<script>

    Dropzone.options.noutatiDropzone = {
        resizeWidth: 1200
    };

    $('#data_1 .input-group.date').datepicker({
        todayBtn: "linked",
        keyboardNavigation: false,
        forceParse: false,
        calendarWeeks: false,
        autoclose: true
    });

    $(function () {
        var sampleTags = [<?php /*echo $metakeyList;*/?>];

        //-------------------------------
        // Minimal
        //-------------------------------
        $('#myTags').tagit();

        //-------------------------------
        // Single field
        //-------------------------------
        $('#singleFieldTags').tagit({
            availableTags: sampleTags,
            // This will make Tag-it submit a single form value, as a comma-delimited field.
            singleField: true,
            singleFieldNode: $('#mySingleField')
        });

        // singleFieldTags2 is an INPUT element, rather than a UL as in the other
        // examples, so it automatically defaults to singleField.
        $('#singleFieldTags2').tagit({
            availableTags: sampleTags,
            allowSpaces: true
        });

        //-------------------------------
        // Preloading data in markup
        //-------------------------------
        $('#myULTags').tagit({
            availableTags: sampleTags, // this param is of course optional. it's for autocomplete.
            // configure the name of the input field (will be submitted with form), default: item[tags]
            itemName: 'item',
            fieldName: 'tags'
        });

        //-------------------------------
        // Tag events
        //-------------------------------
        var eventTags = $('#eventTags');

        var addEvent = function (text) {
            $('#events_container').append(text + '<br>');
        };

        eventTags.tagit({
            availableTags: sampleTags,
            beforeTagAdded: function (evt, ui) {
                if (!ui.duringInitialization) {
                    addEvent('beforeTagAdded: ' + eventTags.tagit('tagLabel', ui.tag));
                }
            },
            afterTagAdded: function (evt, ui) {
                if (!ui.duringInitialization) {
                    addEvent('afterTagAdded: ' + eventTags.tagit('tagLabel', ui.tag));
                }
            },
            beforeTagRemoved: function (evt, ui) {
                addEvent('beforeTagRemoved: ' + eventTags.tagit('tagLabel', ui.tag));
            },
            afterTagRemoved: function (evt, ui) {
                addEvent('afterTagRemoved: ' + eventTags.tagit('tagLabel', ui.tag));
            },
            onTagClicked: function (evt, ui) {
                addEvent('onTagClicked: ' + eventTags.tagit('tagLabel', ui.tag));
            },
            onTagExists: function (evt, ui) {
                addEvent('onTagExists: ' + eventTags.tagit('tagLabel', ui.existingTag));
            }
        });

        //-------------------------------
        // Read-only
        //-------------------------------
        $('#readOnlyTags').tagit({
            readOnly: true
        });

        //-------------------------------
        // Tag-it methods
        //-------------------------------
        $('#methodTags').tagit({
            availableTags: sampleTags
        });

        //-------------------------------
        // Allow spaces without quotes.
        //-------------------------------
        $('#allowSpacesTags').tagit({
            availableTags: sampleTags,
            allowSpaces: true
        });

        //-------------------------------
        // Remove confirmation
        //-------------------------------
        $('#removeConfirmationTags').tagit({
            availableTags: sampleTags,
            removeConfirmation: true
        });

    });
</script>
</body>
</html>