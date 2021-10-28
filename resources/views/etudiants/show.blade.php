@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-12 pt-2">
                <div>
                    <a href="/" class="btn btn-outline-primary btn-sm">@lang('etudiant.goBackBtn')</a>
                    @if(!isset(Auth::user()->email))
                        <a class="btn btn-primary" href="/registration/{{ $etudiant->id }}">@lang('etudiant.registerBtn')</a>
                    @endif
                </div>

                <h1 class="display-one">{{ ucfirst($etudiant->name) }}</h1>
                <p>{!! $etudiant->adress !!}</p>
                <hr>
                <p>{!! $etudiant->phone !!}</p>
                <hr>
                <p>{!! $etudiant->email !!}</p>
                <hr>
                <p>{!! $etudiant->birth_date !!}</p>
                <hr>
                <p>{{ $etudiant->ville->name }}</p>
                <hr>
                @if(isset(Auth::user()->email) && Auth::user()->id == $etudiant->id)
                    <a href="/{{ $etudiant->id }}/edit" class="btn btn-outline-primary">@lang('etudiant.goToEditBtn')</a>
                    <br><br>
                @else
                    <p> @lang('etudiant.editMessage') {{ucfirst($etudiant->name)}}</p>
                @endif
                @if(isset(Auth::user()->email) && Auth::user()->id == 1) {{-- Dans la vraie vie on aurai une interface admin et non un étudiant qui fait office de. !!! modifier cette partie en cas de création d'interface admin--}}
                <form id="delete-frm" class="" action="" method="POST">
                    @method('DELETE')
                    @csrf
                    <button class="btn btn-danger">@lang('etudiant.deleteBtn')</button>
                </form>
                    @endif
            </div>
        </div>
    </div>
@endsection
