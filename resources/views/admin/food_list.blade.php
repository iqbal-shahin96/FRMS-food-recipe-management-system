@extends('admin.partials.master')

@section('page-title')
  <title>Food List</title>
@endsection

@section('page-content')
<div class="container-xxl flex-grow-1 container-p-y">
  <div class="card">
    <div class="row">
      <div class="col-12">
        <h5 class="colorb mb-4 ms-3 mt-4">All Recipe list
          <div class="float-right">
            <form action="">
              <input type="search" name="search" id="best-receipe-area" placeholder="Search by food name" value="{{ $search }}">
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
            <th>#</th>
            <th>Photo</th>
            <th>Name</th>
            <th>Category</th>
            <th>Price</th>
            <th>Chef Name</th>
            <th>Recipe</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody class="table-border-bottom-0">
          @foreach($food_lists as $key => $fl)
          <tr>
            <td>{{ $key+1 }}</td>
            <td><img src="/storage/{{ $fl->photo }}" class="img-thumbnail" height="70" width="70" alt=""></td>
            <td>{{ $fl->name }}</td>
            <td>{{ $fl->category }}</td>
            <td>{{ $fl->price }}</td>
            <td>{{ $fl->chef_name }}</td>
            <td> <a class="btn btn-dark " href="{{ route('admin.details', $fl->id) }}">View Recipe</a>
            </td>

            <td>
              @if ($fl->status == '0')
                  <form action="{{ route('admin.request.accept') }}" method="POST">
                      @csrf
                      <input type="hidden" name="id" value="{{ $fl->id }}">
                      <button type="submit" class="btn btn-success btn-sm">Accept</button>
                  </form>

                  <form action="{{ route('admin.request.reject') }}" method="POST">
                      @csrf
                      <input type="hidden" name="id" value="{{ $fl->id }}">
                      <button type="submit" class="btn btn-danger btn-sm">Reject</button>
                  </form>

              @elseif ($fl->status == '1')
                  <strong class="text-success">Accepted</strong>
              @elseif ($fl->status == '2')
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