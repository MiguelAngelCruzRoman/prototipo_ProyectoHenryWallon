<!-- Modal de confirmación para eliminar -->
<div class="modal fade" id="confirmarEliminarModal" tabindex="-1" role="dialog" aria-labelledby="confirmarEliminarModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="confirmarEliminarModalLabel">Confirmar eliminación</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                ¿Seguro que deseas eliminar este usuario?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                <form id="eliminarUsuarioForm" method="POST">
                    @csrf
                    @method('DELETE')
                    <button id="confirmarEliminarBtn" type="submit" class="btn btn-danger">Eliminar</button>
                </form>
            </div>
        </div>
    </div>
</div>
