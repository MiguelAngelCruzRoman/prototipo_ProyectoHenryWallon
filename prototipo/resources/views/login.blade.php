
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="{{ asset('style.css') }}" />
    <title>Login - Henry Wallon</title>
  </head>
  <body>
    <div class="login">
      <figure class="login__image-school"></figure>
      <div class="login__form-section">
        <div class="login__form-container">
          <h2 class="login__title">Bienvenido</h2>
          <form class="login__form" method="POST" action="{{ route('login') }}">
            @csrf
            <div class="login__item">
              <label for="nombreUsuario" class="login__label">Usuario</label>
              <input
                id="nombreUsuario"
                type="text"
                class="login__input @error('email') is-invalid @enderror"
                name="email"
                value="{{ old('email') }}"
                placeholder="22HW0000"
                required
                autocomplete="email"
                autofocus
              />
              @error('email')
                <span class="invalid-feedback" role="alert">
                  <strong>{{ $message }}</strong>
                </span>
              @enderror
            </div>
            <div class="login__item">
              <label for="contrasenia" class="login__label">Contraseña</label>
              <input
                id="contrasenia"
                type="password"
                class="login__input @error('password') is-invalid @enderror"
                name="password"
                placeholder="••••••••"
                required
                autocomplete="current-password"
              />
              @error('password')
                <span class="invalid-feedback" role="alert">
                  <strong>{{ $message }}</strong>
                </span>
              @enderror
            </div>
            <div class="login__item">
              <div class="form-check">
                <input
                  class="form-check-input"
                  type="checkbox"
                  name="remember"
                  id="remember" {{ old('remember') ? 'checked' : '' }}
                />
                <label class="login__label" for="remember">
                  Recordarme
                </label>
              </div>
            </div>
            <button type="submit" class="login__button">Iniciar sesión</button>
            @if (Route::has('password.request'))
            
            <button onclick="location.href='{{ route('password.request') }}'" class="login__button forgot-password-button">
    ¿Olvidaste tu contraseña?
</button>


            @endif
          </form>
        </div>
      </div>
    </div>
  </body>
</html>

