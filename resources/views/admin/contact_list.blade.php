@extends('admin.partials.master')

@section('page-title')
  <title>Contact List</title>
@endsection

@section('page-content')
<div class="container-xxl clex-grow-1 container-p-y">
  <div class="card">
    <div class="row">
    <div class="col-12">
      <h5 class="colorb mb-4 ms-3 mt-4 me-3">All Contacts
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
            <th>#</th>
            <th>Name</th>
            <th>email</th>
            <th>subject</th>
            <th>Message</th>
          </tr>
        </thead>
        <tbody class="table-border-bottom-0">
          @foreach($contact_lists as $key => $cl)
          <tr>
            <td>{{ $key+1 }}</td>
            <td>{{ $cl->name }}</td>
            <td>{{ $cl->email }}</td>
            <td>{{ $cl->subject }}</td>
            <td>{{ $cl->message }}</td>
          </tr>
          @endforeach
        </tbody>
      </table>
    </div>
  </div>
</div>
@endsection