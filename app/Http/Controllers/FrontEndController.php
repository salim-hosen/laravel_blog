<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Setting;
use App\Category;
use App\Post;
use App\Tag;

class FrontEndController extends Controller
{
    public function index(){

      return view('index')->with('setting',Setting::first())
                          ->with('title',Setting::first()->site_name)
                          ->with('categories',Category::take(5)->get())
                          ->with('latest',Post::orderBy('created_at','desc')->first())
                          ->with('second',Post::orderBy('created_at','desc')->skip(1)->take(1)->get()->first())
                          ->with('third',Post::orderBy('created_at','desc')->skip(2)->take(1)->get()->first())
                          ->with('wordpress',Category::find(2))
                          ->with('tutorials',Category::find(4));
    }

    public function singlePost($slug){
      $post = Post::where('slug',$slug)->first();

      $next_id = Post::where('id','>',$post->id)->min('id');
      $prev_id = Post::where('id','<',$post->id)->max('id');

      return view('single')->with('post',$post)
                           ->with('title',$post->title)
                           ->with('setting',Setting::first())
                           ->with('categories',Category::take(5)->get())
                           ->with('next',Post::find($next_id))
                           ->with('prev',Post::find($prev_id))
                           ->with('tags',Tag::all());
    }

    public function categoryPost($id){
      $category = Category::find($id);

      return view('category')->with('title',$category->name)
                             ->with('categories',Category::take(5)->get())
                             ->with('setting',Setting::first())
                             ->with('posts',$category->posts)
                             ->with('tags',Tag::all());
    }

    public function tagPost($id){
      $tag = Tag::find($id);

      return view('tags')->with('title',$tag->tag)
                             ->with('categories',Category::take(5)->get())
                             ->with('setting',Setting::first())
                             ->with('posts',$tag->posts)
                             ->with('tags',Tag::all());
    }

    public function results(){
      $post = Post::where('title','like','%'.request('query').'%')->get();
      return view('results')->with('title','Search Results for '.request('query'))
                            ->with('categories',Category::take(5)->get())
                            ->with('setting',Setting::first())
                            ->with('posts',$post)
                            ->with('tags',Tag::all());
    }
}
