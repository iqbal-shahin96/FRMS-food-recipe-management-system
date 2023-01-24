@extends('admin.partials.master')

@section('page-title')
  <title>Category Create</title>
@endsection

@section('page-content')
<div class="container-xxl flex-grow-1 container-p-y">
	<div class="card mb-4">
	    <div class="card-body  mt-3">
	      <form action="{{ route('admin.category.store') }}" method="POST">
	      	@csrf
	        <div class="row mb-3">
	          <label class="col-sm-2 col-form-label" for="basic-icon-default-fullname">Name</label>
	          <div class="col-sm-10">
	            <div class="input-group input-group-merge">
	              <span id="basic-icon-default-fullname2" class="input-group-text"
	                ><i class='bx bx-category' ></i></span>
	              <input
	                type="text"
	                class="form-control"
	                id="basic-icon-default-fullname"
	                name="name"
	                placeholder="Name of the Category"
	                aria-label="Cake"
	                aria-describedby="basic-icon-default-fullname2"
	              />
	            </div>
	          </div>
	        </div>
	        <div class="row justify-content-end">
	          <div class="col-sm-10">
	            <button type="submit" class="btn btn-primary">Add</button>
	          </div>
	        </div>
	      </form>
	    </div>
	</div>
</div>
@endsection