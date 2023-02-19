@extends('layouts.master')

@section('title','create Users')


@section('content')
<div class="container-fluid px-4">

<div class="card mt-4">


          

                <form action="{{url('admin/add-user')}}" method="POST" enctype="multipart/form-data">
                                    @csrf

                                    <div class="md-3">
                                        <label for="">Full Name</label>
                                        <input type="text" name="name" class="form-control" required>
                                    </div>

                                    <div class="md-3">
                                        <label for="">Email ID</label>
                                        <input type="email" name="email" class="form-control" required>
                                    </div>

                                    <div class="md-3">
                                        <label for="">Password</label>
                                        <input type="password" name="password" class="form-control" required>
                                    </div>


                                    <div class="mb-3">
                                            <label>Role as</label>
                                            <select name="role_as" class="form-control">
                                                <option value="1">Admin</option>
                                                <option value="0">User</option>
                                                <option value="2">Blogger</option>
                                            </select>
                                    </div>

     

          
                                    <div class="mb-3">
                                        <button type="submit" class="btn btn-primary">Create User</button>
                                    </div>
    
                </form>
</div>
</div>
@endsection