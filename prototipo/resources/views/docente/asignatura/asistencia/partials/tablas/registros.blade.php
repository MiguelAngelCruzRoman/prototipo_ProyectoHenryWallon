<?php
$fechasUnicas = [];
foreach ($asistencias as $asistencia) {
    $fecha = substr($asistencia->fecha, 0, 10); 
    if (!in_array($fecha, $fechasUnicas)) {
        $fechasUnicas[] = $fecha;
    }
}

$asistenciasPorEstudiante = [];
foreach ($asistencias as $asistencia) {
    $idEstudiante = $asistencia->id;
    if (!isset($asistenciasPorEstudiante[$idEstudiante])) {
        $asistenciasPorEstudiante[$idEstudiante] = [];
    }
    $asistenciasPorEstudiante[$idEstudiante][] = $asistencia;
}
?>

<div class="mb-8">
    <form action="#" method="POST">
        <table class="w-full border-collapse border border-gray-400">
            <thead>
                <tr>
                    <th class="border border-gray-400 px-4 py-2"># LISTA</th>
                    <th class="border border-gray-400 px-4 py-2">NOMBRE DEL ALUMNO</th>
                    <?php foreach ($fechasUnicas as $fechaUnica): ?>
                        <th class="border border-gray-400 px-4 py-2"><?= $fechaUnica ?></th>
                    <?php endforeach; ?>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($asistenciasPorEstudiante as $idEstudiante => $asistenciasEstudiante): ?>
                    <?php $primerAsistencia = reset($asistenciasEstudiante); ?>
                    <tr>
                        <td class="border border-gray-400 px-4 py-2"><?= $primerAsistencia->id ?></td>
                        <td class="border border-gray-400 px-4 py-2"><?= $primerAsistencia->primerNombre . ' ' . $primerAsistencia->segundoNombre . ' ' . $primerAsistencia->apellidoPaterno ?></td>
                        <?php foreach ($fechasUnicas as $fechaUnica): ?>
                            <?php $asistenciaEstudiante = ''; ?>
                            <?php foreach ($asistenciasEstudiante as $asistencia): ?>
                                <?php if (substr($asistencia->fecha, 0, 10) === $fechaUnica): ?>
                                    <?php $asistenciaEstudiante = substr($asistencia->estatus, 0, 1); ?>
                                    <?php break; ?>
                                <?php endif; ?>
                            <?php endforeach; ?>
                            <td class="border border-gray-400 px-4 py-2"><?= $asistenciaEstudiante ?></td>
                        <?php endforeach; ?>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </form>
</div>
