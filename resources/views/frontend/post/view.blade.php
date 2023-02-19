@extends('layouts.app')

@section('content')
@include('layouts.inc.frontend-navbar')

<section class="my-3 mx-3 bg-light category">
        <div class="row">
            <div class="col-sm-7 col-md-6 col-lg-6 col-xl-7">
              
                <div class="main-post bg-white border px-2 py-2">
                    <div class="img">
                        <img src="{{asset('uploads/post/'.$post->image)}}" alt="" width="100%" height="350px">
                    </div>
                    <div class="post-title bangla-font">
                        <p class="py-3"><span>{{ $post->updated_at }}</p>
                        <h2 class="fs-3 fw-bold">{{ $post->name }}</h2>
                    </div>
                    <div class="post-description bangla-font">
                        <p>{!! $post->description !!}</p>
                    </div>
                </div>
           
            </div>

           

        </div>  
</section> 


@endsection