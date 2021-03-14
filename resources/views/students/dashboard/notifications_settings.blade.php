<div id="sectiuneaPreferinte" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingPreferinte"
     aria-expanded="false">
    <div class="panel-body">
        <form class="reservation-form" method="POST" action="/student_dashboard" novalidate="novalidate">
            @csrf
            <input type="hidden" value="{{ $student->getId() }}" name='studentId'>

            <div class="row">
                <div class="col-sm-12">
                    <div class="checkbox tab-content">
                        <label for="notifications">
                            <input type="hidden" value=0 id="notifications" name="notifications">
                            <input type="checkbox" value=1 id="notifications" name="notifications"
                                    {{ $student->getNotifications() == 1 ? "checked" : ""}}> Notificari Academia Testării
                        </label>
                    </div>

                    <div class="checkbox tab-content">
                        <label for="promotions">
                            <input type="hidden" value=0 id="promotions" name="promotions">
                            <input type="checkbox" value=1 name="promotions" id="promotions"
                                    {{ $student->getpromotions() == 1 ? "checked" : ""}}> Newsletter Academia Testării
                        </label>
                    </div>

                    <div class="checkbox tab-content">
                        <label for="newsletter">
                            <input type="hidden" value=0 id="newsletter" name="newsletter">
                            <input type="checkbox" value=1 name="newsletter" id="newsletter"
                                    {{ $student->getNewsletter() == 1 ? "checked" : ""}}> Newsletter Academia Testării
                        </label>
                    </div>

                </div>
                <div class="col-sm-12">
                    <div class="form-group mb-0 mt-0">
                        <button type="submit" class="btn btn-colored btn-block btn-theme-colored2 text-white btn-lg btn-flat"
                               name="updateNotifications">Actualizează preferințele
                        </button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
