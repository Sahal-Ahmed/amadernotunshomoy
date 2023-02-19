<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
Use App\Http\Requests\Admin\SubCategoryFromRequest;
use App\Models\Subcategory;
use App\Models\Category;
use Illuminate\Support\Facades\Auth;

class SubcategoryController extends Controller
{
    public function create(){

        $category=Category::where('status','0')->get();
      
        return view ('admin.subcategory.create',compact('category'));
    }


    public function index(){

        $subcategory= Subcategory::all();
        return view('admin.subcategory.index', compact('subcategory'));
    }




    public function store(SubCategoryFromRequest $request)
    {
        $data=$request->validated();

        $subcategory = new Subcategory;
        $subcategory->category_id= $data['category_id'];
        $subcategory->name=$data['name'];
        $subcategory->slug=$data['slug'];
        $subcategory->description=$data['description'];

      

        $subcategory->meta_title=$data['meta_title'];
        $subcategory->meta_description=$data['meta_description'];
        $subcategory->meta_keyword=$data['meta_keyword'];

        $subcategory->navbar_status=$request->navbar_status==true ? '1':'0';
        $subcategory->status=$request->status==true ? '1':'0';
        $subcategory->created_by=Auth::user()->id;

        $subcategory->save();

        return redirect('admin/subcategory')->with('message','Sub Category Added Successfully');
    }


    public function edit($subcategory_id)
    {
        $subcategory=Subcategory::find($subcategory_id);
        return view('admin.subcategory.edit', compact('subcategory'));
    }



    public function destroy(Request $request)
        
        {
            $subcategory=Subcategory::find($request->subcategory_delete_id);
 
            $subcategory->delete();
            return redirect('admin/subcategory')->with('message','Subcategory Deleted Successfully');
        }

    

}
