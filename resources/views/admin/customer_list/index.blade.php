@extends('admin.partials.master')

@section('page-title')
  <title>All Customers</title>
@endsection

@section('page-content')
<div class="container-xxl flex-grow-1 container-p-y">
  <div class="card" id="printableArea">
    <div class="row">
      <div class="col-12">
        <h5 class="colorb mb-4 ms-3 mt-4">All Customers
          <div class="float-right">
            <form action="">
              <input type="search" name="search" id="best-receipe-area" placeholder="Search by name" value="{{ $search }}">
              <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
            </form>
          </div>
        </h5>
      </div>
    </div>
    <div class="table-responsive text-nowrap">
      <table class="table colorb">
        <thead>
          <tr>
            <th>iD</th>
            <th>Name</th>
            <th>Address</th>
            <th>Phone</th>
            <th>Email</th>
          </tr>
        </thead>
        <tbody class="table-border-bottom-0">
          @foreach($customers as $key => $customer)
          <tr>
            <td>{{ $key+1 }}</td>
            <td>{{ $customer->name }}</td>
            <td>{{ $customer->address }}</td>
            <td>{{ $customer->phone }}</td>
            <td>{{ $customer->email }}</td>
          </tr>
          @endforeach
        </tbody>
      </table>
    </div>
  </div>
</div>
@endsection