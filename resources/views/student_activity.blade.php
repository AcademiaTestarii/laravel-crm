<div class="ibox ">
    <div class="ibox-content">
        <div class="tab-content">
            <div id="contact-{{$student->getId()}}"
                 class="tab-pane active">
                <div class="row m-b-lg">
                    <div class="col-lg-12">
                        <h2>{{$student->getLastName()}} {{$student->getFirstName()}}</h2>
                    </div>
                </div>
                <div class="client-detail">
                    <div class="full-height-scroll">

                        <strong>Activitate recenta</strong>

                        <ul class="list-group clear-list">
                            <li class="list-group-item">
                                <span class="pull-right"> {{$student->getRegistrationDate()->formatLocalized("%e %B, %Y la ora %H:%M:%S")}} </span>
                                Inregistrare pe platforma AT+
                            </li>
                            <li class="list-group-item">
                                                        <span class="pull-right">
                                                            @if(!is_null($student->getActivity()))
                                                                {{$student->getActivity()->formatLocalized("%e %B, %Y la ora %H:%M:%S")}}
                                                            @else
                                                                Niciodata
                                                            @endif
                                                        </span>
                                Ultima logare pe platforma AT+
                            </li>
                        </ul>

                        <div class="well well-sm">
                            <h3>Date personale</h3>
                            <div class="row">
                                <div class="col-md-6">
                                    <strong>Adresa:</strong> {{$student->getAddress()}}
                                </div>
                                <div class="col-md-6">
                                    <strong>Localitate:</strong> {{$student->getCity()}}
                                </div>
                                <div class="col-md-6">
                                    <strong>Judet:</strong> {{$student->getCounty()}}
                                </div>
                                <div class="col-md-6">
                                    <strong>Profesie:</strong> {{$student->getJob()}}
                                </div>
                                <div class="col-md-12"><strong>Data
                                        nastere:</strong> {{$student->getDateOfBirth()}}
                                </div>
                                <div class="col-md-12">
                                    <hr/>
                                </div>
                                <div class="col-md-4">
                                    <strong>Educatie:</strong> {{$student->getEducation()}}
                                </div>
                                <div class="col-md-4">
                                    <strong>Engleza:</strong> {{$student->getEnglish()}}
                                </div>
                                <div class="col-md-4"><strong>Alta
                                        limba:</strong> {{$student->getOtherLanguage()}}
                                </div>
                                <div class="col-md-4"><strong>MS
                                        Office:</strong> {{$student->getMsOffice()}}
                                </div>
                                <div class="col-md-4">
                                    <strong>Web:</strong> {{$student->getWeb()}}
                                </div>
                            </div>
                        </div>

                        <div class="well well-sm">
                            <h3>Cursuri</h3>
                            @if($student->classStudents->isNotEmpty())
                                @foreach($student->classStudents as $classStudent)
                                    <p><i class="fa fa-angle-double-right"></i>
                                        @if($classStudent->classes)
                                            <a href="/class_details/{{$classStudent->getClassId()}}">
                                                <strong>{{$classStudent->classes->mainClass->getTitle()}}
                                                    :
                                                    {{$classStudent->classes->getTitle()}}</strong></a>
                                        @endif
                                    </p>
                                @endforeach
                            @else
                                <p>Nu este inregistrat la nici un curs.</p>
                            @endif
                        </div>

                        <div class="well well-sm">
                            <h3>Calificative</h4>
                                @if($student->feedbacks->isNotEmpty())
                                    @foreach($student->feedbacks as $feedback)
                                        <p><i class="fa fa-angle-double-right"></i>
                                            @if($feedback->class)
                                                <a href="/feedback/{{$feedback->getId()}}"
                                                   target="_blank">{{$feedback->class->mainClass->getTitle()}}
                                                    : {{$feedback->class->getTitle()}} <i
                                                            class="fa fa-arrow-circle-right"></i>
                                                </a>
                                            @endif
                                        </p>
                                    @endforeach
                                @else
                                    <p>Nu are calificative acordate.</p>
                            @endif
                        </div>
                        <div class="well well-sm">
                            <h3>Notite</h4>
                                @if($student->classStudents->isNotEmpty())
                                    <?php
                                    $count = 0;
                                    ?>
                                    @foreach($student->classStudents as $classStudent)
                                        @if($classStudent->getNote())
                                            @if($classStudent->classes)
                                                <strong>{{$classStudent->classes->mainClass->getTitle()}}
                                                    : {{$classStudent->classes->getTitle()}}</strong>
                                            @endif
                                            <p>
                                                <i class="fa fa-angle-double-right"></i> {{$classStudent->getNote()}}
                                            </p><br/>
                                            <?php
                                            $count++;
                                            ?>
                                        @endif
                                    @endforeach
                                    @if($count==0)
                                        <p>Nu are notite.</p>
                                    @endif
                                @else
                                    <p>Nu are notite.</p>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
