@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-12 pt-2">
                <div class="row">
                    <div class="col-8">
                        <h1 class="display-one">@lang('etudiant.listTitle')</h1>
                        <p>@lang('etudiant.listIntro')</p>
                    </div>
                    @if(isset(Auth::user()->email) && Auth::user()->id == 1)
                        <div class="col-4">
                            <a href="/create/etudiant" class="btn btn-primary btn-sm">@lang('etudiant.goToAddBtn')</a>
                        </div>
                    @endif
                </div>
                <ul>
                    @forelse($etudiants as $etudiant)
                            <li class="etudiant-list"><a href="./{{ $etudiant->id }}">{{ ucfirst($etudiant->name) }}</li>
                    @empty
                        <li class="text-warning">@lang('etudiant.noStudent')</li>
                    @endforelse
                </ul>
            </div>
        </div>
    </div>
@endsection
