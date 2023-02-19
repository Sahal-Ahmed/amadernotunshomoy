@extends('layouts.app')

@section('content')
@include('layouts.inc.frontend-navbar')

<div class="container">
        <div class="row">
            
            <div class="col-md-9">
                
                    
                        <div class="border-bottom bg-white py-2">
                            <h5 >{{$category->name}}</h5>
                        </div>

                        <div class="row">
                    @forelse($post as $postitem)

                        <div class="col-md-3">
                             <img src="{{asset('uploads/post/'.$postitem->image)}}" class="card-img-top" alt="...">
                            <div class="card-body">
                                <a href="{{ url('category/'.$category->slug.'/'.$postitem->slug) }}" class="text-decoration-none">
                                    <h6 class="card-title">{{ $postitem->name }}</h6>
                                </a>
                            </div>

                        </div>
                    @empty
                    
                    <div> No News Found</div>
                        @endforelse
                   
                
            </div>
            
        </div>
        
</div>


@endsection