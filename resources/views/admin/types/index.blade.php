@extends('layouts.admin')

@section('content')
    <div class="container">
        <div class="mx-auto mt-5 border rounded-2 p-4 bg-table">
            <h1>Type list</h1>
            <table class="table table-success rounded rounded-2">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Created at</th>
                        <th scope="col">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($types as $type)
                        <tr>
                            <th scope="row">{{ $type->id }}</th>
                            <td>{{ $type->name }}</td>
                            <td>{{ $type->created_at }}</td>
                            <td>
                                <a class="btn btn-success text-primary-emphasis" href="{{ route('admin.types.show', $type->slug) }}">Show</a>
                                <a class=" btn btn-success text-warning px-2" href="#">Edit</a>
                                <a class="btn btn-success text-danger" href="#">Delete</a>
                            </td>
                        </tr>
                    @endforeach

                </tbody>
            </table>
        </div>
    </div>
@endsection
