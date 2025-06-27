<?php
require_once "models/Atencion.php";
session_start();

if (!isset($_SESSION['idusuario'])) {
    header("Location: index.php");
    exit;
}

$idusuario = $_SESSION['idusuario'];
$sintomas = $_POST['sintomas'] ?? [];

// Crea la lista de síntomas en formato Prolog
$prologList = "[" . implode(",", array_map(fn($s) => "s$s", $sintomas)) . "]";

$swipl = '"C:\\Program Files\\swipl\\bin\\swipl.exe"';
$plfile = __DIR__ . "\\diagnostico.pl";
$cmd = "$swipl -s \"$plfile\" -g \"test($prologList)\" -t halt.";

// Ejecuta y obtiene resultado
$salida = shell_exec($cmd);
$diagnostico = trim($salida ?? 'No se pudo determinar el diagnóstico.');

// Guardar en la base de datos
$idatencion = Atencion::crear($idusuario);
foreach (range(1, 12) as $i) {
    $respuesta = in_array($i, $sintomas) ? 's' : 'n';
    Atencion::guardarSintoma($idatencion, $i, $respuesta);
}
Atencion::actualizarResultado($idatencion, $diagnostico);

// Muestra resultado
include __DIR__ . '/../views/resultado.php';
