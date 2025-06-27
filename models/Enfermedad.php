<?php
require_once "Conexion.php";

class Enfermedad {
  public static function getById(int $id): ?array {
    $con = Conexion::conectar();
    $stmt = $con->prepare("SELECT id, nombre, descripcion, imagen FROM enfermedad WHERE id = ?");
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $resultado = $stmt->get_result();
    
    if ($fila = $resultado->fetch_assoc()) {
      $stmt->close();
      return $fila;
    }
    
    $stmt->close();
    return null;
  }
}
