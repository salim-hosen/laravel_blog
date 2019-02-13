@extends('layouts.app')


@section('content')

  @include('admin.includes.errors')

  <div class="panel panel-default">

    <div class="panel-heading">
        Edit Profile
    </div>

    <div class="panel-body">
      <form action="{{ route('settings.update') }}" method="post">
        {{ csrf_field() }}

        <div class="form-group">
          <label for="name">Site Name</label>
          <input type="text" name="site_name" class="form-control" value="{{ $setting->site_name }}">
        </div>

        <div class="form-group">
          <label for="email">Contact Email</label>
          <input type="email" name="contact_email" class="form-control" value="{{ $setting->contact_email }}">
        </div>

        <div class="form-group">
          <label for="number">Contact Number</label>
          <input type="text" name="contact_number" class="form-control" value="{{ $setting->contact_number }}">
        </div>

        <div class="form-group">
          <label for="address">Address</label>
          <input type="text" name="address" class="form-control" value="{{ $setting->address }}">
        </div>


        <div class="form-group">
          <div class="text-center">
            <button type="submit" class="btn btn-success">Change Settings</button>
          </div>
        </div>

      </form>
    </div>

  </div>
@stop
