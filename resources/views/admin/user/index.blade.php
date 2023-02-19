@extends('layouts.master')

@section('title','View Users')


@section('content')



<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">

    <form action="{{ url('admin/delete-user') }}" method="POST">
            @csrf
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Delete User</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="user_delete_id" id="user_id">
                    <h5>Are you sure want to delete this user</h5>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-danger">Yes Delete</button>
                </div>
     </form>
    </div>
  </div>
</div>





<div class="container-fluid px-4">

<div class="card mt-4">


          

    <div class="card-header">
        <h4>View Users
        <a href="{{url('admin/add-user')}}" class="btn btn-primary btn-sm float-end">Add User</a> 
        <h4>
        </div>
    <div class="card-body">

            @if(session('message'))
                <div class="alert alert-success">{{session('message')}}</div>
            @endif
            
        
                <table id="myDataTable" class="table table-boardred">

                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Username</th>
                        <th>Email</th>
                       
                        <th>Role</th>
                        <th>Edit</ht>
                        <th>Delete</ht>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($users as $item)
                    <tr>
                        <td>{{$item->id}}</td>
                        <td>{{$item->name}}</td>
                        <td>{{$item->email}}</td>
                        
                        <td>{{$item->role_as == '1' ? 'Admin':'User'}}</td>

                        <td>
                            <a href="{{url('admin/user/'.$item->id)}}" class="btn btn-success">Edit</a>
                        </td>

                        
                        <td>
                                <button type="button" class="btn btn-danger deleteUserBtn" value="{{ $item->id }}">Delete</button>

                            </td>

                        
                    </tr>
                    @endforeach
                </tbody>
                </table>
    </div>
</div>
</div>
@endsection


@section('scripts')
<script>
    $(document).ready(function(){
     
            $(document).on('click','.deleteUserBtn', function(e){
            e.preventDefault();
             
            var user_id = $(this).val();
            $('#user_id').val(user_id);

            $('#deleteModal').modal('show');
        });
    });
</script>

@endsection