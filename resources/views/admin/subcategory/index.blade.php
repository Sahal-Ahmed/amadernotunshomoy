@extends('layouts.master')

@section('title','Sub Category')


@section('content')




<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">

    <form action="{{ url('admin/delete-subcategory') }}" method="POST">
            @csrf
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Delete Sub Category</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="subcategory_delete_id" id="subcategory_id">
                    <h5>Are you sure want to delete this sub category</h5>
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
<h4> View Sub Category
    <a href="{{url('admin/add-subcategory')}}" class="btn btn-primary btn-sm float-end">Add Sub Category</a>
</h4>
    </div>

    <div class="card-body">
            @if(session('message'))
                <div class="alert alert-success">{{session('message')}}</div>
            @endif


            <table id="myDataTable" class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Sub Category Name</th>
                        
                        <th>Status</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                    </thead>
                    <tbody>
                        @foreach($subcategory as $item)

                        <tr>
                            <td>{{$item->id}}</td>
                            <td>{{$item->name}}</td>
                           
                            <td>{{$item->status=='1' ?'Hidden':'Shown'}}</td>
                            <td>
                                <a href="{{url('admin/edit-subcategory/'.$item->id)}}" class="btn btn-success">Edit</a>

                            </td>


                            <td>
                                <button type="button" class="btn btn-danger deleteSubcategoryBtn" value="{{ $item->id }}">Delete</button>

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
        //$('.deleteCategoryBtn').click(function (e) {
            $(document).on('click','.deleteSubcategoryBtn', function(e){
            e.preventDefault();
             
            var subcategory_id = $(this).val();
            $('#subcategory_id').val(subcategory_id);

            $('#deleteModal').modal('show');
        });
    });
</script>

@endsection