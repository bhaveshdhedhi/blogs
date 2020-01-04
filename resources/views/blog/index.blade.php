@extends('layouts.app')

@section('content')
<div class="container">

    <div class="row justify-content-center">
        <div class="col-md-12">
            <a href="{{ route('blog.create') }}" class="btn btn-primary"> Add New Post</a>    
            <br />
            <br />
            <form action="{{ route('blog.index') }}" method="GET">
                <div class="row">   
                    <div class="col-xs-4 col-sm-4 col-md-4">
                        <div class="form-group">
                            <strong>Date:</strong>                                  
                            <input id="date" type="date" name="date" class="form-control">
                        </div>
                    </div>
                    <div class="col-xs-4 col-sm-4 col-md-4">
                        <div class="form-group">
                            <strong>Category:</strong>                                    
                            <select name="category[]"  class="form-control" multiple>                                        
                                @foreach ($categories as $category)                                            
                                    <option value="{{ $category->id }}">{{ $category->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>             
                    <div class="col-xs-4 col-sm-4 col-md-4">
                        <div class="form-group">
                            <strong>Author:</strong>
                            <input type="text" name="user" id="user" placeholder="author name" class="form-control">
                        </div>
                    </div>
                </div>
                <div class="row">   
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <input id="submit_btn" type="button" class="btn btn-primary" value="Search">
                        </div>
                    </div>
                </div>
            </form>
            <div id="result">
                <h1>Posts</h1>
                @if(count($posts) > 0)
                    @foreach($posts as $post)
                        <div class="well">
                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <hr>
                                    <h3><a href="/posts/{{$post->id}}">{{$post->title}}</a></h3>
                                    <div>
                                        {!! $post->body !!}
                                    </div>
                                    <span style="color:grey;"><b> {{$post->category_name}} </b><span> 
                                    <small>Written on {{ date('d/m/Y', strtotime($post->created_at)) }} by {{$post->name}}</small>                                
                                </div>
                            </div>
                        </div>
                    @endforeach
                    
                @else
                    <p>No posts found</p>
                @endif
            </div>
        </div>
    </div>
</div>
@endsection
@section('custom-js')

<script type="text/javascript">
$(document).ready(function(){

    $.ajaxSetup({
          headers: {
              'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          }
    });
    
  
   
    $(document).on('click', '#submit_btn', function(){
        var user = $('#user').val();
        var date = $('#date').val();
        var category = $('#category').val();
        $.ajax({
            url: "{{ route('indexajax') }}",
            type: 'GET',
            data: {
                'user': user,
                'date': date,
                'category': category,
            },
            success: function(response){        
                $('#result').html(response);
            }
        });
    });
});
</script>
@endsection