<div class="card_h min-h-screen flex flex-col sm:justify-center items-center pt-6 sm:pt-0 bg-gray-100">
    <div class="col-12 ps-5">
         <a href="{{ route('indexPage') }}" class="text-light m-1"><img src="{{ asset('frontend_theme\img\core-img/home (1).png') }}" alt="Home Button" height="40px" width="40px">Home</a> 

    </div>
    <div>
        {{ $logo }}
    </div>

    <div class="cardimg1 w-full sm:max-w-md mt-6 px-6 py-4 bg-white shadow-md overflow-hidden sm:rounded-lg">
        {{ $slot }}
    </div>
</div>
