@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-12 pt-2">
                <div class="row">
                    <div class="col-8">
                        <h1 class="display-one">@lang('index.title')</h1>
                        <p>@lang('index.intro') </p>
                        <ul>
                            <li>@lang('index.studentList')</li>
                            <li>@lang('index.forum')</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
