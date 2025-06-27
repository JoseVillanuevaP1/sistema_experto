<?php
require_once "Conexion.php";

class Atencion {
    public static function crear($idusuario) {
        $con = Conexion::conectar();
        $con->query("INSERT INTO atencion (idusuario) VALUES ($idusuario)");
        return $con->insert_id;
    }

    public static function guardarSintoma($idatencion, $idsintoma, $respuesta) {
        $con = Conexion::conectar();
        $con->query("INSERT INTO atencionsintoma (idatencion, idsintoma, respuesta) VALUES ($idatencion, $idsintoma, '$respuesta')");
    }

    public static function actualizarResultado($idatencion, $resultado) {
        $con = Conexion::conectar();
        $con->query("UPDATE atencion SET resultado = '$resultado' WHERE idatencion = $idatencion");
    }
}
?>
