<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Up-grade.tech</title>
  <link href="{{asset('css/design.css')}}" rel="stylesheet">
  <link href="/css/app.css" rel="stylesheet">
</head>

<body>
  @include('include/header-new')
  <main>
    <div class="upt-form upt-form--login">
      <form class="form-horizontal" role="form" method="POST" action="{{ url('/login') }}">
        @csrf
        @if(session()->get('activate_email'))
        <div class="form-group">
          <label class="col-md-2 control-label"></label>
          <div class="col-md-8 alert alert-info" role="alert">
            A confirmation email was sent to the provided email address.
          </div>
        </div>
        @endif

        @if(session()->get('activated'))
        <div class="form-group">
          <label class="col-md-2 control-label"></label>
          <div class="col-md-8 alert alert-info" role="alert">
            Your account has been activated. You may login
          </div>
        </div>
        @endif

        @if($errors->has('email_password_mismatch'))
        <div class="form-group">
          <label class="col-md-2 control-label"></label>
          <div class="col-md-8 alert alert-danger" role="alert">
            {{ $errors->first('email_password_mismatch') }}
          </div>
        </div>
        @endif
        <input id="email" type="email" name="email" value="{{ old('email') }}" autofocus class="upt-form__input" placeholder="Enter your e-mail">
        @if ($errors->has('email'))
        <span class="help-block">
          <strong>{{ $errors->first('email') }}</strong>
        </span>
        @endif
        <input id="password" type="password" class="upt-form__input" name="password" placeholder="Enter your password">
        @if ($errors->has('password'))
        <span class="help-block">
          <strong>{{ $errors->first('password') }}</strong>
        </span>
        @endif
        <button type="submit" class="upt-form__button">LOGIN</button>
        <p class="upt-form__text">Don’t have an account?
          <a class="upt-form__text__link" href="{{ url('/register') }}">Sign Up</a>
        </p>
      </form>
    </div>
  </main>
  @include('include/footer-new')
</body>

</html>
