    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <ul class="navbar-nav">
                    @if (session('user.rol') === 'Administrador' || session('user.rol') === 'Docente' || session('user.rol') === 'Alumno')
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('administrador.perfil') }}">
                                <img src=" {{ session('user.foto') }}" alt="ImagenUsuario"
                                    style="width: 50px; height: 50px; border-radius: 50%; border: 2px solid #000000;">
                                {{ session('user.primerNombre') }} {{ session('user.segundoNombre') }}
                                {{ session('user.apellidoPaterno') }} {{ session('user.apellidoMaterno') }}
                            </a>
                        </li>

                    <li class="nav-item">
                        <a class="nav-link" href="#" onclick="logoutAndDestroySession()">
                            Cerrar <br> Sesión
                        </a>
                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                            @csrf
                        </form>
                    </li>
                    @endif

                </ul>
            </div>
        </div>
    </nav>
