<?php
require_once "Conexion.php";

class Usuario {
    public static function buscarPorDNIoCorreo($identificador) {
        $con = Conexion::conectar();
        $stmt = $con->prepare("SELECT * FROM usuario WHERE dni = ? OR correo = ?");
        $stmt->bind_param("ss", $identificador, $identificador);
        $stmt->execute();
        return $stmt->get_result();
    }

    public static function registrar($dni, $contrasena, $nombres, $apellidos, $sexo, $correo, $fecha) {
        $con = Conexion::conectar();

        $stmt = $con->prepare("SELECT idusuario FROM usuario WHERE dni = ? OR correo = ?");
        $stmt->bind_param("ss", $dni, $correo);
        $stmt->execute();
        $stmt->store_result();

        if ($stmt->num_rows > 0) {
            return false; // Ya existe el usuario
        }

        $stmt->close();

        // Hashear contraseña
        $hash = password_hash($contrasena, PASSWORD_DEFAULT);

        // Insertar nuevo usuario
        $stmt = $con->prepare("INSERT INTO usuario (dni, nombres, apellidos, sexo, correo, fecha_nacimiento, contrasena) VALUES (?, ?, ?, ?, ?, ?, ?)");
        $stmt->bind_param("sssssss", $dni, $nombres, $apellidos, $sexo, $correo, $fecha, $hash);
        $stmt->execute();

        $id = $stmt->insert_id;
        $stmt->close();

        return $id;
    }
}
?>
