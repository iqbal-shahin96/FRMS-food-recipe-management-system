@extends('customer.partials.master')
@section('page-title')
  <title>Customer Account</title>
@endsection

@section('page-content')
<div class="container-xxl flex-grow-1 container-p-y">
  <div class="row">
    <div class="col-md-12">
      <div class="row">
        
        <div class="col-lg-6 col-md-12 col-6 mb-4">
          <div class="card gg">
            <div class="card-body">
              <div class="card-title d-flex align-items-start justify-content-between">
                <div class="avatar flex-shrink-0">
                  <img src="{{ asset('frontend_theme\img\core-img/cash.png') }}" alt="Credit Card" class="rounded" />
                </div>
              </div>
              <span class="colorb fw-bold d-block mb-1">Paid</span>
              <h3 class="colorb fw-semibold d-block mb-1">{{ $total_paid }} TK</h3>
            </div>
          </div>
        </div>
        <div class="col-lg-6 col-md-12 col-6 mb-4">
          <div class="card gg">
            <div class="card-body">
              <div class="card-title d-flex align-items-start justify-content-between">
                <div class="avatar flex-shrink-0">
                  <img
                    src="{{ asset('frontend_theme\img\core-img/cash2.png') }}"
                    alt="Credit Card"
                    class="rounded"
                  />
                </div>
              </div>
              <span class="colorb fw-bold d-block mb-1">Buy</span>
              <h3 class="colorb fw-semibold d-block mb-1">{{ $total_buy }}</h3>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection