<div class="tab-pane fade in active" id="active">
    @foreach($activeClasses as $active)
        <div class="row">
            <div class="col-md-6">
                <h4> {{ $active->title }}</h4>
                <p>
                    <strong>Data înscriere: </strong>
                    {{ $active->registration_start_date }}
                    <br />

                    @if ($active->discount_price != "" && $active->discount_price != 0)
                        <strong>Preț curs: </strong>
                        <del>
                            <span class="amount">{{  $active->price }} Lei</span>
                        </del>
                        <strong><span
                                    class="amount"> {{ $active->discount_price }} Lei</span></strong>
                    @else
                        <strong>Preț curs: </strong>
                        <span
                                class="amount">{{  $active->price }} Lei</span>
                    @endif
                </p>

            </div>
            <div class="col-md-6">
                @if ($active->resources_description != "")
                    <div class="panel-group toggle accordion-theme-colored2 accordion-icon-right">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="panel-title">
                                    <a
                                            class="collapsed"
                                            data-toggle="collapse"
                                            href="#togglea"
                                            class=""><span
                                                class="open-sub"></span>Resurse curs</a>
                                </div>
                            </div>
                            <div id="togglea<?php echo $i;?>"
                                 class="panel-collapse collapse">
                                <div class="panel-body resurs">
                                    {{ $active->resources_description }}
                                </div>
                            </div>
                        </div>
                    </div>
                @endif
            </div>
            <div class="col-md-12">
                @if($active->schedule_pdf != "")
                    <a href="/documents/{{ $active->schedule_pdf }}"
                       target="_blank"
                       class="btn btn-gray btn-transparent btn-xs">Programa curs</a>
                @endif

                @if($active->requirements_description  != "")
                    | <a href="javascript:void()"
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
                                        <br /><?php echo $row_curs_activ['main_classes.title'];?>
                                    </h2>
                                    <hr />
                                    <?php echo $row_curs_activ['requirements_description'];?>
                                </div>
                            </div>
                        </div>
                    </div>
                @endif
            </div>
        </div>
        <hr />
    @endforeach
</div>