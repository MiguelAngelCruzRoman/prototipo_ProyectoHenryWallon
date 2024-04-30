<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
    <!-- Nombre de Usuario -->
   
    <li class="nav-item">
    @if (session('user.rol') === 'Administrador' || session('user.rol') === 'Docente' || session('user.rol') === 'Alumno')
        <a class="nav-link" href="{{ route('administrador.perfil') }}">
            <center>

            <img src="{{ session('user.foto') }}" alt="ImagenUsuario"
                style="width: 50px; height: 50px; border-radius: 50%; border: 2px solid #000000;">
                <br>
            {{ session('user.primerNombre') }} {{ session('user.segundoNombre') }} <br>
            {{ session('user.apellidoPaterno') }} {{ session('user.apellidoMaterno') }}
        </center>    

        </a>
    
    </li>

  
    <!-- Divider -->
    <hr class="sidebar-divider my-0">
    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link" href="{{ route('home') }}">
        <i class="fas fa-fw fa-home"></i>

            @if (session('user.rol') === 'Administrador' || session('user.rol') === 'Docente' || session('user.rol') === 'Alumno')
                <span>INICIO</span>
            @else
                <span>LOGIN</span>
            @endif
        </a>
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
        <li class="nav-item">
            <a class="nav-link" href="{{ route('periodo.index') }}">
                <i class="far fa-fw fa-clock"></i>
                <span>PERIODOS</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{{ route('evaluacion.index') }}">
                <i class="fas fa-fw fa-book"></i>
                <span>EVALUACIONES</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{{ route('grupo.index') }}">
                <i class="fas fa-fw fa-users"></i>
                <span>GRUPOS</span>
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
        <li class="nav-item">
            <a class="nav-link" href="{{ route('asignatura.index') }}">
                <i class="fas fa-fw fa-chalkboard"></i>
                <span>ASIGNATURAS</span>
            </a>
        </li>
    @endif
    @if (session('user.rol') === 'Administrador' || session('user.rol') === 'Docente')
        <li class="nav-item">
            <a class="nav-link" href="{{ route('grupo.index') }}">
                <i class="fas fa-fw fa-chart-bar"></i>
                <span>REPORTES</span>
            </a>
        </li>
    @endif
    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">
<!-- Navbar -->
<li class="nav-item">
<a class="nav-link" href="#" onclick="logoutAndDestroySession()">
<i class="fas fa-fw fa-sign-out-alt"></i>

<span>CERRAR SESIÓN</span>
            </a>
           
            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                @csrf
            </form>
        </li>


        @endif
    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>
        
    </ul>

<!-- End of Sidebar -->
