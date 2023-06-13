@extends('layouts.admin')

@section('content')
    <div class="container">
        <div class="card mx-auto mt-5" style="width: 20rem">
            <img class="card-img-top" src="{{ $project->image }}" alt="">
            <div class="card-body">
                <h5 class="card-title">{{ $project->name }}</h5>
                <h6 class="card-subtitle mb-2 text-muted">Tecnology:
                    {{ $project->tecnology ? $project->tecnology->name : 'Senza tecnologia' }} </h6>
                <p class="card-text">{!! $project->description !!}</p>
                @if ($project->types && count($project->types) > 0)
                    <div>
                        @foreach ($project->types as $type)
                            <a href="{{ route('admin.types.show', $type->slug) }}"
                                class="badge rounded-pill text-bg-info">{{ $type->name }}</a>
                        @endforeach
                    </div>
                @endif
                <div class="d-flex justify-content-between align-content-center mt-2">
                    <a class="btn btn-primary" href="{{ route('admin.projects.index') }}">Torna indietro</a>
                    <a class="btn btn-primary" href="{{ $project->repository_url }}">Vai al repository</a>
                </div>
            </div>
        </div>
    </div>
@endsection
