<?php
$view = $_GET['view'] ?? '';
$controller = $_GET['controller'] ?? '';

if ($controller === 'auth') {
    include "controllers/AuthController.php";
} elseif ($controller === 'diagnostico') {
    include "controllers/DiagnosticoController.php";
} elseif ($view === 'diagnostico') {
    include "views/diagnostico.php";
} else {
    include "views/login.php";
}