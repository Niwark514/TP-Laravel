@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-12 pt-2">
                <div>
                    <a href="/forum" class="btn btn-outline-primary btn-sm">@lang('forum.goBackBtn')</a>
                </div>
                <h1 class="display-one">{{ ucfirst($post->title) }}</h1>
                <p>{!! $post->body !!}</p>
                <hr>
                @if(isset(Auth::user()->email) && Auth::user()->id == $post->users_id)
                    <a href="/forum/{{ $post->id }}/edit" class="btn btn-outline-primary">@lang('forum.goToEditBtn')</a>
                    <form id="delete-frm" class="" action="" method="POST">
                        @method('DELETE')
                        @csrf
                        <button class="btn btn-danger">@lang('forum.deleteBtn')</button>
                    </form>
                    @endif
            </div>
        </div>
    </div>
@endsection
