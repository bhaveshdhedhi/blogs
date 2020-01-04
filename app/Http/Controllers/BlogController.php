<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Post;
use Auth;
use App\User;

class BlogController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {   
        $categories = Category::all();
        $posts = Post::selectRaw('posts.id, posts.title, posts.body, posts.created_at, GROUP_CONCAT(categories.name) as category_name,users.name')
            ->join('users', 'posts.user_id', '=', 'users.id')
            ->join('category_post', 'posts.id', '=', 'category_post.post_id')
            ->join('categories', 'category_post.category_id', '=', 'categories.id')
            ->groupBy('posts.id')
            ->orderBy('posts.created_at','desc')
            ->get();        
        return view('blog.index',compact('posts','users','categories'));  
    }

    public function indexAjax(Request $request)
    {        

        $categories = Category::all();
        $posts = Post::selectRaw('posts.id, posts.title, posts.body, posts.created_at, GROUP_CONCAT(categories.name) as category_name,users.name')
            ->join('users', 'posts.user_id', '=', 'users.id')
            ->join('category_post', 'posts.id', '=', 'category_post.post_id')
            ->join('categories', 'category_post.category_id', '=', 'categories.id')
            ->groupBy('posts.id')
            ->orderBy('posts.created_at','desc')
            ->where('users.name','like','%'.$request->user.'%')
            ->get();        
        return view('blog.indexajax',compact('posts','users','categories'));  
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::all();
        return view('blog.create',compact('categories'));       
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required',            
            'category' => 'required',
            'body' => 'required',
        ]);

        $user_id =  Auth::user()->id;

        $post = new Post;
        $post->title = $request->title;        
        $post->user_id = $user_id;
        $post->body = $request->body;        
        $post->save();

        $post->categories()->attach($request->category);       
   
        return redirect()->route('blog.index')->with('success','Post created successfully.');
    }
}
