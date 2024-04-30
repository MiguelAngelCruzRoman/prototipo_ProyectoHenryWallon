    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
                <a class="nav-link" href="{{ route('home') }}">
                    <center>
                        <img src="{{ asset('logoHenryWallon.jpg') }}" alt="ImagenUsuario"
                            style="width: 70px; height: 70px; border-radius: 50%; border: 2px solid #000000;">
                    </center>
                </a>

                <a class="nav-link" href="{{ route('home') }}" style="color:white">
                    <center>
                        INSTITUTO <br>HENRY WALLON
                    </center>
                </a>
            </div>
        </div>
    </nav>
