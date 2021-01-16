<div class="col-md-3">
    <div class="job-overview">
        <dl class="dl-horizontal">
            <dt><i class="fa fa-calendar text-theme-colored mt-5 font-15"></i></dt>
            <dd>
                <h5 class="mt-0">Data înregistrarii:</h5>
                {{ $student->getRegistrationDate()->formatLocalized("%e %B, %Y") }}
            </dd>
        </dl>
        <dl class="dl-horizontal">
            <dt><i class="fa fa-map-marker text-theme-colored mt-5 font-15"></i></dt>
            <dd>
                <h5 class="mt-0">Ultima logare:</h5>
                {{ $student->activity ?: 'Astazi' }}

            </dd>
        </dl>
        <dl class="dl-horizontal">
            <dt><i class="fa fa-user text-theme-colored mt-5 font-15"></i></dt>
            <dd>
                <h5 class="mt-0">Documente legale:</h5>
                <p>
                    <a href="javascript:void(0);" data-toggle="modal"
                       data-target=".bs-example-modal-lg">
                        <i class="fa fa-link"></i> Termeni si condiții
                    </a>
                </p>
            </dd>
        </dl>
    </div>
</div>