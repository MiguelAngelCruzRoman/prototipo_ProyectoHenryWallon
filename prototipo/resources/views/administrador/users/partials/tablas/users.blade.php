<style>
    table {
        border-collapse: separate;
        border-spacing: 0;
        border: 1px solid rgb(123, 117, 117);
        border-radius: 10px;
        overflow: hidden;
    }
    th, td {
        border: 1px solid rgb(123, 117, 117);
        padding: 8px;
    }
    thead{
        background-color: rgb(224, 223, 223);
    }
</style>

<div class="row">
    <div class="col-md-12 relative overflow-x-auto shadow-md sm:rounded-lg">
    <table class="w-full text-sm text-left rtl:text-right rounded-2xl">
            <thead class="text-sm  uppercase">
                <tr>
                <th scope="col" class="px-6 py-3 text-center" style="color:black">Usuario</th>
                <th scope="col" class="px-6 py-3 text-center" style="color:black">Rol</th>
                <th scope="col" class="px-6 py-3 text-center" style="color:black">Nombre completo</th>
                <th scope="col" class="px-6 py-3 text-center" style="color:black">Contacto</th>
                <th scope="col" class="px-6 py-3 text-center" style="color:black">Status</th>
                <th scope="col" class="px-6 py-3 text-center" style="color:black">Acciones</th>
                </tr> 
            </thead>
            <tbody>
                @foreach ($users as $user)
                    <tr class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700">
                        <td scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white">{{ $user->email}}</td>
                        <td scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white"> {{$user->rol}}</td>
                        <td scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white">{{ $user->primerNombre}} {{ $user->segundoNombre }} <br> {{ $user->apellidoPaterno }} {{ $user->apellidoMaterno }}</td>
                        <td scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white"><ul><li>{{ $user->correo}}</li><li>{{ $user->telefono}}</li></ul></td>
                        <td scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white">{{ $user->estatus == 1 ? 'Activo' : 'Inactivo' }}</td>           
                        <td scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white">
                            <div class="btn-group" role="group" aria-label="Basic example">
                                <button onclick="window.location='{{ route('user.ver', ['idUser' => $user->id]) }}'" class="btn btn-primary mr-2">
                                <i class=" fas fa-eye" style="color:black"></i>
                                    <!--<img src="https://cdn-icons-png.flaticon.com/128/2874/2874802.png" alt="" height="20px"> Ver-->
                                </button>
                                <button onclick="window.location='{{ route('user.editar', ['idUser' => $user->id]) }}'" class="btn btn-warning mr-2">
                                <i class=" fas fa-pencil-alt" style="color:black"></i>
                                <!--  <img src="https://cdn-icons-png.flaticon.com/128/10337/10337163.png" alt="" height="20px"> Editar-->
                                </button>
                                <button onclick="window.location='{{ route('user.eliminar', ['idUser' => $user->id]) }}'" class="btn btn-danger mr-2">
                                <i class=" fas fa-trash" style="color:black"></i>   
                                <!--<img src="https://cdn-icons-png.flaticon.com/128/1828/1828939.png" alt="" height="20px"> Eliminar-->
                                </button>
                            </div>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>