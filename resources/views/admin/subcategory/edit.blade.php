@extends('layouts.master')

@section('title','Sub Category')


@section('content')


<div class="container-fluid px-4">
                        
                     


                        <div class="card mt-4">
                            <div class="card-header">
                            <h4 class="">Edit Sub Category</h4>
                            </div>

                            <div class="card-body">

                            @if($errors->any())
                            <div class="alert alert-danger">
                            @foreach($errors->all() as $error)
                            <div>{{$error}}</div>
                            </div>
                            @endforeach
                            @endif


                                <form action="{{url('admin/update-subcategory/'.$subcategory->id)}}" method="POST" enctype="multipart/form-data">
                                    @csrf
                                    @method('PUT')

                                    <div class="md-3">
                                        <label for="">Sub Category Name</label>
                                        <input type="text" name="name" value="{{$subcategory->name}}" class="form-control">
                                    </div>

                                    <div class="md-3">
                                        <label for="">Slug</label>
                                        <input type="text" name="slug" value="{{$subcategory->slug}}"  class="form-control">
                                    </div>

                                    <div class="md-3">
                                        <label for="">Description</label>
                                        <textarea name="description" rows="5" class="form-control">{{$subcategory->description}}</textarea>
                                    </div>


                                    <h6>SEO Tags</h6>
                                    <div class="md-3">
                                        <label for="">Meta Title</label>
                                        <input type="text" name="meta_title" value="{{$subcategory->meta_title}}" class="form-control">
                                    </div>
                                    

                                    <div class="md-3">
                                        <label for="">Meta Description</label>
                                        <textarea name="meta_description"  class="form-control">{{$subcategory->meta_description}}</textarea>
                                    </div>


                                    <div class="md-3">
                                        <label for="">Meta Keyword</label>
                                        <textarea name="meta_keyword" class="form-control">{{$subcategory->meta_keyword}}</textarea>
                                    </div>

                                    <h6>Status Mode</h6>
                                    <div class="row">
                                        <div class="col-md-3 md-3">
                                            <label>Navbar Status</label>
                                            <input type="checkbox" name="navbar_status" {{$subcategory->navbar_status=='1' ? 'checked':''}}/>
                                        </div>
                                    

                                    <div class="col-md-3 md-3">
                                            <label>Status</label>
                                            <input type="checkbox" name="status" {{$subcategory->status=='1' ? 'checked':''}}/>
                                        </div>

                                        <div class="col-md-6">
                                            <button type="submit" class="btn btn-primary">Update Sub Category</button>
                                        </div>


                                    </div>

                                </form>
                            </div>

                        </div>
</div>
@endsection