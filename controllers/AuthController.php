<?php
require_once "models/Usuario.php";

session_start();
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['registrar'])) {
        $idusuario = Usuario::registrar($_POST['dni'], $_POST['nombres'], $_POST['apellidos'], $_POST['sexo']);
        $_SESSION['idusuario'] = $idusuario;
        header("Location: index.php?view=diagnostico");
    } else if (isset($_POST['login'])) {
        $res = Usuario::buscarPorDNI($_POST['dni']);
        if ($res->num_rows > 0) {
            $usuario = $res->fetch_assoc();
            $_SESSION['idusuario'] = $usuario['idusuario'];
            header("Location: index.php?view=diagnostico");
        } else {
            echo "Usuario no encontrado. <a href='index.php'>Volver</a>";
        }
    }
}
?>
