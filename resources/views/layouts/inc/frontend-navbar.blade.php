<div class="global-navbar">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
               <a href="{{url('/')}}"> <img src="{{asset('assets/images/logo.png')}}" class="w-100" alt="logo" />
              </a>
            </div>

            <div class="col-md-8">
                <h5>Advertisement Here</h5>
            </div>
        </div>
    </div>


    <nav class="navbar navbar-expand-lg bg-light">
  <div class="container">
    
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item" style="font-size:18px;">
          <a  class="nav-link active bangla-font fw-bold" aria-current="page" href="/">প্রচ্ছদ</a>
        </li>
        
        

        @php
            $categories = App\Models\Category::where('navbar_status','0')->where('status','0')->get();
            $categoriesdrowpdown = App\Models\Category::where('navbar_status','1')->where('status','0')->get();
        @endphp

        @foreach($categories as $cateitem)
        <li class="nav-item" style="font-size:18px;">
          <a class="nav-link bangla-font fw-bold" href="{{ url('category/' .$cateitem->slug) }}">{{$cateitem->name}}</a>
        </li>
        @endforeach


        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle bangla-font fw-bold" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            অন্যান্য
          </a>
          <ul class="dropdown-menu">
                @foreach($categoriesdrowpdown as $cateitem)
                <li class="nav-item" style="font-size:18px;">
                  <a class="nav-link bangla-font fw-bold" href="{{ url('category/' .$cateitem->slug) }}">{{$cateitem->name}}</a>
                </li>
                @endforeach
           
          </ul>
        </li>



      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>


</div>