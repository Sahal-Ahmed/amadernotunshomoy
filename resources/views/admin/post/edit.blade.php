@extends('layouts.master')

@section('title','Edit Post')


@section('content')
<div class="container-fluid px-4">

<div class="card mt-4">



                           

    <div class="card-header">
        <h4>Edit Post
            <a href="{{url('admin/posts')}}" class="btn btn-danger float-end">BACK</a>
        <h4>
        </div>
    <div class="card-body">

                            @if($errors->any())
                            <div class="alert alert-danger">
                            @foreach($errors->all() as $error)
                            <div>{{$error}}</div>
                            </div>
                            @endforeach
                            @endif

                <div class="row">
                        <div class="col-9 card">

                            <form action="{{url('admin/update-post/'.$post->id)}}" method="POST" enctype="multipart/form-data">
                                @csrf
                                @method('PUT')

                                <div class="mb-3">
                                    <label for="">Title</label>
                                    <input type="text" name="name" value="{{$post->name}}" class="form-control"/>
                                </div>

                                <div class="mb-3">
                                    <label for="">Description</label>
                                    <textarea type="text" name="description" id="mysummernote" class="form-control">{!! $post->description !!}</textarea>
                                </div>

                                <div class="mb-3">
                                    <label for="">Slug</label>
                                    <input type="text" name="slug" value="{{$post->slug}}" class="form-control"/>
                                </div>

                              

                                <div class="mb-3">
                                    <label for="">Youtube Iframe Link</label>
                                    <input type="text" name="yt_iframe" value="{{$post->yt_iframe}}" class="form-control"/>
                                </div>

                               

                                <div class="mb-3">
                                    <label for="">Meta Description</label>
                                    <textarea type="text" name="meta_description" class="form-control">{{$post->meta_description}}</textarea>
                                </div>

                                <div class="mb-3">
                                    <label for="">Meta Keyword</label>
                                    <textarea type="text" name="meta_keyword" class="form-control"></textarea>
                                </div>

                                <h4>Status</h4>
                                <div class="row">
                                    <div class="mb-3 col-6">
                                        <label for="">Status</label>
                                        <input type="checkbox" name="status" {{$post->status=='1' ? 'checked':''}}/>
                                    </div>

                                    <div class="mb-3 col-6">
                                        <button type="submit" class="btn btn-primary float-end">Update</button>
                                    </div>
                                </div>
                            
                        </div>

                        <div class="col-3 card">
                                <div class="mb-3 mt-4">
                                    <label for="">Category</label>
                                    <select id="country" name="category_id" class="form-control">
                                        <option value="">--Select Category--</option>
                                        @foreach($category as $cateitem)
                                        <option value="{{$cateitem->id}}" {{$post->category_id==$cateitem->id ? 'selected':''}}>{{$cateitem->name}}</option>
                                        @endforeach
                                    </select>
                                </div>

                                
                                <div class="mb-3">
                                    <label for="">Sub Category</label>
                                    <select id="state" name="subcategory" class="form-control">
                                        
                                    </select>
                                </div>


                                <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
                            
                            <script>
                                jQuery(document).ready(function(){
                                    jQuery('#country').change(function(){
                                     let cid=jQuery(this).val();
                                     jQuery.ajax({
                                        url:'/getState',
                                        type:'post',
                                        data: 'cid='+ cid +' & _token={{csrf_token()}}',
                                        success:function(result){
                                            jQuery('#state').html(result)
                                        }
                                     });      
                                    });
                                });

                                
                            </script>





                                <div class="mb-3">
                                    <label for="">Meta Title</label>
                                    <input type="text" name="meta_title" value="{{$post->meta_title}}" class="form-control"/>
                                </div>
                                
                                <div class="md-3">
                                        <label for="">Image</label>
                                        <input type="file" name="image" value="{{asset('uploads/post/'.$post->image)}}" id="profile_image" onchange="loadPreview(this);" class="form-control">
                                    </div>


                                    

                                    <div class="col-md-4"></div>
                                        <div class="form-group col-md-4">
                                     
                                        <label for="profile_image"></label>
                                            <img id="preview_img" src="{{asset('uploads/post/'.$post->image)}}" class="" width="200" height="150" alt="Img"/>
                                        

                                           
                                        </div>
                                  


                                    <script>
                                        function loadPreview(input, id) {
                                            id = id || '#preview_img';
                                            if (input.files && input.files[0]) {
                                                var reader = new FileReader();
                                        
                                                reader.onload = function (e) {
                                                    $(id)
                                                            .attr('src', e.target.result)
                                                            .width(200)
                                                            .height(150);
                                                };
                                        
                                                reader.readAsDataURL(input.files[0]);
                                            }
                                        }
                                    </script>


                        </div>
                        </form>
                </div>
    </div>
</div>
</div>
@endsection