@extends('layouts.app')


@section('content')

  @include('admin.includes.errors')

  <div class="panel panel-default">

    <div class="panel-heading">
        Create New Category
    </div>

    <div class="panel-body">
      <form action="{{ route('category.store') }}" method="post">
        {{ csrf_field() }}
        <div class="form-group">
          <label for="title">Name</label>
          <input type="text" name="name" class="form-control">

        </div>
        <div class="form-group">
          <div class="text-center">
            <button type="submit" class="btn btn-success">Create Category</button>
          </div>
        </div>

      </form>
    </div>

  </div>
@stop
