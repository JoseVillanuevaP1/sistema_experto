<?php
require_once "models/Sintoma.php";
$sintomas = Sintoma::obtenerTodos();
?>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Realizar Diagnóstico</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm">
  <div class="container">
    <a class="navbar-brand" href="#">Sistema Experto</a>
    <div class="ms-auto">
      <a href="logout.php" class="btn btn-outline-danger">Cerrar sesión</a>
    </div>
  </div>
</nav>

<div class="container py-5">
  <div class="row justify-content-center">
    <div class="col-lg-8">
      <div class="card shadow-sm">
        <div class="card-header bg-primary text-white">
          <h4 class="mb-0">Selecciona tus Síntomas</h4>
        </div>
        <div class="card-body">
          <form action="index.php?controller=diagnostico" method="POST">
            <div class="row">
              <?php while ($row = $sintomas->fetch_assoc()): ?>
                <div class="col-md-6">
                  <div class="form-check mb-2">
                    <input class="form-check-input" type="checkbox"
                           id="sintoma<?= $row['idsintoma'] ?>"
                           name="sintomas[]" value="<?= $row['idsintoma'] ?>">
                    <label class="form-check-label" for="sintoma<?= $row['idsintoma'] ?>">
                      <?= htmlspecialchars($row['descripcion']) ?>
                    </label>
                  </div>
                </div>
              <?php endwhile; ?>
            </div>

            <div class="mt-4 text-center">
              <button type="submit" class="btn btn-success btn-lg">
                <i class="bi bi-stethoscope"></i> Realizar Diagnóstico
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Bootstrap Icons CDN if you want to use icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
