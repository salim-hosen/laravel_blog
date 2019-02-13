@extends('layouts.app')

@section('content')
  <div class="panel panel-default">
    <div class="panel-body">
      <table class="table table-hover">
        <thead>
          <th>
            Category Name
          </th>
          <th>
            Editing
          </th>
          <th>
            Deleting
          </th>
        </thead>
        <tbody>
          @if($categories->count() > 0)
            @foreach($categories as $category)
              <tr>
                <td>
                  {{ $category->name }}
                </td>
                <td>
                  <a class="btn btn-xs btn-info" href="{{ route('category.edit',['id' => $category->id]) }}">Edit</a>
                </td>
                <td>
                  <a class="btn btn-xs btn-danger" href="{{ route('category.delete',['id' => $category->id]) }}">Delete</a>
                </td>
              </tr>
            @endforeach
          @else
            <tr>
              <td class='text-center' colspan='3'>No Category Found.</td>
            </tr>
          @endif
        </tbody>
      </table>
    </div>
  </div>
@stop
