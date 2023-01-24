@extends('chef.partials.master')

@section('page-title')
  <title>Order List</title>
@endsection

@section('page-content')
<div class="container-xxl olex-grow-1 container-p-y">
  <div class="card">
    <h5 class="card-header">All order list</h5>
    <div class="table-responsive text-nowrap">
      <table class="table colorb">
        <thead>
          <tr>
            <th>#</th>
            <th>Recipe</th>
            <th>Customer</th>
            <th>Price</th>
            <th>Tnx</th>
          </tr>
        </thead>
        <tbody class="table-border-bottom-0">
          @foreach($order_lists as $key => $ol)
          <tr>
            <td>{{ $key+1 }}</td>
            <td>{{ $ol->food_name }}</td>
            <td>{{ $ol->user_name }}</td>
            <td>{{ $ol->price }}</td>
            <td>{{ $ol->tnx_id }}</td>
          </tr>
          @endforeach
        </tbody>
      </table>
    </div>
  </div>
</div>
@endsection