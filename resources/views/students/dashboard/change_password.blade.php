<div id="sectiuneaParola" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingPreferinte"
     aria-expanded="false">
    <div class="panel-body">
        <form class="reservation-form" method="POST" action="/student_dashboard" novalidate="novalidate"
              autocomplete="off">
            @csrf
            <input type="hidden" value="{{ $student->getId() }}" name='studentId'>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group mb-30">
                        <label for="password">Schimbă parola <small>(maxim 12 caractere)</small></label>
                        <input id="password" name="password" class="form-control" type="password">
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="form-group mb-0 mt-0">
                        <button type="submit" class="btn btn-colored btn-block btn-theme-colored2 text-white btn-lg btn-flat"
                               name="changePassword">Schimbă
                        </button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>