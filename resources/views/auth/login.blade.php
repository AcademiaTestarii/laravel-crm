@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">Login</div>
                    <div class="panel-body">
                        <form class="form-horizontal" role="form" method="POST" action="{{ url('/login') }}">
                            {{ csrf_field() }}

                            @if(isset($activate))
                                <div class="form-group">
                                    <label class="col-md-2 control-label"></label>
                                    <div class="col-md-8 alert alert-info" role="alert">
                                        A confirmation email was sent to the provided email address.
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
                            <div class="form-group{{ ($errors->has('email') || $errors->has('email_password_mismatch')) ? ' has-error' : '' }}">
                                <label for="email" class="col-md-4 control-label">E-Mail Address</label>

                                <div class="col-md-6">
                                    <input id="email" type="email" class="form-control" name="email"
                                           value="{{ old('email') }}" autofocus>

                                    @if ($errors->has('email'))
                                        <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group{{ ($errors->has('password') || $errors->has('email_password_mismatch')) ? ' has-error' : '' }}">
                                <label for="password" class="col-md-4 control-label">Password</label>

                                <div class="col-md-6">
                                    <input id="password" type="password" class="form-control" name="password">

                                    @if ($errors->has('password'))
                                        <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-6 col-md-offset-4">
                                    {{--  <div class="checkbox">
                                          <label>
                                              <input type="checkbox" name="remember"> Remember Me
                                          </label>
                                      </div>--}}
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-8 col-md-offset-4">
                                    <button type="submit" class="btn btn-primary">
                                        Login
                                    </button>
                                    <a class="btn btn-link" href="{{ url('/password/reset') }}">
                                        Forgot Your Password?
                                    </a>
                                    <a class="btn btn-link" href="{{ url('/register') }}">
                                        Register new account
                                    </a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
