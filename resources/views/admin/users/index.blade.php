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
            Name
          </th>
          <th>
            Permission
          </th>
          <th>
            Delete
          </th>
        </thead>
        <tbody>
          @if($users->count() > 0)
            @foreach($users as $user)
              <tr>
                <td>
                  <img src="{{ asset($user->profile->avatar) }}" alt="avatar" width='50' height='50' style="border-radius: 50%"/>
                </td>
                <td>
                  {{ $user->name }}
                </td>
                <td>
                  @if(!$user->admin)
                    <a class="btn btn-sm btn-success" href="{{ route('user.admin',['id' => $user->id]) }}">Make Admin</a>
                  @else
                    <a class="btn btn-sm btn-danger" href="{{ route('user.not.admin',['id' => $user->id]) }}">Remove Permission</a>
                  @endif
                </td>
                <td>
                  @if($user->id !== Auth::id())
                    <a class="btn btn-sm btn-danger" href="{{ route('user.delete',['id' => $user->id]) }}">Delete</a>
                  @endif
                </td>
              </tr>
            @endforeach
          @else
            <tr>
              <td class='text-center' colspan='3'>No User Found.</td>
            </tr>
          @endif
        </tbody>
      </table>
    </div>
  </div>
@stop
