<div class="white-popup animated fadeIn">
    <?php
    if (isset($_GET['student']) && isset($_GET['class'])) {
    ?>
    <form class="form row" action="/class_details/{{$classStudent->getClassId()}}" method="POST">
        @csrf
        <div class="col-md-12">
            <h1>Notite</h1>
        </div>
        <div class="col-md-12 form-group">
            <textarea id="notita" style="width:100%" name="note">{!! $classStudent->getNote() !!} </textarea>
        </div>
        <div class="col-md-12 form-group">
            <button class="btn btn-primary" type="submit">Adauga</button>
            <input type="hidden" name="student" value="{{$classStudent->getStudentId()}}"/>
            <input type="hidden" name="class" value="{{$classStudent->getClassId()}}"/>
        </div>
    </form>
    <?php } else {
        echo "Trebuie sa selectezi ceva!";
    } ?>
</div>