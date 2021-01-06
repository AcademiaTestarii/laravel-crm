<p>{{ $mainClass->getTitle() }} - {{ $mainClass->getId() }}</p>

@foreach( $mainClass->classes as $class)
    @if($class->getRegistrationEndDate() >= \Carbon\Carbon::yesterday())
<p>{{ $class->getRegistrationStartDate()->toDateString() }} - {{ $class->getRegistrationEndDate()->toDateString() }} - {{ $class->getId() }}</p>
    <a href="/catalog/{{ $mainClass->getId() }}/classes/{{ $class->getId() }}/class_signup">Inscrie-te</a>
@endif
@endforeach

