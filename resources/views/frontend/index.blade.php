@extends('layouts.app')


@section('content')
@include('layouts.inc.frontend-navbar')

<div class="container">
        <div class="row">


                    <div class="col-md-6">
                        @foreach($lead as $postitem)
                        <div class=" bg-white border px-2 py-2">
                        <a href="{{ url('category/'.$postitem->category->slug.'/'.$postitem->slug) }}" class="text-decoration-none" >
                            <div class="img">
                                <img src="{{asset('uploads/post/'.$postitem->image)}}" alt="" width="100%" height="350px">
                            </div>
                            <div class="post-title bangla-font">
                            
                                <h2 class="fs-2 fw-bold ">{{ $postitem->name }}</h2>
                                
                            </div>
                            <div class="post-description bangla-font">
                                <p>{!! Str::limit($postitem->description, 300, $end='..বিস্তারিত..') !!}</p>
                            </div>
                        </a>
                        </div>
                        @endforeach 
                    </div>

      
                              
                        <div class="col-md-3">
                            <div class="card">
                                @foreach($lead2 as $postitem)
                                <div class="card-body lead2">
                                <a href="{{ url('category/'.$postitem->category->slug.'/'.$postitem->slug) }}" class="text-decoration-none" >

                                        <h4 class=" bangla-font fs-4 fw-bold ">{{ $postitem->name }}</h4>
                                       
                                </a>   
                                </div>
                                @endforeach
                            </div>    
                        </div>



                        <div class="col-md-3">
                            <div class="card">
                                @foreach($lead3 as $postitem)
                                <a href="{{ url('category/'.$postitem->category->slug.'/'.$postitem->slug) }}" class="text-decoration-none" >

                                <img src="{{asset('uploads/post/'.$postitem->image)}}" alt="..." width="100%">
                                <div class="card-body">
                                        <h5 class="card-title bangla-font fw-bold">{{ $postitem->name }}</h5>
                                        <p class="card-text"><span class="">{{ $postitem->updated_at }}</p>
  
                                </div>
                                </a>
                                @endforeach
                            </div>
                        </div>

        </div>



   
        <div class="row">
        @foreach($lead4 as $postitem)
            <div class="col-md-3 border" style="height: 120px;">
            <a href="{{ url('category/'.$postitem->category->slug.'/'.$postitem->slug) }}" class="text-decoration-none" >

                <div class="row py-2">

                    <div class="col-md-4" style="height: 120px;">
                        <img src="{{asset('uploads/post/'.$postitem->image)}}" alt="..." width="100%" height="60%">
                    </div>
                    <div class="col-md-8" style="height: 100%;">
                        <h5 class="bangla-font fw-bold">{{ $postitem->name }}</h5>
                        <p class="text-center">{{ $postitem->updated_at }}</p>
                    </div>
                    
                </div>
                </a>   
            </div>
            @endforeach
        </div>
  


</br>
        
                        <div class="row">
                        

                                <div class="col-md-9">
                                <h2 class="border bangla-font">জাতীয়<h2>
                                    <div class="row">
                                    @foreach($national as $npostitem)

                                            <div class="col-md-3">

                                            <a href="{{ url('category/'.$npostitem->category->slug.'/'.$npostitem->slug) }}" class="text-decoration-none" >

                                                    <img src="{{asset('uploads/post/'.$npostitem->image)}}" alt="..." width="100%">
                                                    <div class="card-body">
                                                            <h5 class="card-title bangla-font">{{ $npostitem->name }}</h5>
                                                    </div>
                                            </a>
  
                                            </div>
                                            @endforeach

                                    </div>
                                </div>


                                    <div class="col-md-3 other-section bangla-font">
                                           
                                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                            <li class="nav-item latest" role="presentation">
                                                <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">সর্বশেষ</button>
                                            </li>
                                            <li class="nav-item latest" role="presentation">
                                                <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Profile</button>
                                            </li>
                                            
                                            </ul>
                                            <div class="tab-content widthscroll" id="myTabContent">

                                                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                                
                                                            <div class="row">
                                                            @foreach($latestpost as $npostitem)
                                                                
                                                            <div class="pad">
                                                                    <a  href="{{ url('category/'.$npostitem->category->slug.'/'.$npostitem->slug) }}" class="text-decoration-none" >

                                                                
                                                                    <span style="margin-top:10px" class="border-bottom">
                                                                    <h7  class="fw-bold bangla-font">{{ $npostitem->name }}</h7>
                                                                    </span>
                                                                            
                                                                    
                                                                    </a>
                                                            </div>    
                                                            @endforeach 
                                                            </div>
                                                            
                                                    </div>

                                                    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">...</div>
                                                    <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">...</div>
                                            </div>
                                    </div>


                        </div>







                                    <div class="row">
                                            <div class="col-md-9">
                                                <h2 class="border bangla-font">রাজনীতি<h2>
                                                    <div class="row">
                                                    @foreach($politics as $postitem)

                                                            <div class="col-md-3">

                                                            <a href="{{ url('category/'.$postitem->category->slug.'/'.$postitem->slug) }}" class="text-decoration-none" >

                                                                    <img src="{{asset('uploads/post/'.$postitem->image)}}" alt="..." width="100%">
                                                                    <div class="card-body">
                                                                            <h5 class="card-title bangla-font">{{ $postitem->name }}</h5>
                                                                    </div>
                                                            </a>
                
                                                            </div>
                                                            @endforeach

                                                    </div>
                                                </div>
                                    </div>



                                    <div class="row">
                                            <div class="col-md-9">
                                                <h2 class="border bangla-font">আন্তর্জাতিক<h2>
                                                    <div class="row">
                                                    @foreach($politics as $postitem)

                                                            <div class="col-md-3">

                                                            <a href="{{ url('category/'.$postitem->category->slug.'/'.$postitem->slug) }}" class="text-decoration-none" >

                                                                    <img src="{{asset('uploads/post/'.$postitem->image)}}" alt="..." width="100%">
                                                                    <div class="card-body">
                                                                            <h5 class="card-title bangla-font">{{ $postitem->name }}</h5>
                                                                    </div>
                                                            </a>
                
                                                            </div>
                                                            @endforeach

                                                    </div>
                                                </div>
                                    </div>




</div>



@include('layouts.inc.frontend-footer')
@endsection

