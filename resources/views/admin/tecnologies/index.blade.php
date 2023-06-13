@extends('layouts.admin')

@section('content')
    <div class="container">
        <div class="mx-auto mt-5 border rounded-2 p-4 bg-table">
            <h1>Tecnology list</h1>
            <table class="table table-success rounded rounded-2">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Created at</th>
                        <th scope="col">Tools</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($tecnologies as $tecnology)
                        <tr>
                            <th scope="row">{{ $tecnology->id }}</th>
                            <td>{{ $tecnology->name }}</td>
                            <td>{{ $tecnology->created_at }}</td>
                            <td>
                                <a class="btn btn-success text-primary-emphasis" href="{{ route('admin.tecnologies.show', $tecnology->slug) }}">Show</a>
                                <a class="btn btn-success text-warning px-2" href="">Edit</a>
                                <a class="btn btn-success text-danger" href="">Delete</a>
                            </td>
                        </tr>
                    @endforeach

                </tbody>
            </table>
        </div>
    </div>
@endsection
