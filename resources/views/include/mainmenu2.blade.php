<li @if (\Request::is('dashboard')) class="active" @endif >
    <a href="/dashboard"><i class="fa fa-th-large"></i> <span class="nav-label">Dashboard</span></a>
</li>
<li @if (\Request::is('catalog')) class="active" @endif >
    <a href="/catalog"><i class="fa fa-th-large"></i> <span class="nav-label">Catalog</span></a>
</li>
@if(auth()->user()->isAcademiaTestarii())
    <li
            @if (\Request::is('homepage') || \Request::is('feedback') || \Request::is('sliders')) class="active" @endif >
        <a href="/homepage"><i class="fa fa-home"></i> <span class="nav-label">Home page</span></a>
    </li>

    <li @if (\Request::is('content')) class="active" @endif>
        <a href="/content?id=2"><i class="fa fa-user-secret"></i> <span class="nav-label">Despre noi</span></a>
    </li>
@endif
<li @if (\Request::is('classes_list') || \Request::is('class') || \Request::is('class_details')) class="active" @endif >
    <a href="/classes_list"><i class="fa fa-laptop"></i> <span class="nav-label">Cursuri</span></a>
</li>

<li @if (\Request::is('students')) class="active" @endif>
    <a href="/students_list"><i class="fa fa-users"></i> <span class="nav-label">Cursanti</span></a>
</li>
@if(auth()->user()->isAcademiaTestarii())
    <li @if (\Request::is('communication')) class="active" @endif>
        <a href="/communication"><i class="fa fa-users"></i> <span class="nav-label">Comunicare</span></a>
    </li>
@endif
<li @if (\Request::is('trainers_list') || \Request::is('trainer')) class="active" @endif>
    <a href="/trainers_list"><i class="fa fa-user"></i> <span class="nav-label">Traineri/Staff</span></a>
</li>
@if(auth()->user()->isAcademiaTestarii())
    <li @if (\Request::is('partners_list') || \Request::is('partner')) class="active" @endif>
        <a href="/partners_list"><i class="fa fa-user"></i> <span class="nav-label">Parteneri</span></a>
    </li>

    <li @if (\Request::is('blog_list') || \Request::is('blog')) class="active" @endif>
        <a href="/blog_list"><i class="fa fa-newspaper-o"></i> <span class="nav-label">Blog</span></a>
    </li>
@endif