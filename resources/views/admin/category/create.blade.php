@extends('layouts.master')

@section('title','Category')


@section('content')


<div class="container-fluid px-4">
                        
                     


                        <div class="card mt-4">
                            <div class="card-header">
                            <h4 class="">Add Category</h4>
                            </div>

                            <div class="card-body">

                            @if($errors->any())
                            <div class="alert alert-danger"></div>
                            @foreach($errors->all() as $error)
                            <div>{{$error}}</div>
                            @endforeach
                            @endif


                                <form action="{{url('admin/add-category')}}" method="POST" enctype="multipart/form-data">
                                    @csrf

                                    <div class="md-3">
                                        <label for="">Category Name</label>
                                        <input type="text" name="name" class="form-control" required>
                                    </div>

                                    <div class="md-3">
                                        <label for="">Slug</label>
                                        <input type="text" name="slug" class="form-control" required>
                                    </div>

                                    <div class="md-3">
                                        <label for="">Description</label>
                                        <textarea name="description" rows="5" class="form-control" required></textarea>
                                    </div>

                                    <div class="md-3">
                                        <label for="">Image</label>
                                        <input type="file" name="image" class="form-control" required>
                                    </div>

                                    <h6>SEO Tags</h6>
                                    <div class="md-3">
                                        <label for="">Meta Title</label>
                                        <input type="text" name="meta_title" class="form-control">
                                    </div>
                                    

                                    <div class="md-3">
                                        <label for="">Meta Description</label>
                                        <textarea name="meta_description" class="form-control"></textarea>
                                    </div>


                                    <div class="md-3">
                                        <label for="">Meta Keyword</label>
                                        <textarea name="meta_keyword" class="form-control"></textarea>
                                    </div>

                                    <h6>Status Mode</h6>
                                    <div class="row">
                                        <div class="col-md-3 md-3">
                                            <label>Navbar Status</label>
                                            <input type="checkbox" name="navbar_status"/>
                                        </div>
                                    

                                    <div class="col-md-3 md-3">
                                            <label>Status</label>
                                            <input type="checkbox" name="status"/>
                                        </div>

                                        <div class="col-md-6">
                                            <button type="submit" class="btn btn-primary">Save Category</button>
                                        </div>


                                    </div>

                                </form>
                            </div>

                        </div>
</div>
@endsection