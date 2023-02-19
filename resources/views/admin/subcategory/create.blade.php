@extends('layouts.master')

@section('title','SubCategory')


@section('content')


<div class="container-fluid px-4">
                        
                     


                        <div class="card mt-4">
                            <div class="card-header">
                            <h4 class="">Add Sub Category</h4>
                            </div>

                            <div class="card-body">

                            @if($errors->any())
                            <div class="alert alert-danger"></div>
                            @foreach($errors->all() as $error)
                            <div>{{$error}}</div>
                            @endforeach
                            @endif


                                <form action="{{url('admin/add-subcategory')}}" method="POST" enctype="multipart/form-data">
                                    @csrf

                                    <div class="md-3">
                                        <label for="">Sub Category Name</label>
                                        <input type="text" name="name" class="form-control">
                                    </div>

                                    <div class="mb-3">
                                    <label for="">Parent Category</label>
                                    <select name="category_id" class="form-control">
                                    <option value="">--Select Parent Category--</option>
                                        @foreach($category as $cateitem)
                                        <option value="{{$cateitem->id}}">{{$cateitem->name}}</option>
                                        @endforeach
                                    </select>
                                </div>

                                
                                    <div class="md-3">
                                        <label for="">Slug</label>
                                        <input type="text" name="slug" class="form-control">
                                    </div>

                                    <div class="md-3">
                                        <label for="">Description</label>
                                        <textarea name="description" rows="5" class="form-control"></textarea>
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
                                            <button type="submit" class="btn btn-primary">Save Sub Category</button>
                                        </div>


                                    </div>

                                </form>
                            </div>

                        </div>
</div>
@endsection