<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{ asset('frontend/css/style.css') }}">
</head>
<body class="bg-light hhh">
<nav class="navbar navbar-expand-lg navbar-dark bbb">
  <div class="container-fluid">
    <a class="navbar-brand text-uppercase" href="{{ route('aboutPage') }}"><img src="{{ asset('frontend/img/logo.png') }}" class="logo_round" height="60px" width="60px" alt=""></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse font_style" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active b" aria-current="page" href="{{ route('indexPage') }}">Home</a>
        </li>
      
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
          Categories
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Chicken items</a></li>
            <li><a class="dropdown-item" href="#">Fastfood</a></li>
            <li><a class="dropdown-item" href="#">Salad</a></li>
            <li><a class="dropdown-item" href="#">Desert</a></li>
            <li><a class="dropdown-item" href="#">Soups</a></li>
            <li><a class="dropdown-item" href="#">Sushi</a></li>
            <li><a class="dropdown-item" href="#">Baked Food</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Upload</a></li>
          </ul>
        </li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
          Recipe
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Grilling</a></li>
            <li><a class="dropdown-item" href="#">Family Dinners</a></li>
            <li><a class="dropdown-item" href="#">Backed</a></li>
            <li><a class="dropdown-item" href="#">Top rated</a></li>
          </ul>
        </li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           Chef
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Our Chefs</a></li>
            <li><a class="dropdown-item" href="{{ route('login') }}">Chef log in</a></li>
          </ul>
        </li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           Order
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Order Online</a></li>
            <li><a class="dropdown-item" href="#">Cash on delivery</a></li>
            <li><a class="dropdown-item" href="#">Transaction</a></li>
          </ul>
        </li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           Get Features
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Quick Links</a></li>
            <li><a class="dropdown-item" href="#">Holidays & Celebrations</a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="#">Birthdays</a></li>
                  <li><a class="dropdown-item" href="#">Trending Recipes</a></li>
                  <li><a class="dropdown-item" href="#">Back to School</a></li>
                  <li><a class="dropdown-item" href="#">Birthdays</a></li>
                </ul>
            </li>  
          </ul>
        </li>

        <li class="nav-item">
          <a class="nav-link disabled">Upload</a>
        </li>
      </ul>

      <!-- <a class="navbar-brand text-uppercase"><img src="{{ asset('frontend/img/login.png') }}" class="logo_round" height="40px" width="40px" alt="">
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="{{ route('aboutPage') }}">Create account</a></li>
            <li><a class="dropdown-item" href="{{ route('aboutPage') }}">Log in</a></li>
          </ul>
      </a> -->

      <h4 class="navbar-brand fnt_size">
        <a href="{{ route('login') }}">Login/</a>
        <a href="{{ route('register') }}">Register</a>
      </h4>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Looking for something?" aria-label="Search">
        <button class="btn btn-outline-light" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>


<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="{{ asset('frontend/img/1.jpg') }}" class="d-block w-100 carousel_size" alt="st">
    </div>
    <div class="carousel-item">
      <img src="{{ asset('frontend/img/01.jpg') }}" class="d-block w-100 carousel_size" alt="goblin">
    </div>
    <div class="carousel-item">
      <img src="{{ asset('frontend/img/0.jpg') }}" class="d-block w-100 carousel_size" alt="goblin">
    </div>
    <div class="carousel-item">
      <img src="{{ asset('frontend/img/31.jpg') }}" class="d-block w-100 carousel_size" alt="goblin">
    </div>
    <div class="carousel-item">
      <img src="{{ asset('frontend/img/2.jpg') }}" class="d-block w-100 carousel_size" alt="goblin">
    </div>
    <div class="carousel-item">
      <img src="{{ asset('frontend/img/3.jpg') }}" class="d-block w-100 carousel_size" alt="goblin">
    </div>
    <div class="carousel-item">
      <img src="{{ asset('frontend/img/4.jpg') }}" class="d-block w-100 carousel_size" alt="goblin">
    </div>
    <div class="carousel-item">
      <img src="{{ asset('frontend/img/5.jpg') }}" class="d-block w-100 carousel_size" alt="goblin">
    </div>
    <div class="carousel-item">
      <img src="{{ asset('frontend/img/6.jpg') }}" class="d-block w-100 carousel_size" alt="goblin">
    </div>
    <div class="carousel-item">
      <img src="{{ asset('frontend/img/7.jpg') }}" class="d-block w-100 carousel_size" alt="goblin">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>


<div>
  <br>
  <h2 class="text-uppercase text-center item_headline"><u>Populer Items</u></h2><br>
</div>


<div class="row row-cols-1 row-cols-md-3 g-4">
  @foreach ($foods as $item)

    <div class="col">
      <div class="card">
        <img src="storage/{{$item->photo}}" class="Card_Size card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title text-center Card_fonts">{{$item->name}}</h5>
          @php
              
          @endphp
          <p class="card-text">{!! Illuminate\Support\Str::substr($item->description,0,205) !!}...</p>
        </div>
      </div>
    </div>
      
  @endforeach
</div>


<div class="row bg-light hh clor">
    <h1 class="text-uppercase text-center bottom_headline">food & coocking</h1>
      <div class="col-4">
      </div>
      <div class="col-4">
      <p class="text-center bottom_fonts">
      Every organism needs energy to carry on with the process of living which comes from food. Here you can find many authentic and original food recipies created by different chefs around the world. Stay tuned for the update. <a href="{{ route('contactPage') }}">Contact Us</a>
      </p>
      </div>
      <div class="col-4">
      </div>
      <p class="bottom_fonts text-center">© 2022 Food&Coocking . All rights reserved | Designed by Shahin</p>
      
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</body>



