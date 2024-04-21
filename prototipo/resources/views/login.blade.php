<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Iniciar Sesión</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        .cardlogo {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            overflow: hidden;
            position: relative;
            margin: auto;
            border: 2px solid rgb(255, 215, 0); /* Borde dorado */
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .logo {
            width: 80%;
            height: 80%;
        }

        .logo img {
            max-width: 100%;
            max-height: 100%;
            object-fit: contain; /* Ajusta la imagen dentro del contenedor sin distorsión */
        }

        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0; 
            background-image: linear-gradient(to right, #E93737 50%, #336A7B 50%);
            padding: 0 15px; 

       
        .card {
            width: 350px; 
            padding: 30px; 
            border-radius: 20px; 
            box-shadow: 0px 0px 20px 0px rgba(0, 0, 0, 0.1); 
            background-color: #fff; 
        }
        
        .btn-primary {
            display: block;
            width: 100%;
            max-width: 200px; 
            margin: 20px auto 0; 
        }

        h4 {
            text-align: center; 
            font-weight: medium; 
            margin-bottom: 30px; 
            color: #333; 
        }

        .form-label {
            font-weight: bold; 
        }

        .form-text {
            color: #777;
        }
        
    </style>
</head>
<body>
    <div class="card">
        <!--div para logo-->
        <div class="inicio">
            <div class="cardlogo">
                <div class="logo"><img src="{{ asset('logoHenryWallon.jpg') }}" alt=""></div>
            </div>
            <h4>INGRESAR</h4>
            <!-- formulario para inicio de sesión -->
            <form action="{{ url('login') }}" method="post">
            @csrf
                <div class="mb-3">
                    <label for="nombreUsuario" class="form-label">Usuario:</label>
                    <input type="text" class="form-control" id="nombreUsuario" aria-describedby="nombreUsuario">
                </div>
                <div class="mb-3">
                    <label for="contrasenia" class="form-label">Contraseña:</label>
                    <input type="password" class="form-control" id="contrasenia">
                </div>
                <!--botón para iniciar-->
                <button type="submit" class="btn btn-primary">Ingresar</button>
            </form>
            <div id="mensaje" class="form-text">Si olvidaste tu contraseña, comunícate con el Administrador.</div>
        </div>
    </div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</body>
</html>
