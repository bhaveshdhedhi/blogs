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