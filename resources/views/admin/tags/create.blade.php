@extends('layouts.app')


@section('content')

  @include('admin.includes.errors')

  <div class="panel panel-default">

    <div class="panel-heading">
        Create New Tag
    </div>

    <div class="panel-body">
      <form action="{{ route('tag.store') }}" method="post">
        {{ csrf_field() }}
        <div class="form-group">
          <label for="title">Name</label>
          <input type="text" name="tag" class="form-control">

        </div>
        <div class="form-group">
          <div class="text-center">
            <button type="submit" class="btn btn-success">Create Tag</button>
          </div>
        </div>

      </form>
    </div>

  </div>
@stop
