
    <style>
        .navbar-custom {
            background-color: #336A7B;
        }

        .navbar-brand img {
            width: 30px;
            height: 30px;
            margin-right: 10px;
        }

        .navbar-brand span {
            color: white;
            font-weight: bold;
            font-size: 1.2em;
        }

        .navbar-brand {
            margin-left: 20px;
        }

        .navbar-nav .nav-link {
            color: white;
            margin-left: 20px;
        }

        .navbar-nav .nav-link:hover {
            color: white;
        }

        .navbar-brand,
        .navbar-nav .nav-link {
            transition: color 0.3s;
        }

        .navbar-toggler {
            border-color: white;
        }

        .navbar-toggler-icon {
            background-color: white;
        }

        .user-img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            margin-right: 10px;
        }
    </style>

    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <img src="{{ asset('logoHenryWallon.jpg') }}" alt="LogoHenryWallon" style="width: 50px; height: 50px; border-radius: 50%; border: 2px solid #000000;">
                <span>HENRY WALLON</span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <img src="{{ asset('logoHenryWallon.jpg') }}" alt="ImagenUsuario" style="width: 50px; height: 50px; border-radius: 50%; border: 2px solid #000000;">
                            Nombre de Usuario
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Cerrar <br> Sesión</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>