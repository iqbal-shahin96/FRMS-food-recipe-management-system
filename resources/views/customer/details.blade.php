@extends('customer.partials.master')
@section('page-title')
  <title>Recipe Details</title>
@endsection

@section('page-content')
<div class="container-xxl container-p-y">
    <div class="container cardimg1 card">
          <div>
            <br><br>
          </div>
      
          <div class="row">
            <div class="col-6 me-4">
              <img class="logo_border" src="/storage/{{ $details->photo }}" height="300" width="500px" alt="">
            </div>
            
            <div class="col-5 ms-5">
              <p  class="colorb jstify fw-semibold">Prepare foods with Love. Feel the colours of food like, if you overcooked, it will go bad color as black. Feel the spices, if you watch carefully, you will come to know how much salt and spices you should add.<span class="fw-bolder bckk" id="fs"> 'Food & Coocking'</span> is here to help you. We are sharing recipies to guide you making delicious foods.</p>

                <div class="my-4">
                  <p class="colorb fw-bold">
                    <img class="menu-icon tf-icons" src="{{ asset('frontend_theme/img/core-img/new/category.png') }}" alt="" height="20px" width="20px">Category: {{ $details->category }}
                  </p>
                  <p class="colorb fw-bold">
                    <img class="menu-icon tf-icons" src="{{ asset('frontend_theme/img/core-img/new/chef1.png') }}" alt="" height="20px" width="20px">Uploaded by: {{ $details->chef_name }}
                  </p>
                  <p class="colorb fw-bold">
                    <img class="menu-icon tf-icons" src="{{ asset('frontend_theme/img/core-img/new/calendar.png') }}" alt="" height="20px" width="20px">Uploaded on: {{ $details->created_at->format('d-m-Y') }}
                  </p>
                </div>
                   

            </div>
          </div>

        <div class="my-2">
            <h2 class="bckk fw-bold F_style">{{ $details->name }}</h2>
            <div class="r_duration">
              <h6 class="colorb fw-bold mb-1 ms-2">Prep: 15 mins</h6>
              <h6 class="colorb fw-bold mb-1 ms-2">Cook: 30 mins</h6>
              <h6 class="colorb fw-bold mb-1 ms-2">Yields: 8 Servings</h6>
            </div>

            <div class="row">
              <div class="col-8">
                <p class="colorb fw-semibold">
                  <h5 class="colorb jstify fw-bold">Description: </h5>{!! $details->description !!}
                </p>
              </div>

              <div class="col-4">
                <p class="colorb fw-semibold">
                  <h5 class="colorb jstify fw-bold">Ingredients: </h5>{!! $details->ingredient !!}
                </p>
              </div>
            </div>

        </div>

        <br>
        <div>
          <h4 class=" text-center colorb fw-bold">Thank you for being with us, Enjoy your Food..</h4>
        </div>
 
    </div>
    
</div>
@endsection