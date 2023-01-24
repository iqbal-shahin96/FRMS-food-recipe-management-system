<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>{{ $details->name }}</title>

    <!-- Favicon -->
    <link rel="icon" href="{{ asset('frontend_theme/img/core-img/favicon.ico') }}">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="{{ asset('frontend_theme/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/css/style.css') }}">


</head>

<body>
    <!-- Preloader -->
    <div id="preloader">
        <i class="circle-preloader"></i>
        <img src="{{ asset('frontend_theme/img/core-img/salad.png') }}" alt="">
    </div>

    <!-- Search Wrapper -->
    <div class="search-wrapper">
        <!-- Close Btn -->
        <div class="close-btn"><i class="fa fa-times" aria-hidden="true"></i></div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <form action="#" method="post">
                        <input type="search" name="search" placeholder="Type any keywords...">
                        <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">

        <!-- Top Header Area -->
        <div class="top-header-area">
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-between">
                    <!-- Breaking News -->
                    <div class="col-12 col-sm-6">
                        <div class="breaking-news">
                            <div id="breakingNewsTicker" class="ticker">
                                <ul>
                                    <li><a href="#">Hello there!</a></li>
                                    <li><a href="#">Welcome to Food & Coocking.</a></li>
                                    <li><a href="#">Try our Delicious food recipies!</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- Top Social Info -->
                    <div class="col-12 col-sm-6">
                        <div class="top-social-info text-right">
                            <a href="https://www.pinterest.com/"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                            <a href="https://www.facebook.com/"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                            <a href="https://twitter.com/"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                            <a href="https://www.linkedin.com/"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Navbar Area -->
        <div class="delicious-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar " id="deliciousNav">

                        <!-- Logo -->
                        <img class="logo_border" src="{{ asset('frontend/img/logo2.png') }}" alt="" height="180px" width="180px">

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- close btn -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                    <li><a class="btn px-3" href="{{ route('indexPage') }}">Home</a></li>
                                    <li><a class="btn px-3" href="#">Pages</a>
                                        <ul class="dropdown">
                                            <li><a href="{{ route('aboutPage') }}">About Us</a></li>
                                            <li><a href="/contact#form">Contact Form</a></li>
                                            <li><a href="/categories#buy-a-recipe">Buy a recipe</a></li>
                                            <li><a href="#">Recipes</a>
                                                <ul class="dropdown">
                                                    <li><a href="/#free">Free recipes</a></li>
                                                    <li><a href="/#recent-receipe-area">Recent Posts</a></li>
                                                    <li><a href="{{ route('categoriesPage') }}">All categories</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a class="btn px-3" href="#">New Uploaded</a>
                                        <div class="megamenu">
                                            <ul class="single-mega cn-col-4">
                                                <li class="title text-center bcck">Racipe Name</li>
                                                @foreach ($popularfoods as $item)
                                                <li class="text-center">{{ $item->name }}</li>
                                                @endforeach
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li class="title text-center bcck">Catagory</li>
                                                @foreach ($popularfoods as $item)
                                                <li class="text-center">{{ $item->category }}</h6></li>
                                                @endforeach
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li class="title text-center bcck">Price</li>
                                                @foreach ($popularfoods as $item)
                                                <li class="text-center">{{ $item->price }}</li>
                                                @endforeach
                                            </ul>
                                            <div class="single-mega cn-col-4">
                                                <div class="single-best-receipe-area mb-30">
                                                    <div class="receipe-slider owl-carousel" height="100px" width="200px">
                                                        @foreach ($popularfoods as $item)
                                                       <img src="/storage/{{ $item->photo }}" >
                                                        @endforeach
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li><a class="btn px-3" href="{{ route('chefPage') }}">Our Chefs</a></li>
                                    <li><a class="btn px-3" href="{{ route('contactPage') }}">Contact Us</a></li>

                                    
                                        @if (isset(auth()->user()->id))
                
                                                @if(auth()->user()->role == '1')
                                                <li class="active"><a href="{{route('admin.dashboard')}}" class="btn px-3 me-2 d-none d-lg-flex">Dashboard</a></li>
                                                
                                                @elseif(auth()->user()->role == '2')
                                                <li class="active"><a href="{{route('chef.dashboard')}}" class="btn px-3 me-2 d-lg-flex">Dashboard</a></li>
                                                
                                                @else
                                                <li class="active"><a href="{{route('customer.dashboard')}}" class="btn px-3 me-2 d-none d-lg-flex">My Account</a></li>
                                                @endif
                                                <li class="active"><a href="{{route('logout')}}" class="btn px-3 d-none d-lg-flex">Logout</a></li>
                                            
                                            @else
                                            
                                            <li class="active"><a class="btn px-3" href="#">Sign in</a>
                                                <ul class="dropdown">
                                                    <li><a href="{{ route('login') }}">Login</a></li>
                                                    <li><a href="{{ route('register') }}">Create account</a></li>
                                                </ul>
                                            </li>
                                        @endif
                                
                                </ul>

                                <!-- Newsletter Form -->
                                <div class="search-btn ms-5">
                                    <i class="fa fa-search" aria-hidden="true"></i>
                                </div>

                            </div>
                            <!-- Nav End -->
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->

    <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url({{ asset('frontend_theme/img/bg-img/breadcumb3.jpg') }});">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-text text-center">
                        <h2>Recipe</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcumb Area End ##### -->

    <div class="receipe-post-area section-padding-80">


        <!-- Receipe Photo Slider -->
        <section class="hero-area">
            <div class="hero-slides owl-carousel">
                <!-- Single Hero Slide -->
                <div class="single-hero-slide bg-img" style="background-image: url(/storage/{{ $details->photo }});">
                    <div class="container h-100">
                        <div class="row h-100 align-items-center">
                            <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                                <div class="hero-slides-content" data-animation="fadeInUp" data-delay="100ms">
                                    <h2 data-animation="fadeInUp" data-delay="300ms">{{ $details->name }}</h2>
                                    <p data-animation="fadeInUp" data-delay="700ms">Every organism needs foods to carry on with the process of living.<span class="fw-bolder"> 'Food & coocking'</span> is sharing their recipies to guide you making delicious foods. Such as <span class="bck"> {{ $details->name }}..!</span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 
            </div>
        </section>

        <!-- Receipe Content Area -->
        <div class="receipe-content-area">
            <div class="container">

                <div class="row">
                    <div class="col-12 col-md-8">
                        <div class="receipe-headline my-5">
                            <span>Uploaded on: {{ $details->created_at->format('d-m-Y') }}</span>
                            <h2>{{ $details->name }}</h2>
                            <div class="receipe-duration">
                                <h6>Prep: 15 mins</h6>
                                <h6>Cook: 30 mins</h6>
                                <h6>Yields: 8 Servings</h6>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-md-4">
                        <div class="receipe-ratings text-right my-5">
                            <div class="ratings">
                                <p>Total sell: {{ $orders->where('food_id', $details->id)->count() }}</p>
                            </div>
                            <a href="#" class="btn delicious-btn">For Begginers</a>
                        </div>
                    </div>
                </div>


                @if (isset(auth()->user()->id)? (auth()->user()->role == '1'?true:false): false)

                <div class="row">
                    <div class="col-12 col-lg-8">
                        <h4>Description</h4>
                        {!! $details->description !!}
                    </div>

                    <!-- Ingredients -->
                    <div class="col-12 col-lg-4">
                        <div class="ingredients">
                            <h4>Ingredients</h4>

                            {!! $details->ingredient !!}
                        </div>
                    </div>
                </div>


                @elseif (isset(auth()->user()->id)? (auth()->user()->role == '2'?true:false): false)
                <div class="row">
                    <div class="col-12">
                        <div class="section-heading text-left">
                            <h4 class="text-success fontstyle text-center brder">Sorry are logged as a Chef, you're not eligible to see this content. Please go to your <a class="btn btn-success mt-1 p-1" href="{{ route('chef.dashboard') }}">Dashboard</a> to view your own recipes.</h4>
                            <p>*Only Admin has access to see this content</p>
                        </div>
                    </div>
                </div>
                

                @elseif (isset(auth()->user()->id)? (auth()->user()->role == '3'?true:false): false)
                    
                <div class="row">
                    <div class="col-12">
                        <div class="section-heading text-left">
                            <h4 class="mb-3">Buy Recipe</h4>
                            <p>*Payment this number (01700000) first, then put tnx_id into the form field</p>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <div class="contact-form-area">
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
                            @if ($message = Session::get('success'))
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                <strong>{{ $message }}</strong>
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                            @endif
                            <form action="{{ route('payment') }}" method="post">
                                @csrf
                                <div class="row">
                                    <input type="hidden" class="form-control" id="food_id" value="{{ $details->id }}" name="food_id">
                                    <input type="hidden" class="form-control" id="food_name" value="{{ $details->name }}" name="food_name">
                                    <input type="hidden" class="form-control" id="chef_id" value="{{ $details->chef_id }}" name="chef_id">
                                    <input type="hidden" class="form-control" id="chef_name" value="{{ $details->chef_name }}" name="chef_name">
                                    <input type="hidden" class="form-control" id="price" value="{{ $details->price }}" name="price">
                                    <input type="hidden" class="form-control" id="user_id" value="{{ auth()->user()->id }}" name="user_id">
                                    <input type="hidden" class="form-control" id="user_name" value="{{auth()->user()->name }}" name="user_name">
                                    
                                    <div class="col-6 col-lg-6">
                                        <select class="form-select" name="method" aria-label="Default select example">
                                            <option selected>Select payment option</option>
                                            <option value="bKash">bKash</option>
                                            <option value="Nagad">Nagad</option>
                                          </select>
                                    </div>

                                    <div class="col-6 col-lg-6">
                                        <input type="text" class="form-control" placeholder="tnx ID" id="tnx_id" name="tnx_id">
                                    </div>
                                    
                                    <div class="col-12">
                                        <button class="btn delicious-btn mt-30" type="submit">Buy</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                @else
                <div class="row">
                    <div class="col-2"></div>
                    <div class="col-8">
                        <div class="section-heading text-left">
                            <h3 class="bg-success text-light fontstyle text-center">Please login for buy this recipe<a class="btn btn-primary mb-1 ms-3 p-1" href="{{ route('login') }}">Login Here</a></h3>
                            <small>*Only Admin has access to see this content</small>
                        </div>
                    </div>
                    <div class="col-2"></div>
                </div>
                @endif
            </div>
        </div>
    </div>

    <!-- ##### Follow Us Instagram Area Start ##### -->
    <div class="follow-us-instagram">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h5>Follow Us Instragram</h5>
                </div>
            </div>
        </div>
        <!-- Instagram Feeds -->
        <div class="insta-feeds d-flex flex-wrap">
            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="{{ asset('frontend_theme/img/bg-img/insta1.jpg') }}" alt="">
                <!-- Icon -->
                <div class="insta-icon">
                    <a href="https://www.instagram.com/"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </div>
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="{{ asset('frontend_theme/img/bg-img/insta2.jpg') }}" alt="">
                <!-- Icon -->
                <div class="insta-icon">
                    <a href="https://www.instagram.com/"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </div>
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="{{ asset('frontend_theme/img/bg-img/insta3.jpg') }}" alt="">
                <!-- Icon -->
                <div class="insta-icon">
                    <a href="https://www.instagram.com/"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </div>
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="{{ asset('frontend_theme/img/bg-img/insta4.jpg') }}" alt="">
                <!-- Icon -->
                <div class="insta-icon">
                    <a href="https://www.instagram.com/"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </div>
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="{{ asset('frontend_theme/img/bg-img/insta5.jpg') }}" alt="">
                <!-- Icon -->
                <div class="insta-icon">
                    <a href="https://www.instagram.com/"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </div>
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="{{ asset('frontend_theme/img/bg-img/insta6.jpg') }}" alt="">
                <!-- Icon -->
                <div class="insta-icon">
                    <a href="https://www.instagram.com/"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </div>
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="{{ asset('frontend_theme/img/bg-img/insta7.jpg') }}" alt="">
                <!-- Icon -->
                <div class="insta-icon">
                    <a href="https://www.instagram.com/"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Follow Us Instagram Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <div class="container h-100">
            <div class="row h-100">
                <div class="col-12 h-100 d-flex flex-wrap align-items-center justify-content-between">
                    <!-- Footer Social Info -->
                    <div class="footer-social-info text-right">
                        <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                    </div>
                    <!-- Footer Logo -->
                    <div>
                        <img class="logo_round" src="{{ asset('frontend/img/logo1.png') }}" alt="" height="140px" width="140px">
                    </div>
                    <!-- Copywrite -->
                    <p>
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved</p>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area End ##### -->

    <!-- ##### All Javascript Files ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="{{ asset('frontend_theme/js/jquery/jquery-2.2.4.min.js') }}"></script>
    <!-- Popper js -->
    <script src="{{ asset('frontend_theme/js/bootstrap/popper.min.js') }}"></script>
    <!-- Bootstrap js -->
    <script src="{{ asset('frontend_theme/js/bootstrap/bootstrap.min.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- All Plugins js -->
    <script src="{{ asset('frontend_theme/js/plugins/plugins.js') }}"></script>
    <!-- Active js -->
    <script src="{{ asset('frontend_theme/js/active.js') }}"></script>
</body>

</html>