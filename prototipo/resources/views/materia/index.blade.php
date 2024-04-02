<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Materias</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
    

     @foreach($materias as $materia)
     <div class="row">
        <div class="col-xl-3 col-lg-4 col-md-6 mb-4">
          <div class="bg-white rounded shadow-sm"><img src="{{$materia->imagen}}" alt="" class="img-fluid card-img-top">
            <div class="p-4">
              <h2> <a class="text-dark">{{$materia->nombre}}</a></h2>
              <p class="small text-muted mb-0">{{$materia->objetivo}}</p>
                <div class="btn-group btn-group-toggle" data-toggle="buttons" align="center">
                    <label class="btn btn-secondary active">
                      Instrumentación
                    </label>
                    <label class="btn btn-secondary">
                      Calificaciones
                    </label>
                    <label class="btn btn-secondary">
                      Asistencias
                    </label>
                  </div>
            </div>
          </div>
        </div>
    @endforeach
</body>
</html>