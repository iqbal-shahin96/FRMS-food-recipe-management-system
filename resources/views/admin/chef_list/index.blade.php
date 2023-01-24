@extends('admin.partials.master')

@section('page-title')
  <title>All Chef</title>
@endsection

@section('page-content')
<div class="container-xxl flex-grow-1 container-p-y">
  <div class="card"  id="printableArea">
    <div class="row">
      <div class="col-12">
        <h5 class="colorb mb-4 ms-3 mt-4">All Chef
          <div class="float-right">
            <a class="btn btn-warning me-4" onclick="printDiv('printableArea')">Print this list</a>
          </div>
        </h5>
      </div>
    </div>
    <div class="table-responsive text-nowrap">
      <table class="table colorb">
        <thead>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Address</th>
            <th>Phone</th>
            <th>Email</th>
          </tr>
        </thead>
        <tbody class="table-border-bottom-0">
          @foreach($chefs as $key => $chef)
          <tr>
            <td>{{ $key+1 }}</td>
            <td>{{ $chef->name }}</td>
            <td>{{ $chef->address }}</td>
            <td>{{ $chef->phone }}</td>
            <td>{{ $chef->email }}</td>
          </tr>
          @endforeach
        </tbody>
      </table>
    </div>
  </div>
</div>
@endsection