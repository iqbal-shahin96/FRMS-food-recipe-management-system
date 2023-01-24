<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Food & Coocking | Home</title>

    <!-- Favicon -->
    <link rel="icon" href="{{ asset('frontend_theme/img/core-img/favicon.ico') }}">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
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
                    <form action="">
                            <input type="search" name="search" id="" placeholder="Search by food name" value="{{ $search }}">
                            <button type="submit" id="best-receipe-area"><i class="fa fa-search" aria-hidden="true"></i></button>
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
                            <a href="https://www.pinterest.com/" target="_blank"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                            <a href="https://www.facebook.com/" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                            <a href="https://twitter.com/" target="_blank"><i class="fa fa-twitter" aria-hidden="true" target="_blank"></i></a>
                            <a href="https://www.linkedin.com/" target="_blank"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
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
                                                    <li><a href="#free">Free recipes</a></li>
                                                    <li><a href="#recent-receipe-area">Recent Posts</a></li>
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

    <!-- ##### Hero Area Start ##### -->
    <section class="hero-area">
        <div class="hero-slides owl-carousel">
            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url({{ asset('frontend_theme/img/bg-img/bg1.jpg') }});">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                            <div class="hero-slides-content" data-animation="fadeInUp" data-delay="100ms">
                                <h2 data-animation="fadeInUp" data-delay="300ms">Delicios Homemade Burger</h2>
                                <p data-animation="fadeInUp" data-delay="700ms">Prepare foods with Love. Feel the colours of food like, if you overcooked, it will go bad color as black. Feel the spices, if you watch carefully, you will come to know how much salt and spices you should add.<span class="fw-bolder bck" id="fs"> 'Food & Coocking'</span> is here to help you. We are sharing recipies to guide you making delicious foods.</p>
                                <a href="#best-receipe-area" class="btn delicious-btn" data-animation="fadeInUp" data-delay="1000ms">See Receipe</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url({{ asset('frontend/img/1.jpg') }});">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                            <div class="hero-slides-content" data-animation="fadeInUp" data-delay="100ms">
                                <h2 data-animation="fadeInUp" data-delay="300ms">French Fries with Chicken Roll</h2>
                                <p data-animation="fadeInUp" data-delay="700ms">Prepare foods with Love. Feel the colours of food like, if you overcooked, it will go bad color as black. Feel the spices, if you watch carefully, you will come to know how much salt and spices you should add.<span class="fw-bolder bck" id="fs"> 'Food & Coocking'</span> is here to help you. We are sharing recipies to guide you making delicious foods.</p>
                                <a href="#best-receipe-area" class="btn delicious-btn" data-animation="fadeInUp" data-delay="1000ms">See Receipe</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url({{ asset('frontend/img/a.jpg') }});">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                            <div class="hero-slides-content" data-animation="fadeInUp" data-delay="100ms">
                                <h2 data-animation="fadeInUp" data-delay="300ms">Delicios Homemade Chicken Curry</h2>
                                <p data-animation="fadeInUp" data-delay="700ms">Prepare foods with Love. Feel the colours of food like, if you overcooked, it will go bad color as black. Feel the spices, if you watch carefully, you will come to know how much salt and spices you should add.<span class="fw-bolder bck" id="fs"> 'Food & Coocking'</span> is here to help you. We are sharing recipies to guide you making delicious foods.</p>
                                <a href="#best-receipe-area" class="btn delicious-btn" data-animation="fadeInUp" data-delay="1000ms">See Receipe</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Hero Area End ##### -->

    <!-- ##### Top Catagory Area Start ##### -->
    <section class="top-catagory-area section-padding-80-0">
        <div class="container">

            
        <div>
            <h3 class="bcck fw-bolder text-center mb-5" id="free">Keep faith on us, try these 2 recipes for free <img class="menu-icon tf-icons" src="{{ asset('frontend_theme/img/core-img/download.png') }}" alt="" height="40px" width="30px"></h3>
        </div>

            <div class="row">
                <!-- Top Catagory Area -->
                <div class="col-12 col-lg-6">
                    <div class="single-top-catagory">
                        <img src="{{ asset('frontend_theme/img/bg-img/bg2.jpg') }}" alt="">
                        <!-- Content -->
                        <div class="top-cta-content">
                            <h3>Strawberry Cake</h3>
                            <h6>Simple, delicious &amp; free</h6>
                            <a href="{{ route('strawberryPage') }}" class="btn delicious-btn">See Full Receipe</a>
                        </div>
                    </div>
                </div>
                <!-- Top Catagory Area -->
                <div class="col-12 col-lg-6">
                    <div class="single-top-catagory">
                        <img src="{{ asset('frontend_theme/img/bg-img/bg8.jpg') }}" alt="">
                        <!-- Content -->
                        <div class="top-cta-content">
                            <h3>Chocolate Coffee</h3>
                            <h6>Simple, delicious &amp; free</h6>
                            <a href="{{ route('chocolatecoffePage') }}" class="btn delicious-btn">See Full Receipe</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Top Catagory Area End ##### -->

    <!-- ##### Best Receipe Area Start ##### -->
    <section class="best-receipe-area" href="#best-receipe-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading">
                        <h3 class="fw-bolder">Our best Receipies</h3>
                    </div>
                </div>
            </div>

            <div class="row">
                <!-- Single Best Receipe Area -->
                @foreach ($foods as $item)
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-best-receipe-area mb-30">
                         <a href="{{ route('details', $item->id) }}"><img src="/storage/{{ $item->photo }}" style="height:300px; width:100%;" alt=""></a>
        
                            <div class="receipe-content">
                                <a href="{{ route('details', $item->id) }}">
                                    <h5 class="fw-bolder">{{ $item->name }}</h5>
                                </a>
                                <div class="ratings">
                                    <small class="bcck">{{ $orders->where('food_id', $item->id)->count() }} People tried it</small>
                                </div>
                            </div>
                    </div>
                </div>
                @endforeach

                <div class="text-center">
                    <div class="btn__all">
                        <a href="{{ route('categoriesPage') }}" class="primary-btn fw-semibold bcck">View All <span class="arrow_right"></span></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Best Receipe Area End ##### -->

    <!-- ##### CTA Area Start ##### -->
    <section class="cta-area bg-img bg-overlay" style="background-image: url(frontend_theme/img/bg-img/bg4.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <!-- Cta Content -->
                    <div class="cta-content text-center">
                        <h2>Food & Cooking Receipies</h2>
                        <p>Prepare foods with Love. Feel the colours of food like, if you overcooked, it will go bad color as black. Feel the spices, if you watch carefully, you will come to know how much salt and spices you should add.<span class="fw-bolder bck" id="fs"> 'Food & Coocking'</span> is here to help you. We are sharing recipies to guide you making delicious foods.</p>
                        <a href="{{ route('categoriesPage') }}" class="btn delicious-btn">Discover all categories</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### CTA Area End ##### -->

    <!-- ##### Small Receipe Area Start ##### -->
    <section class="small-receipe-area section-padding-80-0">
        <div class="container">
            <div class="row">
                <div class="section-heading">
                    <h3 class="bcck" id="recent-receipe-area">Recent Posts</h3>
                </div>

                <!-- Small Receipe Area -->
                @foreach ($Recentfoods as $item)
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-small-receipe-area d-flex">
                        <!-- Receipe Thumb -->
                        <div class="receipe-thumb">
                            <img src="/storage/{{ $item->photo }}" style="height:70px; width:100%;" alt="">
                        </div>
                        <!-- Receipe Content -->
                        <div class="receipe-content">
                            <span>{{ $item->created_at->format('d-m-Y') }}</span>
                            <a href="{{ route('details', $item->id) }}">
                                <h5>{{ $item->name }}</h5>
                            </a>
                            <div class="ratings">
                                <p>Total sell: {{ $orders->where('food_id', $item->id)->count() }}</p>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>
    <!-- ##### Small Receipe Area End ##### -->

    <!-- ##### Quote Subscribe Area Start ##### -->
    <section class="quote-subscribe-adds">
        <div class="container">
            <div class="row align-items-end">
                <!-- Adds -->
                <div class="col-12 col-lg-4">
                    <div class="delicious-add">
                        <img src="{{ asset('frontend_theme/img/bg-img/add.png') }}" alt="">
                    </div>
                </div>
                <!-- Quote -->
                <div class="col-12 col-lg-4">
                    <div class="quote-area text-center">
                        <span>"</span>
                        <h4>Nothing is better than going home to family and eating good food and relaxing</h4>
                        <p>John Smith</p>
                        <div class="date-comments d-flex justify-content-between">
                            <div class="date">January 04, 2022</div>
                            
                        </div>
                    </div>
                </div>

                <!-- Adds -->
                <div class="col-12 col-lg-4">
                    <div class="delicious-add">
                        <img src="{{ asset('frontend_theme/img/bg-img/add.png') }}" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Quote Subscribe Area End ##### -->

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
    <!-- All Plugins js -->
    <script src="{{ asset('frontend_theme/js/plugins/plugins.js') }}"></script>
    <!-- Active js -->
    <script src="{{ asset('frontend_theme/js/active.js') }}"></script>
</body>

</html>