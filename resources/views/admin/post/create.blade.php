@extends('layouts.master')

@section('title','Add Post')


@section('content')
<div class="container-fluid px-4">

<div class="card mt-4">



                            @if($errors->any())
                            <div class="alert alert-danger">
                            @foreach($errors->all() as $error)
                            <div>{{$error}}</div>
                            @endforeach
                            </div>
                            @endif

    <div class="card-header">
        <h4>Add Post
            
        <h4>
        </div>
    <div class="card-body">
                <div class="row">
                        <div class="col-9 card">

                            <form action="{{url('admin/add-post')}}" method="POST" enctype="multipart/form-data">
                                @csrf

                                <div class="mb-3">
                                    <label for="">Title</label>
                                    <input type="text" name="name" class="form-control"/>
                                </div>

                                <div class="mb-3">
                                    <label for="">Description</label>
                                    <textarea type="text" name="description" id="mysummernote" class="form-control"></textarea>
                                </div>

                                <div class="mb-3">
                                    <label for="">Slug</label>
                                    <input type="text" name="slug" class="form-control"/>
                                </div>

                              

                                <div class="mb-3">
                                    <label for="">Youtube Iframe Link</label>
                                    <input type="text" name="yt_iframe" class="form-control"/>
                                </div>

                               

                                <div class="mb-3">
                                    <label for="">Meta Description</label>
                                    <textarea type="text" name="meta_description" class="form-control"></textarea>
                                </div>

                                <div class="mb-3">
                                    <label for="">Meta Keyword</label>
                                    <textarea type="text" name="meta_keyword" class="form-control"></textarea>
                                </div>

                                <h4>Status</h4>
                                <div class="row">
                                    <div class="mb-3 col-6">
                                        <label for="">Status</label>
                                        <input type="checkbox" name="status"/>
                                    </div>

                                    <div class="mb-3 col-6">
                                        <button type="submit" class="btn btn-primary float-end">Publish</button>
                                    </div>
                                </div>
                            
                        </div>

                        <div class="col-3 card">
                            

                                <div class="mb-3 mt-4">
                                    <label for="">Category</label>
                                    <select id="country" name="category_id" class="form-control">
                                    <option value="">--Select Category--</option>
                                        @foreach($category as $cateitem)
                                        <option value="{{$cateitem->id}}">{{$cateitem->name}}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="mb-3">
                                    <label for="">Sub Category</label>
                                    <select id="state" class="form-control">

                                     
                                    
                                        
                                        
                                        
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
                                    <input type="text" name="meta_title" class="form-control"/>
                                </div>
                                
                                <div class="md-3">
                                        <label for="">Image</label>
                                        <input type="file" name="image" id="profile_image" onchange="loadPreview(this);" class="form-control">
                                    
                                    </div>


                                    
                                    
                                        <div class="col-md-4"></div>
                                        <div class="form-group col-md-4">
           
                                        <label for="profile_image"></label>
                                            <img id="preview_img" src="https://w3adda.com/wp-content/uploads/2019/09/No_Image-128.png" class="" width="200" height="150"/>
                                        

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