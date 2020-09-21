<div class="white-popup animated fadeIn">
    @if($classStudent)
        <form class="form row" action="/class_details/{{$classStudent->getClassId()}}" method="POST">
            @csrf
            <div class="form-group">
                <div class="col-md-12 form-group">
                    <h1>Muta cursantul la un alt curs</h1>
                    <select class="form-control" name="new_class">
                        <option value="--">-- alege curs --</option>
                        @foreach($mainClasses as $mainClass)
                            <optgroup label="{!! $mainClass->getTitle() !!}">
                                @foreach($mainClass->classes as $classtoBeSelected)
                                    @if($classtoBeSelected->getRegistrationStartDate()->toDateString() > (new \Carbon\Carbon())->toDateString())
                                        )
                                        <option value="{{$classtoBeSelected->getId()}}"
                                                @if($classtoBeSelected->getId()==$classStudent->getClassId()) selected="selected" @endif
                                        >
                                            @if(is_null($classtoBeSelected->getRegistrationStartDate()))
                                                TBA
                                            @else
                                                {{ $classtoBeSelected->getRegistrationStartDate()->formatLocalized("%e %B, %Y")}}
                                                - {{ $classtoBeSelected->getRegistrationEndDate()->formatLocalized("%e %B, %Y")}}
                                            @endif
                                        </option>
                                    @endif
                                @endforeach
                            </optgroup>
                        @endforeach
                    </select>
                </div>

                <div class="col-md-12 form-group">
                    <button class="btn btn-primary" type="submit">Muta</button>
                    <input type="hidden" name="move_student" value="{{$classStudent->getStudentId()}}"/>
                    <input type="hidden" name="class" value="{{$classStudent->getClassId()}}"/>
                </div>
            </div>
        </form>
    @else
        Trebuie sa selectezi ceva!
    @endif
</div>
