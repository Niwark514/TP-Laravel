<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>@lang('app.college')</title>
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="{{asset('css/styles.css')}}" rel="stylesheet" />
</head>
<body>

<header>


@php $locale = session()->get('locale'); @endphp
<nav class="navbar navbar-light navbar-expand-lg mb-5">
    <div class="container">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="dropdown-item @if($locale=='en') bg-warning @endif" href="/lang/en"><img src="{{asset('images/flag/gb.png')}}" > English</a>
                </li>
                <li class="nav-item">
                    <a class="dropdown-item @if($locale=='fr') bg-warning @endif" href="/lang/fr"><img src="{{asset('images/flag/fr.png')}}" > Français</a>
                </li>
            </ul>
        </div>
    </div>
</nav>



    <h1 class="site-heading text-center text-faded d-none d-lg-block">
        <span class="site-heading-upper text-primary mb-3">@lang('app.intro')</span>
        <span class="site-heading-lower">@lang('app.college')</span>
    </h1>
</header>

<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav">
    <div class="container">
        <a class="navbar-brand text-uppercase fw-bold d-lg-none" href="/">@lang('app.college')</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mx-auto">
                <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="/">@lang('app.index')</a></li>
                <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="/listeEtudiant">@lang('app.studentList')</a></li>
                @if(isset(Auth::user()->email))
                <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="/forum">@lang('app.forum')</a></li>
                <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="/fileShare">@lang('app.fileShare')</a></li>
                @endif
                <li>
                    @if(isset(Auth::user()->email))
                        <a class="btn btn-primary" href="/logout">@lang('app.logout')</a>
                    @else
                        <a class="btn btn-primary" href="/login">@lang('app.login')</a>
                    @endif
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- Content -->
@yield('content')

<!-- Footer -->
<footer class="footer text-faded text-center py-5">
    <div class="container"><p class="m-0 small">@lang('app.copyright')</p></div>
</footer>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
</body>
</html>
