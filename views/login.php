<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Sistema Experto - Inicio de Sesión</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container d-flex justify-content-center align-items-center" style="min-height: 100vh;">
  <div class="card shadow p-4" style="width: 100%; max-width: 400px;">
    <h3 class="text-center mb-4">Iniciar Sesión</h3>
    
    <form method="POST" action="index.php?controller=auth">
      <div class="mb-3">
        <label for="dni" class="form-label">DNI</label>
        <input type="text" class="form-control" id="dni" name="dni" required>
      </div>
      <div class="mb-3">
        <label for="dni" class="form-label">Contraseña</label>
        <input type="password" class="form-control" id="contrasena" name="contrasena" required>
      </div>
      <button type="submit" name="login" class="btn btn-primary w-100">Ingresar</button>
    </form>

    <hr class="my-4">

    <div class="text-center">
      <p>¿No tienes una cuenta?</p>
      <a href="#" class="btn btn-outline-secondary w-100" data-bs-toggle="modal" data-bs-target="#modalRegistro">Registrarse</a>
    </div>
  </div>
</div>

<!-- Modal de Registro -->
<div class="modal fade" id="modalRegistro" tabindex="-1" aria-labelledby="modalRegistroLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <form method="POST" action="index.php?controller=auth">
        <div class="modal-header">
          <h5 class="modal-title" id="modalRegistroLabel">Registro de Usuario</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Cerrar"></button>
        </div>
        <div class="modal-body">
          <div class="mb-3">
            <label>DNI</label>
            <input type="text" class="form-control" name="dni" required>
          </div>
          <div class="mb-3">
            <label>Contraseña</label>
            <input type="password" name="contrasena" class="form-control" required>
          </div>
          <div class="mb-3">
            <label>Nombres</label>
            <input type="text" class="form-control" name="nombres" required>
          </div>
          <div class="mb-3">
            <label>Apellidos</label>
            <input type="text" class="form-control" name="apellidos" required>
          </div>
          <div class="mb-3">
            <label>Correo</label>
            <input type="email" class="form-control" name="correo" required>
          </div>
          <div class="mb-3">
            <label>Fecha de Nacimiento</label>
            <input type="date" class="form-control" name="fecha_nacimiento" required>
          </div>
          <div class="mb-3">
            <label>Sexo</label>
            <select name="sexo" class="form-select" required>
              <option value="">Seleccione</option>
              <option value="M">Masculino</option>
              <option value="F">Femenino</option>
            </select>
          </div>
        </div>
        <div class="modal-footer">
          <button type="submit" name="registrar" class="btn btn-success w-100">Registrarse</button>
        </div>
      </form>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
