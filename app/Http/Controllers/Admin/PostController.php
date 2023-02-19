<?php

namespace App\Http\Controllers\Admin;
use App\Models\Category;
use App\Models\Subcategory;
use App\Models\Post;
use App\Models\User;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\Admin\PostFormRequest;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;


class PostController extends Controller
{
    public function index(){

        $posts = Post::all();
       

        

       return view('admin.post.index', compact('posts'));

      

    }

    public function getState(Request $request){
       echo  $cid=$request->post('cid');
       $state=Subcategory::where('category_id', $cid)->get();
       $html='<option value="">--Select Sub Category--</option>';
       foreach($state as $cateitem){
           $html.='<option value="'. $cateitem->id.'">'. $cateitem->name. '</option>';
       }
       echo $html;

    }


    public function create(){

        $category=Category::all();
        $subcategory=Subcategory::where('status','0')->get();
        return view('admin.post.create',compact('category','subcategory'));
    }

    public function store(PostFormRequest $request){

        $data=$request->validated();
        $post= new Post;

        $post->category_id= $data['category_id'];
        $post->subcategory_id= $request->subcategory;
        $post->name= $data['name'];
        //$post->slug= Str::slug($data['slug']);
        $post->slug= $data['slug'];
        
        $post->description= $data['description'];
        $post->yt_iframe= $data['yt_iframe'];
        $post->meta_title= $data['meta_title'];
        $post->meta_description = $data['meta_description'];
        $post->meta_keyword = $data['meta_keyword'];
        $post->status = $request->status== true ? '1':'0';
        $post->created_by = Auth::user()->id;

        if($request->hasfile('image')){
            $file=$request->file('image');
            $filename=time().'.'.$file->getClientOriginalExtension();
            $file->move('uploads/post/',$filename);
            $post->image=$filename;
        }

        $post->save();

        return redirect('admin/posts')->with('message','Post Added Successfully');

    }


    public function edit($post_id)
    {
        $category= Category::all();
        $subcategory= Subcategory::where('status','0')->get();
        $post=Post::find($post_id);
        return view('admin.post.edit',compact('post','category','subcategory'));

    }


    public function update(PostFormRequest $request,$post_id){

        $data=$request->validated();
        $post= Post::find($post_id);

        $post->category_id= $data['category_id'];
        $post->name= $data['name'];
        $post->slug= Str::slug($data['slug']);
        $post->description= $data['description'];
        $post->yt_iframe= $data['yt_iframe'];
        $post->meta_title= $data['meta_title'];
        $post->meta_description = $data['meta_description'];
        $post->meta_keyword = $data['meta_keyword'];
        $post->status = $request->status== true ? '1':'0';
        $post->created_by = Auth::user()->id;

        if($request->hasfile('image')){
            $file=$request->file('image');
            $filename=time().'.'.$file->getClientOriginalExtension();
            $file->move('uploads/post/',$filename);
            $post->image=$filename;
        }

        $post->update();

        return redirect('admin/posts')->with('message','Post updated Successfully');
    }


    public function destroy(Request $request){
        $post=Post::find($request->post_delete_id);
        $post->delete();
        return redirect('admin/posts')->with('message','Post Delete Successfully');
    }
}
