@extends('chef.partials.master')

@section('page-title')
  <title>Dashboard</title>
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
                  <img
                    src="{{ asset('frontend_theme/img/core-img/flour.png') }}"
                    alt="chart success"
                    class="rounded"
                  />
                </div>
              </div>
              <span class="colorb fw-semibold d-block mb-1">Total Recipies</span>
              <h3 class="colorb card-title mb-2">{{ $total_recipe }}</h3>
            </div>
          </div>
        </div>
        <div class="col-lg-6 col-md-12 col-6 mb-4">
          <div class="card gg">
            <div class="card-body">
              <div class="card-title d-flex align-items-start justify-content-between">
                <div class="avatar flex-shrink-0">
                  <img
                    src="{{ asset('frontend_theme/img/core-img/sell.png') }}"
                    alt="Credit Card"
                    class="rounded"
                  />
                </div>
              </div>
              <span class="colorb fw-semibold d-block mb-1">Sales</span>
              <h3 class="colorb card-title text-nowrap mb-1">{{ $total_sale }}</h3>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-12">
      <div class="row">
        <div class="col-6 mb-4">
          <div class="card gg">
            <div class="card-body">
              <div class="card-title d-flex align-items-start justify-content-between">
                <div class="avatar flex-shrink-0">
                  <img
                  src="{{ asset('frontend_theme/img/core-img/transaction.png') }}"
                  alt="Credit Card"
                  class="rounded"
                  />
                </div>
              </div>
              <span class="colorb fw-semibold d-block mb-1">Payments</span>
              <h3 class="colorb card-title text-nowrap mb-2">{{ $total_price }} TK</h3>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection