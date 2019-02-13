@extends('layouts.app')

@section('content')
  <div class="panel panel-default">
    <div class="panel-body">
      <table class="table table-hover">
        <thead>
          <th>
            Image
          </th>
          <th>
            Title
          </th>
          <th>
            Edit
          </th>
          <th>
            Trash
          </th>
        </thead>
        <tbody>
          @if($posts->count() > 0)
            @foreach($posts as $post)
              <tr>
                <td>
                  <img src="{{ $post->featured }}" alt="{{ $post->title }}" width="90" height="50"/>
                </td>
                <td>
                  {{ $post->title }}
                </td>
                <td>
                  <a class="btn btn-info btn-sm" href="{{ route('post.edit',['id' => $post->id]) }}">Edit</a>
                </td>
                <td>
                  <a class="btn btn-sm btn-danger" href="{{ route('post.delete',['id' => $post->id]) }}">Trash</a>
                </td>
              </tr>
            @endforeach
          @else
            <tr>
              <th colspan='4' class='text-center'>No Post Found.</th>
            </tr>
          @endif
        </tbody>
      </table>
    </div>
  </div>
@stop
