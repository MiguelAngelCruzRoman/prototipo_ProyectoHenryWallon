<!-- Sidebar -->
<ul class="navbar-nav bg-primary-custom sidebar sidebar-dark accordion" id="accordionSidebar">
    <br>
    <!-- Info usuario -->
    <li class="nav-item">
        @if (session('user.rol') === 'Administrador' || session('user.rol') === 'Docente' || session('user.rol') === 'Alumno')
            <a class="nav-link" href="{{ route('administrador.perfil') }}">
                <div class="flex">
                    <center>
                        <img src="{{ Storage::url(session('user.foto')) }}" alt="ImagenUsuario"
                            class="rounded-circle border border-dark" style="width: 80px; height: 80px;">
                        {{ session('user.primerNombre') }} {{ session('user.apellidoPaterno') }}
                    </center>
                </div>
            </a>
        @endif
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">
    <!-- Menú de inicio -->
    <li class="nav-item active">
        <a class="nav-link" href="{{ route('home') }}">
            <i class="fas fa-fw fa-home"></i>
            @if (session('user'))
                <span>INICIO</span>
            @else
                <span>LOGIN</span>
            @endif
        </a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">
    @if (session('user.rol') === 'Administrador')
        <!-- Opciones de Administrador -->
        <li class="nav-item">
            <a class="nav-link" href="{{ route('user.inicio') }}">
                <i class="fas fa-fw fa-user"></i>
                <span>USUARIOS</span>
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="{{ route('periodo.index') }}">
                <i class="far fa-fw fa-clock"></i>
                <span>PERIODOS</span>
            </a>
        </li>
    @endif

    @if (session('user.rol') === 'Administrador' || session('user.rol') === 'Docente' || session('user.rol') === 'Alumno')
        <li class="nav-item">
            <a class="nav-link" href="#">
                <i class="far fa-fw fa-calendar"></i>
                <span>HORARIOS</span>
            </a>
        </li>
    @endif


    @if (session('user.rol') === 'Administrador')
        <li class="nav-item">
            <a class="nav-link" href="{{ route('evaluacion.index') }}">
                <i class="fas fa-fw fa-book"></i>
                <span>EVALUACIONES</span>
            </a>
        </li>
    @endif
        

    <!-- Opciones comunes a varios roles -->
    @if (session('user.rol') === 'Administrador' || session('user.rol') === 'Docente' || session('user.rol') === 'Alumno')
        <li class="nav-item">
            <a class="nav-link" href="{{ route('asignatura.index') }}">
                <i class="fas fa-fw fa-chalkboard"></i>
                <span>ASIGNATURAS</span>
            </a>
        </li>
    @endif

    @if (session('user.rol') === 'Administrador')
        <li class="nav-item">
            <a class="nav-link" href="{{ route('grupo.index') }}">
                <i class="fas fa-fw fa-users"></i>
                <span>GRUPOS</span>
            </a>
        </li>
    @endif

    <!-- Opciones solo para Administrador y Docente-->
    @if (session('user.rol') === 'Administrador' || session('user.rol') === 'Docente')
        <li class="nav-item">
            <a class="nav-link" href="{{ route('grupo.index') }}">
                <i class="fas fa-fw fa-chart-bar"></i>
                <span >REPORTES</span>
            </a>
        </li>
    @endif

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">
    <!-- Cerrar Sesión -->
    @if (session('user'))
        <li class="nav-item">
            <a class="nav-link" href="#" onclick="logoutAndDestroySession()">
                <i class="fas fa-fw fa-sign-out-alt"></i>
                <span>CERRAR SESIÓN</span>
            </a>
            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                @csrf
            </form>
        </li>
           <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">
        <center>
        <li class="nav-item">
            <button class="btn btn-primary" id="sidebarToggle"></button>
        </li>
    </center>
    @endif
</ul>
