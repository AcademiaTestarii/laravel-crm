@if($feedback)
        <!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback participare
        pentru {{$feedback->student->getLastName()}} {{$feedback->student->getFirstName()}}</title>
    <base href="<?php echo $_SERVER['HTTP_HOST'];?>">
    <!-- Favicons -->
    <link rel="apple-touch-icon" sizes="57x57" href="favicon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="favicon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="favicon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="favicon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="favicon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="favicon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="favicon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="favicon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="favicon/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="favicon/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="favicon/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="favicon/favicon-16x16.png">
    <link rel="manifest" href="favicon/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="favicon/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">

    <!-- Stylesheet -->
    <link href="{{asset('css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('css/jquery-ui.css')}}" rel="stylesheet">

    <link href="{{asset('css/animate.css')}}" rel="stylesheet">
    <link href="{{asset('css/css-plugin-collections.css')}}" rel="stylesheet">
    <!-- Academia Testarii CSS | Style css -->
    <link href="{{asset('css/style.css')}}" rel="stylesheet">
    <!-- CSS | Academia Testarii -->
    <link href="{{asset('css/colors/academia-testarii.css')}}" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Fondamento&display=swap" rel="stylesheet">
    <script type='application/ld+json'>
        {"@context":"https://schema.org","@type":"Organization","url":"https://www.academiatestarii.ro/","sameAs":["https://www.facebook.com/academiatestarii/","https://www.linkedin.com/company/18151104/"],"@id":"https://www.academiatestarii.ro/#organization","name":"Academia Testarii","logo":"https://www.academiatestarii.ro/images/logo-academia-testarii.png"}
    </script>

    <!-- Facebook Pixel Code -->
    <script>
        !function (f, b, e, v, n, t, s) {
            if (f.fbq) return;
            n = f.fbq = function () {
                n.callMethod ?
                    n.callMethod.apply(n, arguments) : n.queue.push(arguments)
            };
            if (!f._fbq) f._fbq = n;
            n.push = n;
            n.loaded = !0;
            n.version = '2.0';
            n.queue = [];
            t = b.createElement(e);
            t.async = !0;
            t.src = v;
            s = b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t, s)
        }(window, document, 'script',
            'https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '347879355772596');
        fbq('track', 'PageView');
    </script>
    <noscript>
        <img height="1" width="1"
             src="https://www.facebook.com/tr?id=347879355772596&ev=PageView
&noscript=1"/>
    </noscript>
    <!-- End Facebook Pixel Code -->
</head>
<body class="wrapper-feedback">
<br/>
<div id="wrapper" class="container">
    <div class="main-content">
        <div class="row">
            <div class="col-md-12">

                <div class="panel panel-success">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-4">
                                <img src="<?php echo $_SERVER['HTTP_HOST'];?>/images/logo-academia-testarii.png" alt="Logo AT"/>
                            </div>
                            <div class="col-md-8 text-center text-feedback">
                                <strong>Feedback curs:</strong> {{$feedback->class->mainClass->getTitle()}}<br/>
                                <strong>Student:</strong> {{$feedback->student->getLastName()}} {{$feedback->student->getFirstName()}}
                                <br/>
                                <strong>Perioada
                                    curs:</strong>
                                {{ $feedback->class->getRegistrationStartDate()->formatLocalized("%e %B, %Y")}}
                                - {{ $feedback->class->getRegistrationEndDate()->formatLocalized("%e %B, %Y")}}<br/>
                                <strong>Trainer:</strong> {{$feedback->class->classTrainer->trainer->getName()}}<br/>
                                <strong>Scor general:</strong> {{$feedback->getScore()}}%
                            </div>
                        </div>
                    </div>

                    <div class="parte">
                        <div class="row m-sm" style="padding:15px;">
                            <div class="col-md-12 text-center"><h3>Organizare Jira & Zephyr</h3></div>
                            <div class="bg-muted">
                                <div class="col-md-6 text-left"><h4>Good points</h4>
                                    <p>{{$feedback->getOrganizationJiraZephyrPlus()}}</p></div>
                                <div class="col-md-6 text-right"><h4>To improve</h4>
                                    <p>{{$feedback->getOrganizationJiraZephyrMinus()}}</p></div>
                            </div>
                        </div>
                    </div>

                    <div class="parte">
                        <div class="row m-sm" style="padding:15px;">
                            <div class="col-md-12 text-center"><h3>Test cases</h3></div>
                            <div class="bg-muted">
                                <div class="col-md-6 text-left"><h4>Good points</h4>
                                    <p>{{$feedback->getTestCasesPlus()}}</p></div>
                                <div class="col-md-6 text-right"><h4>To improve</h4>
                                    <p>{{$feedback->getTestCasesMinus()}}</p></div>
                            </div>
                        </div>
                    </div>

                    <div class="parte">
                        <div class="row m-sm" style="padding:15px;">
                            <div class="col-md-12 text-center"><h3>Defects</h3></div>
                            <div class="bg-muted">
                                <div class="col-md-6 text-left"><h4>Good points</h4>
                                    <p>{{$feedback->getDefectsPlus()}}</p></div>
                                <div class="col-md-6 text-right"><h4>To improve</h4>
                                    <p>{{$feedback->getDefectsMinus()}}</p></div>
                            </div>
                        </div>
                    </div>

                    <div class="parte">
                        <div class="row m-sm" style="padding:15px;">
                            <div class="col-md-12 text-center"><h3>Traceability</h3></div>
                            <div class="bg-muted">
                                <div class="col-md-6 text-left"><h4>Good points</h4>
                                    <p>{{$feedback->getTraceabilityPlus()}}</p></div>
                                <div class="col-md-6 text-right"><h4>To improve</h4>
                                    <p>{{$feedback->getTraceabilityMinus()}}</p></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="wrapper" class="container text-center">
    <br/>
    <a class="btn btn-colored btn-block btn-theme-colored2 text-white btn-lg btn-flat"
       href="/certificate/{{$feedback->getLink()}}">Certificat absolvire</a>
    <br/><br/>
</div>
<br/><br/>
@include('include/tracking')
</body>
</html>
@endif
