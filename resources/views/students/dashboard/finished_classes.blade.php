<div class="tab-pane fade" id="inactive">
    @foreach($finishedClasses as $finished)
        <div class="row">
            <div class="col-md-6">
                <h4>{{ $finished->title }}</h4>
                <p>
                    <strong>Data înscriere: </strong>
                    {{ $finished->sign_up_date}}
                    <br />
                    <strong>Cursul începe pe: </strong> {{ $finished->resgistration_start_date }}
                    <br />
                    @if(!empty($finished->discount_price && $finished->discount_price != 0))
                        <strong>Preț curs: </strong>
                        <del>
                            <span class="amount">{{ $finished->price }} Lei</span>
                        </del>
                        <strong><span
                                    class="amount">{{ $finished->discount_price }} Lei</span></strong>
                    @else
                        <strong>Preț curs: </strong>
                        <span
                                class="amount">{{ $finished->price }} Lei</span>
                    @endif
                </p>
            </div>
            <div class="col-md-6">
                @if(!empty($finished->resources_description))
                    <div class="panel-group toggle accordion-theme-colored2 accordion-icon-right">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="panel-title">
                                    <a
                                            data-toggle="collapse"
                                            href="#togglea"
                                            class=""><span
                                                class="open-sub collapsed"></span>Resurse curs</a>
                                </div>
                            </div>
                            <div id="togglea"
                                 class="panel-collapse collapse">
                                <div class="panel-body resurs">
                                    {{ $finished->resources_description }}
                                </div>
                            </div>
                        </div>
                    </div>
                @endif
            </div>
            <div class="col-md-12">
                @if(!empty($finished->schedule_pdf))
                    <a href="/documents/{{ $finished->schedule_pdf }}"
                       target="_blank"
                       class="btn btn-gray btn-transparent btn-xs">Programa curs</a>
                @endif

                @if(!empty($finished->requirement_description))
                    | <a href="javascript:void(0)"
                         data-toggle="modal"
                         data-target=".bs-example-modal-lg2"
                         class="btn btn-gray btn-transparent btn-xs">Conditii participare</a>
                    <div class="modal fade bs-example-modal-lg2"
                         tabindex="-1" role="dialog"
                         aria-labelledby="myLargeModalLabe2">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button"
                                            class="close"
                                            data-dismiss="modal"
                                            aria-label="Inchide">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="pl-50 pr-50 pb-50">
                                    <h2 class="modal-title"
                                        id="myModalLabel3">Cerinte minime de participare la cursul:
                                        <br />{{ $finished->title }}
                                    </h2>
                                    <hr />
                                    {{ $finished->requirement_description }}
                                </div>
                            </div>
                        </div>
                    </div>
                @endif
            </div>
        </div>
    @endforeach
    <hr />
</div>