@extends('layouts.app')

@section('content')
    <main class="login-form">
        <div class="cotainer">
            <div class="row justify-content-center">
                <div class="col-md-4 pt-4">
                    <div class="card">
                        <h3 class="card-header text-center">@lang('auth.login')</h3>
                        <div class="card-body">
                            @if(session('success'))
                                <span class="text-danger">@lang('auth.success')</span>
                            @endif
                            <form method="POST" action="{{ route('login.custom') }}">
                                @csrf
                                <div class="form-group mb-3">
                                    <input type="text" placeholder="@lang('auth.placeHolderMail')" id="email" class="form-control" name="email" value="{{old('email')}}"
                                           autofocus>
                                    @if ($errors->has('email'))
                                        <span class="text-danger">{{ $errors->first('email') }}</span>
                                    @endif
                                </div>

                                <div class="form-group mb-3">
                                    <input type="password" placeholder="@lang('auth.placeHolderPassword')" id="password" class="form-control" name="password">
                                    @if ($errors->has('password'))
                                        <span class="text-danger">{{ $errors->first('password') }}</span>
                                    @endif
                                </div>

                                <div class="form-group mb-3">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="remember"> @lang('auth.rememberMe')
                                        </label>
                                    </div>
                                </div>

                                <div class="d-grid mx-auto">
                                    <button type="submit" class="btn btn-dark btn-block">@lang('auth.signin')</button>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
@endsection
