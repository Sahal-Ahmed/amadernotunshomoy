<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;

class UserController extends Controller
{
    public function index(){
        $users=User::all();
        return view('admin.user.index', compact('users'));
    }

    public function edit($user_id){
        $user= User::find($user_id);
        return view ('admin.user.edit', compact('user'));
    }


    public function update(Request $request, $user_id)
    {

        $user= User::find($user_id);
        if($user){
                $user->role_as = $request->role_as;
                $user->name = $request->name;
                $user->email = $request->email;
                $user->update();
                return redirect('admin/users')->with('message','Updated Successfully');
        }
        return redirect('admin/users')->with('message','No User Found');
    }

    public function create(){
        return view('admin.user.create');
    }



    public function store(Request $request)
    {
        

        $user = new User;
        $user->name=$request->name;
        $user->email=$request->email;
        $user->password=$request->password;
        $user->role_as= $request->role_as;


        $user->save();

        return redirect('admin/users')->with('message','User Added Successfully');
    }


    public function destroy(Request $request){
        $user=User::find($request->user_delete_id);
        $user->delete();
        return redirect('admin/users')->with('message','User Delete Successfully');
    }


}
