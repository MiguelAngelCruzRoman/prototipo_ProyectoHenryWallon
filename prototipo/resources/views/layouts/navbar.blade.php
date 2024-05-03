<!-- Navbar -->
<nav class="navbar bg-primary-custom navbar-expand-lg navbar-dark navbar-custom">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
            <a class="nav-link" href="{{ route('home') }}">
                <center>
                    <img src="{{ asset('logoHenryWallon.png') }}" alt="ImagenUsuario"
                        class="border-dark" style="width: 60px; height: 60px;">
                </center>
            </a>

            <a class="nav-link text-white" href="{{ route('home') }}">
                <center>
                    INSTITUTO <br> HENRY WALLON
                </center>
            </a>
        </div>
    </div>
</nav>
