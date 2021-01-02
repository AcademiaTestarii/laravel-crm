<li>
    <a href="/"><i class="fa fa-th-large"></i> <span class="nav-label">AT</span></a>
</li>
<li>
    @if (Request::is('classes_offer')) class="active" @endif >
    <a href="/classes_offer"><i class="fa fa-home"></i> <span class="nav-label">Cursuri pentru tine</span></a>
</li>

<li @if (Request::is('content')) class="active" @endif>
    <a href="/content?id=2"><i class="fa fa-user-secret"></i> <span class="nav-label">Despre noi</span></a>
</li>

<li> @if (Request::is('for_companies'))" @endif>
    <a href="/blog_list"><i class="fa fa-newspaper-o"></i> <span class="nav-label">Blog</span></a>
</li>

<li> @if (Request::is('contact'))" @endif>
    <a href="/contact"><i class="fa fa-newspaper-o"></i> <span class="nav-label">Contact</span></a>
</li>