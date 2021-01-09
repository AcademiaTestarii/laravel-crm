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
      <form class="form-horizontal" role="form" method="POST" action="/register">
        @csrf
        <input id="name" type="text" name="name" value="{{ old('name') }}" autofocus class="upt-form__input" placeholder="Enter your name">
        @if ($errors->has('name'))
        <span class="help-block">
          <strong>{{ $errors->first('name') }}</strong>
        </span>
        @endif
        <input id="email" type="email" name="email" @if(request()->get('email')) value="{{ request()->get('email')}}" @else value="{{ old('email') }}" @endif class="upt-form__input" placeholder="Enter your e-mail">
        @if ($errors->has('email'))
        <span class="help-block">
          <strong>{{ $errors->first('email') }}</strong>
        </span>
        @endif
        <select name="role" id="role" class="upt-form__input upt-form__input--role">
          @if(request()->get('email'))
          <option value="{{$roleTrainer->getId()}}">{{$roleTrainer->getName()}}</option>
          @else
          @foreach($roles as $role)
          <option value="{{$role->getId()}}">
            {{$role->getName()}}
          </option>
          @endforeach
          @endif
        </select>
        @if ($errors->has('role'))
        <span class="help-block">
          <strong>{{ $errors->first('role') }}</strong>
        </span>
        @endif
        <input id="password" type="password" class="upt-form__input" name="password" placeholder="Enter your password">
        @if ($errors->has('password'))
        <span class="help-block">
          <strong>{{ $errors->first('password') }}</strong>
        </span>
        @endif
        <input id="password-confirm" type="password" class="upt-form__input" name="password_confirmation" placeholder="Confirm your password">

        @if ($errors->has('password_confirmation'))
        <span class="help-block">
          <strong>{{ $errors->first('password_confirmation') }}</strong>
        </span>
        @endif
        <button type="submit" class="upt-form__button">Sign Up</button>
        <p class="upt-form__text">Already have an account?
          <a class="upt-form__text__link" href="{{ url('/login') }}">Login</a>
        </p>
      </form>
    </div>
  </main>
  @include('include/footer-new')
</body>

</html>
