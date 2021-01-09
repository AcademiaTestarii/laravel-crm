@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">Te rugăm să completezi acest formular pentru a te înscrie la cursurile organizate de Academia Testării:</div>
                    <div class="panel-body">

                        <form class="form-horizontal" role="form" method="POST"
                              action="/catalog/student/class_signup">
                            @csrf

                            <input type="hidden" value="{{ $selectedMainClass->getId() }}" name='maiClassId'>
                            <input type="hidden" value="{{ $student->getId() }}" name='studentId'>

                            <div class="form-group">
                                <label for="last_name" class="col-md-4 control-label">Nume *</label>

                                <div class="col-md-6">
                                    <input id="last_name" type="text" class="form-control" name="last_name"
                                           value="{{ $student->getLastName() }}" autofocus required>
                                </div>

                                <label for="first_name" class="col-md-4 control-label">Prenume *</label>

                                <div class="col-md-6">
                                    <input id="first_name" type="text" class="form-control" name="first_name"
                                           value="{{ $student->getFirstName() }}" autofocus required>
                                </div>

                                <label for="email" class="col-md-4 control-label">Email *</label>

                                <div class="col-md-6">
                                    <input id="email" type="email" class="form-control" name="email"
                                           value="{{ $student->getEmail() }}" readonly required>
                                </div>

                                <div class="col-md-6">
                                    <label for="date_of_birth" class="col-md-4 control-label">Data nasterii</label>

                                    <input id="date_of_birth" type="date" class="form-control" name="date_of_birth"
                                           value="{{ $student->getDateOfBirth() }}">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-6">
                                    <label for="name" class="col-md-4 control-label">Adresa *</label>

                                    <input id="address" type="text" class="form-control" name="address"
                                           value="{{ $student->getAddress() }}" required>
                                </div>

                                <div class="col-md-6">
                                    <label for="city" class="col-md-4 control-label">Localitate *</label>

                                    <input id="city" type="text" class="form-control" name="city"
                                           value="{{ $student->getCity() }}" required>
                                </div>

                                <div class="col-md-6">
                                    <label for="county" class="col-md-4 control-label">Judet *</label>

                                    <input id="county" type="text" class="form-control" name="county"
                                           value="{{ $student->getCounty() }}" required>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="job_title" class="col-md-4 control-label">Profesie actuala</label>

                                <div class="col-md-6">
                                    <input id="job_title" type="text" class="form-control" name="job_title"
                                           value="{{ $student->getJob() }}" autofocus>
                                </div>

                                <label for="phone" class="col-md-4 control-label">Telefon *</label>

                                <div class="col-md-6">
                                    <input id="phone" type="text" class="form-control" name="phone"
                                           value="{{ $student->getPhone() }}" autofocus required>
                                </div>

                                <label for="education" class="col-md-4 control-label">Educatie</label>

                                <div class="col-md-6">
                                    <input id="education" type="text" class="form-control" name="education"
                                           value="{{ $student->getEducation() }}">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="english" class="col-md-4 control-label">Cunostinte limba engleza</label>

                                <div class="col-md-6">
                                    @if(!empty($student->english) )
                                        <div class="col-md-6">
                                            <input id="english" type="text" class="form-control" name="english"
                                                   value="{{ $student->getEnglish() }}">
                                        </div>
                                    @else
                                        <select name="english" class="form-control" id="english" selected>
                                            <option id="english" value="fără">-- fără --</option>
                                            <option id="english" value="Incepător">Incepător</option>
                                            <option id="english" value="Mediu">Mediu</option>
                                            <option id="english" value="Avansat">Avansat</option>
                                        </select>
                                    @endif
                                </div>

                                <label for="other_language"
                                       class="col-md-4 control-label">Cunostinte alta limba straina</label>

                                <div class="col-md-6">
                                    <div class="col-md-6">
                                        <input id="other_language" type="text" class="form-control"
                                               name="other_language"
                                               @if(!empty($student->getOtherLanguage()) )
                                               value="{{ $student->getOtherLanguage() }}"
                                               @else value=""
                                                @endif
                                        >

                                    </div>
                                </div>

                                <label for="ms_office" class="col-md-4 control-label">Cunostinte MS Office</label>

                                <div class="col-md-6">
                                    @if(!empty($student->getMsOffice()) )
                                        <div class="col-md-6">
                                            <input id="ms_office" type="text" class="form-control" name="ms_office"
                                                   value="{{ $student->getMsOffice() }}">
                                        </div>
                                    @else
                                        <select name="ms_office" class="form-control" id="ms_office" selected>
                                            <option value="fără">-- fără --</option>
                                            <option value="Incepător">Incepător</option>
                                            <option value="Mediu">Mediu</option>
                                            <option value="Avansat">Avansat</option>
                                        </select>
                                    @endif
                                </div>

                                <label for="web" class="col-md-4 control-label">Cunostinte web</label>

                                <div class="col-md-6">
                                    @if(!empty($student->getWeb()) )
                                        <div class="col-md-6">
                                            <input id="web" type="text" class="form-control" name="web"
                                                   value="{{ $student->getWeb() }}">
                                        </div>
                                    @else
                                        <select name="web" class="form-control" id="web" selected>
                                            <option value="fără">-- fără --</option>
                                            <option value="Incepător">Incepător</option>
                                            <option value="Mediu">Mediu</option>
                                            <option value="Avansat">Avansat</option>
                                        </select>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-6">
                                    <label for="class_id" class="col-md-4 control-label">Modulul dorit</label>
                                    <select class="form-control" name="classId" id="classId" selected>
                                        <optgroup label="{{ $selectedMainClass->getTitle() }}">
                                            @foreach($selectedMainClass->classes as $class )
                                                @if($class->getRegistrationStartDate() >= \Carbon\Carbon::now())
                                                    @if($student->isSignedUpToClass($class->getId()))
                                                        <option disabled
                                                                value="{{ $class->getId() }}">Deja inscris -{{ $class->getRegistrationStartDate()->toDateString() }} - {{ $class->getRegistrationEndDate()->toDateString() }}</option>
                                                    @else
                                                        <option value="{{ $class->getId() }}">{{ $class->getRegistrationStartDate()->toDateString() }} - {{ $class->getRegistrationEndDate()->toDateString() }}</option>
                                                    @endif
                                                @endif
                                            @endforeach
                                        </optgroup>
                                    </select>

                                </div>

                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="banca" name="payment_method"
                                           id="payment_method" checked="checked">
                                    <label class="form-check-label" for="payment_method">
                                        Virament bancar
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="payment_type" id="payment2"
                                           value="doua_rate">
                                    <label class="form-check-label" for="payment_type">2 rate</label>

                                    <input class="form-check-input" type="radio" name="payment_type" id="payment3"
                                           value="trei_rate">
                                    <label class="form-check-label" for="payment_type">3 rate</label>

                                    <input class="form-check-input" type="radio" name="payment_type" id="payment_full"
                                           value="integral">
                                    <label class="form-check-label" for="payment_type">Integral</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-12 col-md-12">
                                    <div class="form-check">
                                        <input class="form-check-input" id="termeni_site" type="checkbox"
                                               name="termeni_site" value="" required="">
                                        <label class="form-check-label"><a data-toggle="modal"
                                                                           data-target=".bs-example-modal-lg">Sunt de acord
                                                cu Termenii și Condițiile site-ului *</a></label>
                                    </div>
                                </div>
                                <div class="col-sm-12 col-md-12">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="conditii_minime" value=""
                                               required="">
                                        <label class="form-check-label">Am citit și îndeplinesc condițiile minime ale
                                            cursului *</label>
                                    </div>
                                </div>
                                <div class="col-sm-12 col-md-12">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="newsletter" value=""
                                        >
                                        <label class="form-check-label">Doresc sa primesc noutați prin email</label>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-8 col-md-offset-4">
                                    @if($student->isSignedUpToClass($class->getId()))
                                        <a href="/catalog" class="btn btn-primary">
                                            Inapoi la catalog
                                        </a>
                                    @else
                                        <button type="submit" class="btn btn-primary">
                                            Inscrie-te la curs
                                        </button>
                                    @endif
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
