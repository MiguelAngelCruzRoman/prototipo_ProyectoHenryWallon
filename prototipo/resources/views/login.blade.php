<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Iniciar Sesión</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>  
        .cardlogo{
            width:150px;
            height:150px;
            border-radius:50%;
            overflow:hidden;
            position:relative;
            margin:auto;
            border: 2px solid rgb(0, 0, 0);
           
        
        }
        .logo{
            width:95%;
            height:100%;
            background-size:center;
            background-position:center;
        }
        .card{
            width:auto;
            height:auto;

        }
        .container{
            background-image: '/public/frenteHenryWallons.png' ;
        }
        </style>
</head>
<body>
<div class="container mt-5">

<div class="card" style="width: 18  rem;">
<!--div para logo-->
    <div class="inicio">
        <div class="cardlogo">
            <div class="logo"> <img src="{{ asset('logoHenryWallon.jpg') }}" alt="" class="logo"></div>
        </div>
 <!-- formulario para inicio de sesión --> 
<form>
  <div class="mb-3">
    <label for="nombreUsuario" class="form-label">Coloca tu nombre de usuario</label>
    <input type="text" class="form-control" id="nombreUsuario" aria-describedby="nombreUsuario">
      </div>
  <div class="mb-3">
    <label for="contrasenia" class="form-label">Coloca tu contraseña</label>
    <input type="password" class="form-control" id="contrasenia">
  </div>
<!--botón para iniciar-->
  <button type="submit" class="btn btn-primary">Ingresar</button>
</form>
  </div>




           
</div>
            
        </div>
    </div>      


      


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</body>
</html>