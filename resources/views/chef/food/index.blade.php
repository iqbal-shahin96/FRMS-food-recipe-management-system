@extends('chef.partials.master')

@section('page-title')
  <title>Food Recipe</title>
@endsection

@section('page-content')
<div class="container-xxl flex-grow-1 container-p-y">
  <div class="card">
    <h5 class="card-header fw-semibold colorb">All Food Recipe</h5>
    <div class="table-responsive text-nowrap">
      
      @if ($message = Session::get('success'))
      <div class="alert alert-success alert-dismissible fade show" role="alert">
          <strong>{{ $message }}</strong>
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>
      @endif
      <table class="table fw-semibold colorb">
        <thead>
          <tr>
            <th>#</th>
            <th>Photo</th>
            <th>Name</th>
            <th>Category</th>
            <th>Price</th>
            <th>Actions</th>
            <th>Status</th>
          </tr>
        </thead>
        <tbody class="table-border-bottom-0">
          @foreach($foods as $key => $fd)
          <tr>
            <td>{{ $key+1 }}</td>
            <td><img src="{{ asset('storage/'.$fd->photo) }}" height="100" width="100"></td>
            <td>{{ $fd->name }}</td>
            <td>{{ $fd->category }}</td>
            <td>{{ $fd->price }}</td>
            <td>
              <a class="btn btn-warning" href="{{route('chef.food.edit',$fd->id)}}"><i class="bx bx-edit-alt me-1"></i> Edit</a>
              
              <a class="btn btn-danger" href="{{route('chef.food.delete',$fd->id)}}" 
                onclick="return confirm ('Are you sure?')"><i class="bx bx-trash me-1"></i> Delete</a>
            </td>

            <td>
              @if ($fd->status == '1')
                <strong class="text-success">Accepted</strong>
              @elseif ($fd->status == '2')
                <strong class="text-danger">Rejected</strong>
              @else
              <strong class="text-warning">Pending</strong>
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