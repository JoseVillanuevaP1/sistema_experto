<?php
require_once "models/Sintoma.php";
$sintomas = Sintoma::obtenerTodos();
?>

<form action="index.php?controller=diagnostico" method="POST">
  <h3>Síntomas</h3>
  <?php while ($row = $sintomas->fetch_assoc()): ?>
    <label>
      <input type="checkbox" name="sintomas[]" value="<?= $row['idsintoma'] ?>">
      <?= $row['descripcion'] ?>
    </label><br>
  <?php endwhile; ?>
  <br>
  <button type="submit">Realizar Diagnóstico</button>
</form>
<a href="logout.php">Cerrar sesión</a>