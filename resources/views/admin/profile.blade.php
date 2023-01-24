@extends('admin.partials.master')
@section('page-title')
  <title>Admin Profile</title>
@endsection

@section('page-content')
<div class="container-xxl flex-grow-1 container-p-y">
    <div class="row">
        <div class="col-lg-2">
          <div class="card mb-2">
            <div class="card-body text-center">
              <img src="{{ asset('backend/img/avatars/admin.jpg') }}" alt="avatar"
                class="rounded-circle img-fluid" style="width: 150px;">
              <h5 class="my-3 colorb">Admin</h5>
              <div class="d-flex justify-content-center mb-2">
               
              </div>
            </div>
          </div>
          
        </div>
        <div class="col-lg-8 colorb">
          <div class="card mb-4">
            <div class="card-body">
              <div class="row">
                <div class="col-sm-3">
                  <p class="colorb mb-0">Full Name</p>
                </div>
                <div class="col-sm-9">
                  <p class="colorb mb-0">{{ auth()->user()->name }}</p>
                </div>
              </div>
              <hr>
              <div class="row">
                <div class="col-sm-3">
                  <p class="colorb mb-0">Email</p>
                </div>
                <div class="col-sm-9">
                  <p class="colorb mb-0">{{ auth()->user()->email }}</p>
                </div>
              </div>
              <hr>
              <div class="row">
                <div class="col-sm-3">
                  <p class="colorb mb-0">Phone</p>
                </div>
                <div class="col-sm-9">
                  <p class="colorb mb-0">{{ auth()->user()->phone }}</p>
                </div>
              </div>
              <hr>
              <div class="row">
                <div class="col-sm-3">
                  <p class="colorb mb-0">Address</p>
                </div>
                <div class="col-sm-9">
                  <p class="colorb mb-0">{{ auth()->user()->address }}</p>
                </div>
              </div>
            </div>
        </div>
    </div>
</div>
@endsection