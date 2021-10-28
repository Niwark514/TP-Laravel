@extends('layouts.app')
@section('content')
    @php $locale = session()->get('locale'); @endphp
    <div class="container">
        <div class="row">
            <div class="col-12 pt-2">
                <div class="row">
                    <div class="col-8">
                        <h1 class="display-one">@lang('forum.indexTitle')</h1>

                    </div>
                    @if(isset(Auth::user()->email))
                        <div class="col-4">
                            <a href="/create/post" class="btn btn-primary btn-sm">@lang('forum.newArticleBtn')</a>
                        </div>
                    @endif
                </div>
                <ul>
                    @forelse($posts as $post)
                        <li class="post-list">

                            @if(isset(Auth::user()->email) && Auth::user()->id == $post->users_id)
                                <a href="./forum/{{ $post->id }}">
                            @endif
                                <article class="col-md-8">
                                    <h2>{{ ucfirst($post->title) }}</h2>
                                    <p>
                                        {{ $post->body }}
                                    </p>
                                    <p>{{$post->created_at}}</p>
                                </article>

                            @if(isset(Auth::user()->email) && Auth::user()->id == $post->users_id)
                                </a>
                            @endif
                        </li>
                    @empty
                        <li class="text-warning">@lang('forum.noArticle')</li>
                    @endforelse
                </ul>
            </div>
        </div>
    </div>
@endsection
