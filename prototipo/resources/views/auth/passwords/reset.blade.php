<div id="successMessage" class="modal-body d-none">
    <div class="alert alert-success" role="alert">
        ¡La contraseña se cambió con éxito!
    </div>
</div>

<form id="resetPasswordForm" method="POST" action="{{ route('password.update') }}">
    @csrf
    <input type="hidden" name="token" value="{{ $token }}">
    <div class="mb-3 row">
        <label for="email" class="col-md-4 col-form-label text-md-end">{{ __('Nombre de usuario:') }}</label>
        <div class="col-md-6">
            <input id="email" class="form-control @error('email') is-invalid @enderror" name="email"
                value="{{ session('user.email') }}" required autocomplete="email" autofocus readonly>
            @error('email')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
    </div>
    <div class="mb-3 row">
        <label for="password" class="col-md-4 col-form-label text-md-end">{{ __('Nueva contraseña: ') }}</label>
        <div class="col-md-6">
            <input id="password" type="password" class="form-control @error('password') is-invalid @enderror"
                name="password" required autocomplete="new-password">
            @error('password')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
    </div>
    <div class="mb-3 row">
        <label for="password-confirm"
            class="col-md-4 col-form-label text-md-end">{{ __('Confirma nueva contraseña:') }}</label>
        <div class="col-md-6">
            <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required
                autocomplete="new-password">
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <center>
                <button class="btn"  data-dismiss="modal" style="background-color: #21182F;color: white" >
                    <img src="https://cdn-icons-png.flaticon.com/128/8591/8591477.png" alt="flechaRegresar"
                        width="20px" style="filter: invert(100%);">
                    Regresar
                </button>
                <button type="submit" class="btn " style="background-color: #21182F; color: white">
                    <img src="https://cdn-icons-png.flaticon.com/128/4692/4692344.png" alt="cambiarContraseña"
                        width="20px" style="filter: invert(100%);">
                    Cambiar Contraseña
                </button>
            </center>
        </div>
    </div>  
</form>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        document.getElementById('resetPasswordForm').addEventListener('submit', function(event) {
        });
    });
</script>

