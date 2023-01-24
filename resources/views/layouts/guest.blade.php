<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>User Login / Registration</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="{{ asset('frontend/css/style.css') }}">
        <!-- Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap">
        <link rel="icon" href="{{ asset('frontend_theme/img/core-img/favicon.ico') }}">
        <!-- Scripts -->
        @vite(['resources/css/app.css', 'resources/js/app.js'])

        <!-- Core Stylesheet -->
        <link rel="stylesheet" href="{{ asset('frontend_theme/css/style.css') }}">
        
        
    </head>

    <body>
        <div class="font-sans text-gray-900 antialiased">
        {{ $slot }}
        </div>
        
    </body>
</html>
