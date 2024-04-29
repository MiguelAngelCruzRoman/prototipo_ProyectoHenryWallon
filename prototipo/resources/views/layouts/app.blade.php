<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap CSS & Icons -->
    <link href="{{ asset('css/sb-admin-2.css') }}" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1yQeB0+RlDlL0LxM5g5LelNGfhrCjSKW1TnFBuOB+KgC7VZsFhJbkaHxBl/Jb+TJ" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" />
    <!-- Tu CSS personalizado para el sidebar -->
    <link rel="stylesheet" href="css/sb-admin-2.css" />
    <!-- Primero jQuery, si estás usando Bootstrap 4 o anterior -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <!-- Luego Popper.js para Bootstrap 4 o Bootstrap Bundle que incluye Popper para Bootstrap 5 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <!-- Y finalmente, Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
        integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">



    <!-- Scripts -->
    @vite(['resources/sass/app.scss', 'resources/js/app.js'])

    @include('layouts.estilos')
 
</head>

<body>

    <div id="app" class="d-flex">
        @include('layouts.sidebar')

        <div id='content' class="flex-grow-1">
            @include('layouts.navbar')

            <main class="py-4">
                @yield('content')
            </main>

            @include('layouts.footer')
        </div>
        @include('layouts.scripts')
    </div>

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">
    </script>
    @yield('scripts')
</body>

</html>
