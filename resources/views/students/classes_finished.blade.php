{{--<div class="tab-pane fade" id="inactive">--}}
{{--    @foreach ($finishedClasses as $finished)--}}

{{--        <div class="row">--}}
{{--            <div class="col-md-6">--}}
{{--                <h4>{{ $finished->title }}</h4>--}}
{{--                <p>--}}
{{--                    <strong>Data înscriere: </strong>--}}

{{--                    {{  $finished->getRegistrationStartDate() }}--}}
{{--                    <br />--}}

{{--                    <strong>Preț curs: </strong>--}}
{{--                    {{ $finished->getPrice() }}--}}
{{--                    Lei--}}
{{--                </p>--}}
{{--            </div>--}}
{{--            <div class="col-md-6">--}}
{{--                @if (!empty($finished->getResourcesDescription())) { ?>--}}
{{--                <div class="panel-group toggle accordion-theme-colored2 accordion-icon-right">--}}
{{--                    <div class="panel panel-default">--}}
{{--                        <div class="panel-heading">--}}
{{--                            <div class="panel-title"><a--}}
{{--                                        class="collapsed"--}}
{{--                                        data-toggle="collapse"--}}
{{--                                        href="#toggle"--}}
{{--                                        class=""><span--}}
{{--                                            class="open-sub"></span>Resurse curs</a>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                        <div id="toggle"--}}
{{--                             class="panel-collapse collapse">--}}
{{--                            <div class="panel-body resurs">--}}
{{--                                {{ $finished->getResourcesDescription }}--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                @endif--}}
{{--            </div>--}}
{{--            <div class="col-md-12">--}}
{{--                @if (!empty($finished->pdf_programa))--}}
{{--                    <a href="/documents/{{ $finished->pdf_programa }}"--}}
{{--                       target="_blank"--}}
{{--                       class="btn btn-gray btn-transparent btn-xs">Programa curs</a>--}}
{{--                @endif--}}

{{--                @if (!empty($finished->schedule_pdf))--}}
{{--                    <a href="javascript:void()"--}}
{{--                       data-toggle="modal"--}}
{{--                       data-target=".bs-example-modal-lg2"--}}
{{--                       class="btn btn-gray btn-transparent btn-xs">Conditii participare</a>--}}
{{--                @endif--}}
{{--                <div class="modal fade bs-example-modal-lg2"--}}
{{--                     tabindex="-1" role="dialog"--}}
{{--                     aria-labelledby="myLargeModalLabe2">--}}
{{--                    <div class="modal-dialog modal-lg">--}}
{{--                        <div class="modal-content">--}}
{{--                            <div class="modal-header">--}}
{{--                                <button type="button"--}}
{{--                                        class="close"--}}
{{--                                        data-dismiss="modal"--}}
{{--                                        aria-label="Inchide">--}}
{{--                                    <span aria-hidden="true">&times;</span>--}}
{{--                                </button>--}}
{{--                            </div>--}}
{{--                            <div class="pl-50 pr-50 pb-50">--}}
{{--                                <h2 class="modal-title"--}}
{{--                                    id="myModalLabel3">Cerinte minime de participare la cursul:--}}
{{--                                    <br />{{ $finished->title }}--}}
{{--                                </h2>--}}
{{--                                <hr />--}}
{{--                                {{ $finished->requirements_description }}--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}

{{--                @if(count($student->feedback()) > 0)--}}
{{--                    <a href="feedback.php?id={{ $student->feedback()->link }}"--}}
{{--                       target="_blank"--}}
{{--                       class="btn btn-gray btn-transparent btn-xs">Feedback curs</a>--}}

{{--                    <a href="certificat.php?id={{ $student->feedback()->link }}"--}}
{{--                       target="_blank"--}}
{{--                       class="btn btn-gray btn-transparent btn-xs">Certificat de ablosvire curs</a>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--        <hr />--}}

{{--</div>--}}
{{--@else--}}
{{--    <div class="col-md-12 col-xs-12 curs">--}}
{{--        <h4>Nu te-ai înscris la nici un curs încă.</h4>--}}
{{--    </div>--}}
{{--@endif--}}
{{--@endforeach--}}