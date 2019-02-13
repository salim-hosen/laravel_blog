@extends('layouts.app')


@section('content')

  @include('admin.includes.errors')

  <div class="panel panel-default">

    <div class="panel-heading">
        Create New Post
    </div>

    <div class="panel-body">
      <form action="{{ route('post.store') }}" method="post" enctype="multipart/form-data">
        {{ csrf_field() }}
        <div class="form-group">
          <label for="title">Title</label>
          <input type="text" name="title" class="form-control">
        </div>

        <div class="form-group">
          <label for="featured">Featured</label>
          <input type="file" name="featured" class="form-control">
        </div>

        <div class="form-group">
          <label for="category">Select a Category</label>
          <select class="form-control" name="category_id">
            @foreach($categories as $category)
              <option value="{{ $category->id }}">{{ $category->name }}</option>
            @endforeach
          </select>
        </div>

        <div class="form-group">
          <label for="tags">Select Tags</label>
          @foreach($tags as $tag)
          <div class="checkbox">
              <label><input value="{{ $tag->id }}" type="checkbox" name="tags[]"/> {{ $tag->tag }}</label>
          </div>
          @endforeach
        </div>

        <div class="form-group">
          <label for="content">Content</label>
          <textarea name="content" id="content" class="form-control" cols="5" rows="5"></textarea>
        </div>

        <div class="form-group">
          <div class="text-center">
            <button type="submit" class="btn btn-success">Store Post</button>
          </div>
        </div>

      </form>
    </div>

  </div>
@stop

@section('styles')
	<link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
@stop

@section('scripts')
<!-- Include the Quill library -->
<script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>

<!-- Initialize Quill editor -->
<script>
  var quill = new Quill('#content', {
    theme: 'snow'
  });
</script>
@stop

