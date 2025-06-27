<?php
require_once "Conexion.php";

class Usuario {
    public static function buscarPorDNI($dni) {
        $con = Conexion::conectar();
        return $con->query("SELECT * FROM usuario WHERE dni = '$dni'");
    }

    public static function registrar($dni, $nombres, $apellidos, $sexo) {
        $con = Conexion::conectar();
        $con->query("INSERT INTO usuario (dni, nombres, apellidos, sexo) VALUES ('$dni', '$nombres', '$apellidos', '$sexo')");
        return $con->insert_id;
    }
}
?>
