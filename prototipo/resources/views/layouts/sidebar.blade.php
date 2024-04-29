<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">


    <!-- Nombre de Usuario -->
    <li class="nav-item">
        <a class="nav-link" href="#">
            INSTITUTO HENRY WALLON
            <img src="{{ asset('logoHenryWallon.jpg') }}" alt="ImagenUsuario"
                style="width: 30px; height: 30px; border-radius: 50%; border: 2px solid #000000;">
        </a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link" href="{{ route('home') }}">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            @if (session('user.rol') === 'Administrador' || session('user.rol') === 'Docente' || session('user.rol') === 'Alumno')
                <span>INICIO</span>
        </a>
    @else
        <span>LOGIN</span></a>
        @endif
    </li>


    <!-- Divider -->
    <hr class="sidebar-divider">

    @if (session('user.rol') === 'Administrador')
        <li class="nav-item">
            <a class="nav-link" href="#">
                <i class="fas fa-fw fa-user"></i>
                <span>USUARIOS</span>
            </a>
        </li>
    @endif


    @if (session('user.rol') === 'Administrador')
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
            <a class="nav-link" href=""{{ route('grupo.index') }}>
                <i class="fas fa-fw fa-users"></i>
                <span>GRUPOS</span>
            </a>
        </li>
    @endif


    @if (session('user.rol') === 'Administrador' || session('user.rol') === 'Docente')
        <li class="nav-item">
            <a class="nav-link" href=""{{ route('grupo.index') }}>
                <i class="fas fa-fw fa-chart-bar"></i>
                <span>REPORTES</span>
            </a>
        </li>
    @endif





    <!-- Divider -->
    <hr class="sidebar-divider">

</ul>
<!-- End of Sidebar -->
