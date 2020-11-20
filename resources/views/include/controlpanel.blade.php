<ul class="nav navbar-top-links navbar-right">
    <li>
        <a href="../" target="_blank">
            @if (Auth::guest())
            @else

                {{ Auth::user()->name }}
                <i class="fa fa-link"></i>
            @endif
        </a>
    </li>
    <li> |</li>
    <li>
        <a href="/logout">
            Log out <i class="fa fa-sign-out"></i>
        </a>
    </li>
</ul>