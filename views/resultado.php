<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Resultado del Diagnóstico</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet"/>
  <style>
    .enfermedad-img {
      max-height: 200px;
      object-fit: contain;
      border-radius: 10px;
    }
  </style>
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
    <div class="col-md-10 col-lg-8">
      <div class="card shadow-sm">
        <div class="card-header bg-success text-white text-center">
          <h4 class="mb-0"><i class="bi bi-check-circle-fill me-2"></i>Diagnóstico</h4>
        </div>
        <div class="card-body text-center">
          <?php if (isset($enfermedad) && $enfermedad): ?>
            <h5 class="text-success fw-bold mb-3"><?= htmlspecialchars($enfermedad['nombre']) ?></h5>
            <img src="<?= htmlspecialchars($enfermedad['imagen']) ?>" alt="Imagen de la enfermedad" class="img-fluid enfermedad-img mb-4">
            <p class="text-muted"><?= nl2br(htmlspecialchars($enfermedad['descripcion'])) ?></p>
          <?php else: ?>
            <div class="alert alert-warning py-3 fs-5">
              <strong><?= htmlspecialchars($result ?? 'No se pudo determinar el diagnóstico.') ?></strong>
            </div>
          <?php endif; ?>
          <a href="index.php?view=diagnostico" class="btn btn-primary mt-4">
            <i class="bi bi-arrow-left-circle me-1"></i> Realizar nuevo diagnóstico
          </a>
        </div>
      </div>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
