@extends('layouts.app')
@section('content')
    @php $locale = session()->get('locale'); @endphp
    <div class="container">
        <div class="row">
            <div class="col-12 pt-2">
                <div class="row">
                    <div class="col-8">
                        <h1 class="display-one">@lang('share.title')</h1>
                        <p>@lang('share.intro')</p>
                    </div>
                    @if(isset(Auth::user()->id))
                        <div class="col-4">
                            <a href="/create/fileShare" class="btn btn-primary btn-sm">@lang('share.newFileBtn')</a>
                        </div>
                    @endif
                </div>
                <ul>
                    @forelse($files as $file)
                        <li class="post-list">

                            @if(isset(Auth::user()->id))
                                <article class="col-md-8">

                                    <a href="{{ url('download?path='.$file->url) }}">{{ ucfirst($file->title) }}</a>

                                @if(Auth::user()->id == $file->user_id)
                                    <a href="./fileShare/{{ $file->id }}/edit" class="btn btn-outline-primary">@lang('share.goToEditBtn')</a>
                                    <form id="delete-frm" class="" action="/fileShare/{{ $file->id }}" method="POST">
                                        @method('DELETE')
                                        @csrf
                                        <button class="btn btn-danger">@lang('share.deleteBtn')</button>
                                    </form>
                                @endif
                            @endif

    <p>{{$file->created_at}}</p>
</article>
</li>
@empty
<li class="text-warning">@lang('share.noFile')</li>
@endforelse
</ul>
</div>
</div>
</div>
@endsection
