@extends('layouts.app')

@section('content')
  <div class="panel panel-default">
    <div class="panel-body">
      <table class="table table-hover">
        <thead>
          <th>
            Tag Name
          </th>
          <th>
            Edit
          </th>
          <th>
            Delete
          </th>
        </thead>
        <tbody>
          @if($tags->count() > 0)
            @foreach($tags as $tag)
              <tr>
                <td>
                  {{ $tag->tag }}
                </td>
                <td>
                  <a class="btn btn-xs btn-info" href="{{ route('tag.edit',['id' => $tag->id]) }}">Edit</a>
                </td>
                <td>
                  <a class="btn btn-xs btn-danger" href="{{ route('tag.delete',['id' => $tag->id]) }}">Delete</a>
                </td>
              </tr>
            @endforeach
          @else
            <tr>
              <td class='text-center' colspan='3'>No Tag Found.</td>
            </tr>
          @endif
        </tbody>
      </table>
    </div>
  </div>
@stop
