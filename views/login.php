<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio</title>
</head>
<body>
<h2>Login</h2>
<form method="POST" action="index.php?controller=auth">
  DNI: <input type="text" name="dni">
  <button type="submit" name="login">Iniciar Sesión</button>
</form>
<hr>
<h2>Registro</h2>
<form method="POST" action="index.php?controller=auth">
  DNI: <input type="text" name="dni"><br>
  Nombres: <input type="text" name="nombres"><br>
  Apellidos: <input type="text" name="apellidos"><br>
  Sexo: <select name="sexo"><option value="M">M</option><option value="F">F</option></select><br>
  <button type="submit" name="registrar">Registrarse</button>
</form>
</body>
</html>