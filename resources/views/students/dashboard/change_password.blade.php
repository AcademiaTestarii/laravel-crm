<div id="sectiuneaParola" class="panel-collapse collapse"
     role="tabpanel" aria-labelledby="headingPreferinte"
     aria-expanded="false">
    <div class="panel-body">
        <form id="schimbaparola" name="schimbaparola"
              class="reservation-form" method="post"
              action="/student_dashboard" novalidate="novalidate"
              autocomplete="off">
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group mb-30"><label>Schimbă parola
                            <small>(maxim 12 caractere)</small></label>
                        <input maxlength="12"
                               placeholder="Seteaza parola" id="parola"
                               name="parola" required=""
                               class="form-control" aria-required="true"
                               type="password" value="">
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="form-group mb-0 mt-0">
                        <input name="form_botcheck" class="form-control"
                               value="" type="hidden">
                        <input name="action" class="form-control"
                               value="schimbaparola" type="hidden">
                        <input name="cursant" class="form-control"
                               value="{{ $student->getId() }}"
                               type="hidden">
                        <button type="submit"
                                class="btn btn-colored btn-block btn-theme-colored2 text-white btn-lg btn-flat"
                               >Schimbă
                        </button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>