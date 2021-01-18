@extends('layouts.app')
@section('content')
<div class="container">
  <div class="row">
    <div class="col-md-8 col-md-offset-2">
      <div class="panel panel-default">
        <div class="panel-heading">Te rugăm să completezi acest formular pentru a te înscrie la cursurile organizate de Academia Testării:</div>
        <div class="panel-body">

          @if ($errors->any())
          <div class="alert alert-danger">
            <ul>
              @foreach ($errors->all() as $error)
              <li>{{ $error }}</li>
              @endforeach
            </ul>
          </div>
          @endif

          <form class="form-horizontal" role="form" method="POST" action="/catalog/student/class_signup">
            @csrf

            <input type="hidden" value="{{ $selectedMainClass->getId() }}" name='mainClassId'>
            <input type="hidden" value="{{ $student->getId() }}" name='studentId'>

            <div>
              <div class="row entry-content">
                <div class="col-sm-12 col-md-3">
                  <div class="form-group">
                    <label for="last_name" class="control-label">Nume *</label>
                    <input id="last_name" type="text" class="form-control" name="last_name" value="{{ $student->getLastName() }}" autofocus>
                  </div>
                </div>
                <div class="col-sm-12 col-md-3">
                  <div class="form-group">
                    <label for="first_name" class="control-label">Prenume *</label>
                    <input id="first_name" type="text" class="form-control" name="first_name" value="{{ $student->getFirstName() }}">
                  </div>
                </div>
                <div class="col-sm-12 col-md-3">
                  <div class="form-group">
                    <label for="email" class="control-label">Email *</label>
                    <input id="email" type="email" class="form-control" name="email" value="{{ $student->getEmail() }}" readonly>
                  </div>
                </div>
                <div class="col-sm-12 col-md-3">
                  <div class="form-group">
                    <label for="date_of_birth" class="control-label">Data nasterii*</label>
                    <input id="date_of_birth" type="date" class="form-control" name="date_of_birth" value="{{ $student->getDateOfBirth() }}">
                  </div>
                </div>
              </div>
            </div>
            <div class="row entry-content">
              <div class="col-sm-12 col-md-4">
                <div class="form-group">
                  <label for="address" class="control-label">Adresa *</label>
                  <input id="address" type="text" class="form-control" name="address" value="{{ $student->getAddress() }}">
                </div>
              </div>
              <div class="col-sm-12 col-md-4">
                <div class="form-group">
                  <label for="city" class="control-label">Localitate *</label>
                  <input id="city" type="text" class="form-control" name="city" value="{{ $student->getCity() }}">
                </div>
              </div>
              <div class="col-sm-12 col-md-4">
                <div class="form-group">
                  <label for="county" class="control-label">Judet *</label>
                  <input id="county" type="text" class="form-control" name="county" value="{{ $student->getCounty() }}">
                </div>
              </div>
            </div>
            <hr />
            <div class="row entry-content">
              <div class="col-sm-12 col-md-4">
                <div class="form-group">
                  <label for="job_title" class="control-label">Profesie actuala</label>
                  <input id="job_title" type="text" class="form-control" name="job_title" value="{{ $student->getJob() }}">
                </div>
              </div>
              <div class="col-sm-12 col-md-4">
                <div class="form-group">
                  <label for="phone" class="control-label">Telefon *</label>
                  <input id="phone" type="text" class="form-control" name="phone" value="{{ $student->getPhone() }}">
                </div>
              </div>
              <div class="col-sm-12 col-md-4">
                <div class="form-group">
                  <label for="phone" class="control-label">Educatie</label>
                  <input id="education" type="text" class="form-control" name="education" value="{{ $student->getEducation() }}">
                </div>
              </div>
            </div>
            <hr />
            <div class="row entry-content">
              <div class="col-sm-12 col-md-3">
                <div class="form-group">
                  <label for="english" class="control-label">Cunostinte limba engleza</label>
                  @if(!empty($student->english) )
                  <input id="english" type="text" class="form-control" name="english" value="{{ $student->getEnglish() }}">
                  @else
                  <select name="english" class="form-control" id="english" selected>
                    <option id="english" value="fără">-- fără --</option>
                    <option id="english" value="Incepător">Incepător</option>
                    <option id="english" value="Mediu">Mediu</option>
                    <option id="english" value="Avansat">Avansat</option>
                  </select>
                  @endif
                </div>
              </div>
              <div class="col-sm-12 col-md-3">
                <div class="form-group">
                  <label for="other_language" class="control-label">Cunostinte alta limba straina</label>
                  <input id="other_language" type="text" class="form-control" name="other_language" @if(!empty($student->getOtherLanguage()) )
                  value="{{ $student->getOtherLanguage() }}"
                  @else value=""
                  @endif
                  >
                </div>
              </div>
              <div class="col-sm-12 col-md-3">
                <div class="form-group">
                  <label for="ms_office" class="control-label">Cunostinte MS Office</label>
                  @if(!empty($student->getMsOffice()) )
                  <input id="ms_office" type="text" class="form-control" name="ms_office" value="{{ $student->getMsOffice() }}">
                  @else
                  <select name="ms_office" class="form-control" id="ms_office" selected>
                    <option value="fără">-- fără --</option>
                    <option value="Incepător">Incepător</option>
                    <option value="Mediu">Mediu</option>
                    <option value="Avansat">Avansat</option>
                  </select>
                  @endif
                </div>
              </div>
              <div class="col-sm-12 col-md-3">
                <div class="form-group">
                  <label for="web" class="control-label">Cunostinte web</label>
                  @if(!empty($student->getWeb()) )
                  <input id="web" type="text" class="form-control" name="web" value="{{ $student->getWeb() }}">
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
            </div>
            <hr />

            <div class="row entry-content">
              <div class="col-sm-12 col-md-6">
                <div class="form-group">
                  <label for="class_id" class="control-label">Modulul dorit</label>
                  <select class="form-control" name="classId" id="classes" selected>
                    <optgroup label="{{ $selectedMainClass->getTitle() }}">
                      @foreach($selectedMainClass->classes as $class )
                      @if($class->getRegistrationStartDate() >= \Carbon\Carbon::now())
                      @if($student->isSignedUpToClass($class->getId()))
                      <option disabled value="{{ $class->getId() }}">Deja inscris -{{ $class->getRegistrationStartDate()->toDateString() }} - {{ $class->getRegistrationEndDate()->toDateString() }}</option>
                      @else
                      <option value="{{ $class->getId() }}">{{ $class->getRegistrationStartDate()->toDateString() }} - {{ $class->getRegistrationEndDate()->toDateString() }}</option>
                      @endif
                      @endif
                      @endforeach
                    </optgroup>
                  </select>
                </div>
              </div>
              <div class="col-sm-12 col-md-2">
                <div class="form-group">
                  <label class="control-label">Modalitate plată *</label>
                  <br>
                  <label class="radio-inline">
                    <input class="form-check-input" type="checkbox" value="banca" name="payment_method" id="payment_method" checked="checked" />
                    Virament bancar
                  </label>
                </div>
              </div>
              <div class="col-sm-12 col-md-4">
                <div class="form-group">
                  <label class="control-label">Tip plată *</label>
                  <br>
                  <label class="radio-inline">
                    <input class="form-check-input" type="radio" name="payment_type" id="payment_full" value="integral" checked>
                    Integral
                  </label>
                  <label class="radio-inline">
                    <input class="form-check-input" type="radio" name="payment_type" id="payment_full" value="doua_rate">
                    2 rate
                  </label>
                  <label class="radio-inline">
                    <input class="form-check-input" type="radio" name="payment_type" id="payment_full" value="trei_rate">
                    3 rate
                  </label>
                </div>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-12 col-md-12">
                <div class="form-check">
                  <input class="form-check-input" id="termeni_site" type="checkbox" name="termeni_site" value="" required="">
                  <label class="form-check-label"><a data-toggle="modal" data-target=".bs-example-modal-lg">Sunt de acord
                      cu Termenii și Condițiile site-ului *</a></label>
                </div>
              </div>
              <div class="col-sm-12 col-md-12">
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" name="conditii_minime" value="" required="">
                  <label class="form-check-label">Am citit și îndeplinesc condițiile minime ale
                    cursului *</label>
                </div>
              </div>
              <div class="col-sm-12 col-md-12">
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" name="newsletter" value="">
                  <label class="form-check-label">Doresc sa primesc noutați prin email</label>
                </div>
              </div>
            </div>

            <div>
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
