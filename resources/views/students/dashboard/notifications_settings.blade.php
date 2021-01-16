<div id="sectiuneaPreferinte" class="panel-collapse collapse"
     role="tabpanel" aria-labelledby="headingPreferinte"
     aria-expanded="false">
    <div class="panel-body">
        <form id="preferinte" name="preferinte" class="reservation-form"
              method="post" action="i/student_dashboard"
              novalidate="novalidate">
            <div class="row">
                <div class="col-sm-12">
                    <div class="checkbox tab-content">
                        <label><input type="checkbox" value=""
                                      name="promotii"
                                    {{ $student->getPromotions() == 1 ? "checked" : ""}}> Discounturi și promoții Academia Testării
                        </label>
                    </div>
                    <div class="checkbox tab-content">
                        <label><input type="checkbox" value=""
                                      name="newsletter"
                                    {{ $student->getNewsletter() == 1 ? "checked" : ""}}> Newsletter Academia Testării
                        </label>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="form-group mb-0 mt-0">
                        <input name="form_botcheck" class="form-control"
                               value="" type="hidden">
                        <input name="action" class="form-control"
                               value="preferinte" type="hidden">
                        <input name="cursant" class="form-control"
                               value="{{ $student->getId() }}"
                               type="hidden">
                        <button type="submit"
                                class="btn btn-colored btn-block btn-theme-colored2 text-white btn-lg btn-flat"
                                ">Actualizează preferințele
                        </button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
