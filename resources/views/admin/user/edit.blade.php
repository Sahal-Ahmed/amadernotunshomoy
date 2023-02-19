@extends('layouts.master')

@section('title','Edit Users')


@section('content')
<div class="container-fluid px-4">

<div class="card mt-4">


          

    <div class="card-header">
        <h4>Edit Users
            <a href="{{url('admin/users')}}" class="btn btn-danger float-end">Back</a>
        <h4>
        </div>
    <div class="card-body">

    

        

        <form action="{{url('admin/update-user/'.$user->id) }}" method="POST">
            @csrf
            @method('PUT')

                <div class="mb-3">
                <label>Full Name</label>
                    <input type="text" name="name" value="{{$user->name}}" class="form-control">
                </div>


                <div class="mb-3">
                    <label>Email ID</label>
                     <input type="email" name="email" value="{{$user->email}}" class="form-control">
                </div>


                <div class="mb-3">
                    <label>Created At</label>
                    <p class="form-control">{{$user->created_at->format('d/m/y')}}</p>
                </div>


                <div class="mb-3">
                    <label>Role as</label>
                    <select name="role_as" class="form-control">
                        <option value="1" {{$user->role_as == '1' ? 'selected':''}}>Admin</option>
                        <option value="0" {{$user->role_as == '0' ? 'selected':''}}>User</option>
                        <option value="2" {{$user->role_as == '2' ? 'selected':''}}>Blogger</option>
                    </select>
                </div>


                <div class="mb-3">
                    <button type="submit" class="btn btn-primary">Update User</button>
                </div>

        </form>
    </div>
</div>
</div>
@endsection