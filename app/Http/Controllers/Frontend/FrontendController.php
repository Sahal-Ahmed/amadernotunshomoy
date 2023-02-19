<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Post;
use Illuminate\Http\Request;

class FrontendController extends Controller
{
    public function index(){

        $lead=Post::where('status', 0)->where('category_id','5')->latest()->limit(1)->get();
        $lead2=Post::where('status', 0)->where('category_id','19')->latest()->limit(6)->get();
        $lead3=Post::where('status', 0)->where('category_id','22')->latest()->limit(2)->get();
        $lead4=Post::where('status', 0)->where('category_id','23')->latest()->limit(4)->get();
        $national=Post::where('status', 0)->where('category_id','4')->latest()->limit(8)->get();

        $latestpost=Post::where('status', 0)->latest()->limit(15)->get();

        $politics=Post::where('status', 0)->where('category_id','7')->latest()->limit(8)->get();

        
       return view('frontend.index', compact('lead','lead2','lead3','lead4','national','latestpost','politics'));
    }


    public function viewCategoryPost($category_slug)
    {

        $category = Category::where('slug', $category_slug)->where('status', '0')->first();

        if($category)
        {

            $post = Post::where('category_id', $category->id)->where('status','0')->latest()->limit(12)->get();

            return view('frontend.post.index', compact('post','category'));
        }

        else{
            return redirect('/');
        }

        return view('frontend.index');
    }


    public function viewPost(string $category_slug, string $post_slug)
    {
        $category = Category::where('slug', $category_slug)->where('status', '0')->first();

        if($category)
        {
            $post = Post::where('category_id', $category->id)->where('slug', $post_slug)->where('status','0')->first();

            return view('frontend.post.view', compact('post'));
        }

        else{
            return redirect('/');
        }
    }



 

       
    



}
