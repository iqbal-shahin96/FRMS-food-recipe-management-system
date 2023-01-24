@extends('customer.partials.master')

@section('page-title')
  <title>All purchased list</title>
@endsection

@section('page-content')
<div class="container-xxl olex-grow-1 container-p-y">
  <div class="cardimg1 card">

    <div class="row">
      <div class="col-6">
        <h4 class="colorb card-header">All purchased recipes</h4>
      </div>
    </div>
    
    
    <div class="table-responsive text-nowrap">
      <table class="table">
        <thead>
          <tr class="colorb">
            <th >#</th>
            <th>Recipe ID</th>
            <th>Recipe</th>
            <th>Chef</th>
            <th>Price</th>
            <th>Tnx</th>
            <th>Status</th>
            <th class="text-center">Action</th>
            
          </tr>
        </thead>
        <tbody class="table-border-bottom-0">
          @foreach($order_lists as $key => $ol)
          <tr>
            <td  class="colorb">{{ $key+1 }}</td>
            <td class="colorb">{{ $ol->food_id }}</td>
            <td class="colorb">{{ $ol->food_name }}</td>
            <td class="colorb">{{ $ol->chef_name }}</td>
            <td class="colorb">{{ $ol->price }}</td>
            <td class="colorb">{{ $ol->tnx_id }}</td>
            <td>
              @if ($ol->status == '1')
                <strong class="text-success">Paid</strong>
              @elseif ($ol->status == '2')
                <strong class="text-danger">Unpaid</strong>
              @endif
            </td>
            <td> <a class="btn btn-primary " href="{{ route('customer.details', $ol->food_id) }}">View Recipe</a>
            <a class="btn btn-success " href="{{ route('customer.invoice', $ol->id) }}">Invoice</a></td>
            
          </tr>
          @endforeach
        </tbody>
      </table>
    </div>
  </div>
</div>
@endsection