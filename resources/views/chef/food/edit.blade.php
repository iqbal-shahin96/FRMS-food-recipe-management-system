@extends('chef.partials.master')

@section('page-title')
  <title>Food Edit</title>
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
          <form action="{{ route('chef.food.update', $food->id) }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="row mb-3">
              <label class="col-sm-2 col-form-label" for="basic-icon-default-fullname">Photo</label>
              <div class="col-sm-10">
                <div class="input-group input-group-merge">
                  <span id="basic-icon-default-fullname2" class="input-group-text"
                    ><i class='bx bx-category' ></i></span>
                  <input
                    type="file"
                    class="form-control"
                    id="basic-icon-default-fullname"
                    name="photo"
                    placeholder="Name of the Food"
                    aria-label="Cake"
                    aria-describedby="basic-icon-default-fullname2"
                  />
                </div>
                <a href="/storage/{{  $food->photo }}" target="_blank">Current photo</a>
              </div>
            </div>
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
                    placeholder="Name of the Food Recipe"
                    aria-label="Cake"
                    value="{{  $food->name }}"
                    aria-describedby="basic-icon-default-fullname2"
                  />
                </div>
              </div>
            </div>

            <div class="row mb-3">
              <label class="col-sm-2 col-form-label" for="basic-icon-default-fullname">Category</label>
              <div class="col-sm-10">
                <div class="input-group input-group-merge">
                  <span id="basic-icon-default-fullname2" class="input-group-text"
                    ><i class='bx bx-category' ></i></span>
                    <select class="form-select" name="category" aria-label="Default select example">
                      <option selected>Select Category</option>
                      @foreach ($categories as $item)
                      <option value="{{ $item->name }}" @if($item->name == $food->category) selected @endif>{{ $item->name }}</option>
                      @endforeach
                    </select>
                </div>
              </div>
            </div>

            <div class="row mb-3">
              <label class="col-sm-2 col-form-label" for="basic-icon-default-fullname">Price</label>
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
                    value="{{ $food->price }}"
                    aria-label=""
                    aria-describedby="basic-icon-default-fullname2"
                  />
                </div>
              </div>
            </div>


            <div class="row mb-3">
              <label class="col-sm-2 col-form-label" for="basic-icon-default-fullname">Description</label>
              <div class="col-sm-10">
                <div class="input-group input-group-merge">

                <textarea name="description" class="form-control" id="description">{{ $food->description }}</textarea>

                </div>
              </div>
            </div>


            <div class="row mb-3">
              <label class="col-sm-2 col-form-label" for="basic-icon-default-fullname">Ingredient</label>
              <div class="col-sm-10">
                <div class="input-group input-group-merge">
                    <textarea name="ingredient" class="form-control" id="ingredient">{{ $food->ingredient }}</textarea>
                </div>
              </div>
            </div>


            <div class="row justify-content-end">
              <div class="col-sm-10">
                <button type="submit" class="btn btn-primary">Update</button>
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