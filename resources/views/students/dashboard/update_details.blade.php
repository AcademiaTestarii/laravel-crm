<form role="form" class="reservation-form" method="POST" action="/student_dashboard">
    @csrf

    <input type="hidden" value="{{ $student->getId() }}" name='studentId'>

    <div class="row">
        <div class="col-sm-4">
            <div class="form-group mb-30">
                <label for="last_name">Nume</label>
                <input placeholder="Nume" id="last_name" name="last_name" class="form-control" type="text"
                       value="{{ $student->getLastName() }}">
            </div>
        </div>

        <div class="col-sm-4">
            <div class="form-group mb-30">
                <label for="first_name">Prenume</label>
                <input placeholder="Prenume" id="first_name" name="first_name" class="form-control" type="text"
                       value="{{ $student->getFirstName() }}">
            </div>
        </div>

        <div class="col-sm-4">
            <div class="form-group mb-30">
                <label for="date_of_birth">Data naștere</label>
                <input placeholder="Data naștere" id="date_of_birth" name="date_of_birth" class="form-control"
                       type="date" value="{{ $student->getDateOfBirth() }}">
            </div>
        </div>

        <div class="col-sm-4">
            <div class="form-group mb-30">
                <label for="address">Adresă</label>
                <input id="address" name="address" class="form-control" type="text" value="{{ $student->getAddress() }}">
            </div>
        </div>

        <div class="col-sm-4">
            <div class="form-group mb-30">
                <label for="city">Localitate</label>
                <input id="city" name="city" class="form-control" type="text" value="{{ $student->getCity() }}">
            </div>
        </div>

        <div class="col-sm-4">
            <div class="form-group mb-30">
                <label for="county">Judet</label>
                <input id="county" name="county" class="form-control" type="text" value="{{ $student->getCounty() }}">
            </div>
        </div>

        <div class="col-sm-6">
            <div class="form-group mb-30">
                <label for="company">Companie</label>
                <input id="company" name="company" class="form-control" type="text" value="{{ $student->getCompany() }}">
            </div>
        </div>

        <div class="col-sm-6">
            <div class="form-group mb-30">
                <label for="job_title">Poziție</label>
                <input id="job_title" name="job_title" class="form-control" type="text" value="{{ $student->getJob() }}">
            </div>
        </div>

        <div class="col-sm-6">
            <div class="form-group mb-30">
                <label for="phone">Telefon</label>
                <input id="phone" name="phone" class="form-control" type="text" value="{{ $student->getPhone() }}">
            </div>
        </div>

        <div class="col-sm-6">
            <div class="form-group mb-30">
                <label for="email">Email</label>
                <input disabled id="email" name="email" class="form-control" required="" type="email"
                       value="{{ $student->getEmail() }}">
            </div>
        </div>

        <div class="col-sm-12">
            <div class="form-group mb-0 mt-0">
                <button type="submit" class="btn btn-colored btn-block btn-theme-colored2 text-white btn-lg btn-flat">
                    Actualizează datele
                </button>
            </div>
        </div>

    </div>
</form>