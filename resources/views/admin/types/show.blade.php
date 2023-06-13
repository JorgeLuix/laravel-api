@extends('layouts.admin')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card mt-5 bg-table">
                    <div class="card-body">
                        <h1 class="text-center">Type</h1>
                        <p class="text-center">The type name is: {{ $type->name }}</p>
                        <ul class="list-group">
                            @foreach ($type->projects as $project)
                                <li class="list-group-item">{{ $project->name }}</li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
