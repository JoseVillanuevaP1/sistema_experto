<?php
require_once "models/Atencion.php";
require_once "models/Enfermedad.php";
session_start();

if (!isset($_SESSION['idusuario'])) {
    header("Location: index.php");
    exit;
}

$idusuario = $_SESSION['idusuario'];
$sintomas   = $_POST['sintomas'] ?? [];

// 1) Crea la lista para Prolog
$prologList = "[" . implode(",", array_map(fn($s) => "s$s", $sintomas)) . "]";

// 2) Ejecuta Prolog
$swipl  = '"C:\\Program Files\\swipl\\bin\\swipl.exe"';
$plfile = __DIR__ . "\\diagnostico.pl";
$cmd    = "$swipl -s \"$plfile\" -g \"test($prologList)\" -t halt.";
$salida = shell_exec($cmd);

// 3) Limpia y obtén el código
$code = trim($salida);

// 4) Consulta la enfermedad desde BD
$enfermedad = Enfermedad::getById((int)$code);
$result = $enfermedad['nombre'] ?? 'No se pudo determinar el diagnóstico.';

// 5) Guarda en la base de datos
$idatencion = Atencion::crear($idusuario);
foreach (range(1, 12) as $i) {
    $resp = in_array($i, $sintomas) ? 's' : 'n';
    Atencion::guardarSintoma($idatencion, $i, $resp);
}
Atencion::actualizarResultado($idatencion, $result);

// 6) Muestra resultado
include __DIR__ . '/../views/resultado.php';

