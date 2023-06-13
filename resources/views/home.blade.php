@extends('layouts.app')
@section('content')
    <div class="jumbotron p-5 mb-4 bg-light rounded-3">
        <div class="container py-5">
            <h1 class="display-5 fw-bold">
                Welcome <span>{{ Auth::check() ? Auth::user()->name : '!!' }}</span>
            </h1>

            <p class="col-md-8 fs-4">This a preset package with Bootstrap 5 views for laravel projects including laravel
                breeze/blade. It works from laravel 9.x to the latest release 10.x</p>
            <a href="{{ route('admin.projects.index') }}" class="btn btn-primary btn-lg" type="button">Projects</a>
        </div>
    </div>

    <div class="content">
        <div class="container">
            <section>
                {{-- @include('partials.skillsets') --}}
            </section>

        </div>
    </div>
@endsection
