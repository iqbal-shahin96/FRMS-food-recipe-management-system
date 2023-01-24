@extends('admin.partials.master')

@section('page-title')
  <title>Order List</title>
@endsection

@section('page-content')
<div class="container-xxl olex-grow-1 container-p-y">
  <div class="card">
    <div class="row">
      <div class="col-12">
        <h5 class="colorb mb-4 ms-3 mt-4">All order list
          <div class="float-right">
            <a class="btn btn-success me-4" href="{{ route('admin.invoice') }}">All Transactions</a>
          </div>
        </h5>
      </div>
    </div>
    <div class="table-responsive text-nowrap">
      <table class="table colorb">
        <thead>
          <tr>
            <th>#</th>
            <th>Recipe</th>
            <th>Customer</th>
            <th>Chef</th>
            <th>Price</th>
            <th>Tnx</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody class="table-border-bottom-0">
          @foreach($order_lists as $key => $ol)
          <tr>
            <td>{{ $key+1 }}</td>
            <td>{{ $ol->food_name }}</td>
            <td>{{ $ol->user_name }}</td>
            <td>{{ $ol->chef_name }}</td>
            <td>{{ $ol->price }}</td>
            <td>{{ $ol->tnx_id }}</td>
            <td>
              @if ($ol->status == '0')
                  <form action="{{ route('admin.request.accepted') }}" method="POST">
                      @csrf
                      <input type="hidden" name="id" value="{{ $ol->id }}">
                      <button type="submit" class="btn btn-success btn-sm">Accept</button>
                  </form>

                  <form action="{{ route('admin.request.rejected') }}" method="POST">
                      @csrf
                      <input type="hidden" name="id" value="{{ $ol->id }}">
                      <button type="submit" class="btn btn-danger btn-sm">Reject</button>
                  </form>

              @elseif ($ol->status == '1')
                  <strong class="text-success">Accepted</strong>
              @elseif ($ol->status == '2')
                  <strong class="text-danger">Rejected</strong>
              @endif
          </td>
          </tr>
          
          @endforeach
        </tbody>
      </table>
    </div>
  </div>
</div>
@endsection