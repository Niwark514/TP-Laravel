@extends('layouts.app')
@section('content')
    <section class="page-section clearfix">
        <div class="container">
            <div class="intro-text left-0 text-center bg-faded p-5 rounded">
                <h2 class="section-heading mb-4">
                    <span class="section-heading-lower">@lang('etudiant.newStudent')</span>
                </h2>
                <p class="mb-3">@lang('etudiant.introCreate')</p>
                <form action="/create/etudiant" method="post">
                    @csrf
                    <div class="form-group mb-1 form-floating">
                        <input class="form-control" name="name" id="name" type="text" placeholder="@lang('etudiant.placeHolderName')" value="{{old('name')}}"/>
                        <label for="name">@lang('etudiant.placeHolderName')</label>
                        @if ($errors->has('name'))
                            <span class="text-danger">{{ $errors->first('name') }}</span>
                        @endif

                    </div>
                    <div class="form-group mb-1 form-floating">
                        <input class="form-control" name="adress" id="adress" type="text" placeholder="@lang('etudiant.placeHolderAddress')" value="{{old('adress')}}"/>
                        <label for="adress">@lang('etudiant.placeHolderAddress')</label>
                        @if ($errors->has('adress'))
                            <span class="text-danger">{{ $errors->first('adress') }}</span>
                        @endif
                    </div>
                    <div class="form-group mb-1 form-floating">
                        <input class="form-control" name="email" id="email" type="email" placeholder="@lang('etudiant.placeHolderMail')" value="{{old('email')}}"/>
                        <label for="email">@lang('etudiant.placeHolderMail')</label>
                        @if ($errors->has('email'))
                            <span class="text-danger">{{ $errors->first('email') }}</span>
                        @endif
                    </div>
                    <div class="form-group mb-1 form-floating">
                        <input class="form-control" name="phone" id="phone" type="tel" placeholder="@lang('etudiant.placeHolderPhone')" value="{{old('phone')}}"/>
                        <label for="phone">@lang('etudiant.placeHolderPhone')</label>
                        @if ($errors->has('phone'))
                            <span class="text-danger">{{ $errors->first('phone') }}</span>
                        @endif
                    </div>
                    <div class="form-group mb-1 form-floating">
                        <input class="form-control" name="birth_date" id="birth_date" type="date" placeholder="@lang('etudiant.placeHolderBirthdate')" value="{{old('birth_date')}}"/>
                        <label for="birth_date">@lang('etudiant.placeHolderBirthdate')</label>
                        @if ($errors->has('birth_date'))
                            <span class="text-danger">{{ $errors->first('birth_date') }}</span>
                        @endif
                    </div>

                    <div class="form-group mb-1 form-floating">
                        <label hidden for="ville_id">@lang('etudiant.placeHolderCity')</label>
                        <select class="form-control" id="ville_id" name="ville_id">
                            <option disabled selected value="">@lang('etudiant.placeHolderCity')</option>
                            @foreach($villes as $ville)
                        <option value="{{$ville->id}}">{{$ville->name}}</option>

                            @endforeach
                        </select>
                        @if ($errors->has('ville_id'))
                            <span class="text-danger">{{ $errors->first('ville_id') }}</span>
                        @endif
                    </div>
                    <button class="btn btn-primary btn-xl" id="submitButton" type="submit">@lang('etudiant.addBtn')</button>
                </form>
            </div>
        </div>
@endsection
