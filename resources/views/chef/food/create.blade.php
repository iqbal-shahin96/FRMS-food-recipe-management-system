@extends('chef.partials.master')

@section('page-title')
  <title>Food Create</title>
@endsection
@push('css')
@endpush
@section('page-content')
<div class="container-xxl flex-grow-1 container-p-y">
    <div class="card mb-4">
        <div class="card-body  mt-3">
      @if ($errors->any())
          <div class="alert alert-danger alert-dismissible fade show" role="alert">
              <ul>
                  @foreach ($errors->all() as $error)
                      <li>{{ $error }}</li>
                  @endforeach
              </ul>
              <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
          </div>
      @endif
          <form action="{{ route('chef.food.store') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="row mb-3">
              <label class="col-sm-2 col-form-label fw-semibold colorb" for="basic-icon-default-fullname">Photo</label>
              <div class="col-sm-10">
                <div class="input-group input-group-merge">
                  <span id="basic-icon-default-fullname2" class="input-group-text colorb"
                    ><i class='bx bx-category' ></i></span>
                  <input
                    type="file"
                    class="form-control colorb"
                    id="basic-icon-default-fullname"
                    name="photo"
                    placeholder="Name of the Food"
                    aria-label="Cake"
                    aria-describedby="basic-icon-default-fullname2"
                  />
                </div>
              </div>
            </div>
            <div class="row mb-3">
              <label class="col-sm-2 col-form-label fw-semibold colorb" for="basic-icon-default-fullname">Name</label>
              <div class="col-sm-10">
                <div class="input-group input-group-merge">
                  <span id="basic-icon-default-fullname2" class="input-group-text"
                    ><i class='bx bx-category colorb' ></i></span>
                  <input
                    type="text"
                    class="form-control"
                    id="basic-icon-default-fullname"
                    name="name"
                    placeholder="Name of the Food Recipe"
                    aria-label="Cake"
                    aria-describedby="basic-icon-default-fullname2"
                  />
                </div>
              </div>
            </div>

            <div class="row mb-3">
              <label class="col-sm-2 col-form-label fw-semibold colorb" for="basic-icon-default-fullname">Category</label>
              <div class="col-sm-10">
                <div class="input-group input-group-merge">
                  <span id="basic-icon-default-fullname2" class="input-group-text"
                    ><i class='bx bx-category' ></i></span>
                    <select class="form-select" name="category" aria-label="Default select example">
                      <option selected>Select Category</option>
                      @foreach ($categories as $item)
                      <option value="{{ $item->name }}">{{ $item->name }}</option>
                      @endforeach
                    </select>
                </div>
              </div>
            </div>

            <div class="row mb-3">
              <label class="col-sm-2 col-form-label fw-semibold colorb" for="basic-icon-default-fullname">Price</label>
              <div class="col-sm-10">
                <div class="input-group input-group-merge">
                  <span id="basic-icon-default-fullname2" class="input-group-text"
                    ><i class='bx bx-category' ></i></span>
                  <input
                    type="text"
                    class="form-control"
                    id="basic-icon-default-fullname"
                    name="price"
                    placeholder="Price of the Recipe"
                    aria-label="Cake"
                    aria-describedby="basic-icon-default-fullname2"
                  />
                </div>
              </div>
            </div>


            <div class="row mb-3">
              <label class="col-sm-2 col-form-label fw-semibold colorb" for="basic-icon-default-fullname">Description</label>
              <div class="col-sm-10">
                <div class="input-group input-group-merge">
                  <textarea class="form-control" name="description" id="description"></textarea>
                </div>
              </div>
            </div>


            <div class="row mb-3">
              <label class="col-sm-2 col-form-label fw-semibold colorb" for="basic-icon-default-fullname">Ingredients</label>
              <div class="col-sm-10">
                <div class="input-group input-group-merge">
                  <textarea class="form-control" name="ingredient" id="ingredient"></textarea>
                </div>
              </div>
            </div>


            <div class="row justify-content-end">
              <div class="col-sm-10">
                <button type="submit" class="btn btn-primary">Upload</button>
              </div>
            </div>
          </form>
        </div>
    </div>
</div>
@endsection

@push('js')


<script>

$(document).ready(function() {
      $('#description').summernote();
      $('#ingredient').summernote();
  });
  
</script>
@endpush