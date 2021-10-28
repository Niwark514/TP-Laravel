@extends('layouts.app')
@section('content')
    @if(isset(Auth::user()->id))
    <section class="page-section clearfix">
        <div class="container">
            <div class="intro-text left-0 text-center bg-faded p-5 rounded">
                <h2 class="section-heading mb-4">
                    <span class="section-heading-lower">@lang('share.editTitle')</span>
                </h2>

                <form action="" method="post">
                    @method('PUT')
                    @csrf
                    <div class="form-group mb-1 form-floating">
                        <input class="form-control" name="title" id="title" type="text" placeholder="@lang('share.placeHolderTitle')" maxlength="255" value="{!! $file->title !!}"/>
                        <label for="title">@lang('share.placeHolderTitle')</label>
                        @if ($errors->has('title'))
                            <span class="text-danger">{{ $errors->first('title') }}</span>
                        @endif
                    </div>

                    <div class="form-group mb-1 form-floating">
                        <input class="form-control" name="title_fr" id="title_fr" type="text" placeholder="@lang('share.placeHolderTitleFr')" maxlength="255" value="{!! $file->title_fr !!}"/>
                        <label for="title_fr">@lang('share.placeHolderTitleFr')</label>
                    </div>
                    <div class="form-group mb-1 form-floating">
                        <input class="form-control" name="url" id="url" type="file" maxlength="255"/>

                    </div>

                    <div class="form-group mb-1 form-floating">
                        <input hidden class="form-control" name="user_id" id="user_id" type="text" value="{{Auth::user()->id}}"/>
                        <label hidden for="user_id">Id</label>
                    </div>
                    <button class="btn btn-primary btn-xl" id="submitButton" type="submit">@lang('share.editBtn')</button>
                </form>
            </div>
        </div>
    @endif
@endsection
