<?php
require_once "Conexion.php";

class Sintoma {
    public static function obtenerTodos() {
        $con = Conexion::conectar();
        return $con->query("SELECT * FROM sintoma");
    }
}
?>