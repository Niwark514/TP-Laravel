@extends('layouts.app')
@section('content')
    @if(isset(Auth::user()->id))
    <section class="page-section clearfix">
        <div class="container">
            <div class="intro-text left-0 text-center bg-faded p-5 rounded">
                <h2 class="section-heading mb-4">
                    <span class="section-heading-lower">@lang('forum.createTitle')</span>
                </h2>

                <form action="" method="post">
                    @csrf
                    <div class="form-group mb-1 form-floating">
                        <input class="form-control" name="title" id="title" type="text" placeholder="@lang('forum.placeHolderTitle')" value="{{old('title')}}"/>
                        <label for="title">@lang('forum.placeHolderTitle')</label>
                        @if ($errors->has('title'))
                            <span class="text-danger">{{ $errors->first('title') }}</span>
                        @endif
                    </div>

                    <div class="form-group mb-1 form-floating">
                        <textarea class="form-control" name="body" id="body">{{old('title')}}</textarea>
                        <label for="body">@lang('forum.placeHolderBody')</label>
                        @if ($errors->has('body'))
                            <span class="text-danger">{{ $errors->first('body') }}</span>
                        @endif
                    </div>
                    <div class="form-group mb-1 form-floating">
                        <input class="form-control" name="title_fr" id="title_fr" type="text" placeholder="@lang('forum.placeHolderTitleFr')" value="{{old('title_fr')}}"/>
                        <label for="title_fr">@lang('forum.placeHolderTitleFr')</label>
                        @if ($errors->has('title_fr'))
                            <span class="text-danger">{{ $errors->first('title_fr') }}</span>
                        @endif
                    </div>
                    <div class="form-group mb-1 form-floating">
                        <textarea class="form-control" name="body_fr" id="body_fr">{{old('title')}}</textarea>
                        <label for="body_fr">@lang('forum.placeHolderBodyFr')</label>
                    </div>
                    <div class="form-group mb-1 form-floating">
                        <input hidden class="form-control" name="users_id" id="users_id" type="text" value="{{Auth::user()->id}}"/>
                        <label hidden for="users_id">Id</label>
                    </div>
                    <button class="btn btn-primary btn-xl" id="submitButton" type="submit">@lang('forum.addBtn')</button>
                </form>
            </div>
        </div>
    @endif
@endsection
