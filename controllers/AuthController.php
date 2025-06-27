<?php
require_once "models/Usuario.php";

session_start();
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['registrar'])) {
        $dni = $_POST['dni'];
        $contrasena = $_POST['contrasena'];
        $nombres = $_POST['nombres'];
        $apellidos = $_POST['apellidos'];
        $sexo = $_POST['sexo'];
        $correo = $_POST['correo'];
        $fecha = $_POST['fecha_nacimiento'];

        $id = Usuario::registrar($dni, $contrasena, $nombres, $apellidos, $sexo, $correo, $fecha);

        if ($id === false) {
            echo "<script>alert('El DNI o correo ya están registrados'); window.history.back();</script>";
            exit;
        }

        $_SESSION['idusuario'] = $id;
        header("Location: index.php?view=diagnostico");
        exit;
    } else if (isset($_POST['login'])) {
        $identificador = $_POST['dni'];
        $contrasena = $_POST['contrasena'];

        $res = Usuario::buscarPorDNIoCorreo($identificador);
        if ($res->num_rows > 0) {
            $usuario = $res->fetch_assoc();

            if (password_verify($contrasena, $usuario['contrasena'])) {
                $_SESSION['idusuario'] = $usuario['idusuario'];
                header("Location: index.php?view=diagnostico");
                exit;
            } else {
                echo "<script>alert('Contraseña incorrecta'); window.history.back();</script>";
                exit;
            }
        } else {
            echo "<script>alert('Usuario no encontrado'); window.history.back();</script>";
            exit;
        }
    }
}
?>
