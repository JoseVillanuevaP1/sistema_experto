# 🧠 Sistema Experto de Diagnóstico Médico

Este proyecto es un sistema experto web desarrollado en PHP y Prolog que permite diagnosticar enfermedades comunes a partir de los síntomas seleccionados por el usuario. Utiliza una base de conocimientos lógica (Prolog) para inferir el diagnóstico y guarda los resultados en una base de datos MySQL.

## 📌 Funcionalidades

- Autenticación de usuarios (sesiones PHP).
- Selección de síntomas por parte del usuario.
- Diagnóstico automático usando Prolog.
- Registro de atenciones en base de datos.
- Visualización detallada del diagnóstico (nombre, descripción e imagen).
- Interfaz amigable con Bootstrap 5.

## ⚙️ Tecnologías utilizadas

- **Frontend**: HTML5, Bootstrap 5, Bootstrap Icons
- **Backend**: PHP 8.x
- **Motor lógico**: SWI-Prolog
- **Base de datos**: MySQL
- **Servidor local recomendado**: Laragon

## 🩺 Enfermedades consideradas

| ID | Enfermedad  | Síntomas clave |
|----|-------------|----------------|
| 1  | Gripe       | Fiebre, dolor de garganta, congestión nasal |
| 2  | COVID-19    | Fiebre, tos seca, dificultad para respirar |
| 3  | Neumonía    | Fiebre, dificultad para respirar, dolor en el pecho |
| 4  | Alergia     | Congestión nasal, estornudos, picazón en ojos/nariz |
| 5  | Migraña     | Dolor de cabeza intenso, náuseas, sensibilidad a la luz |

## 🧪 Cómo usar

- Clona el repositorio o cópialo a tu servidor local.
- Configura tu base de datos con el archivo `enfermedad` (puedes usar el script SQL).
- Coloca las imágenes de enfermedades en la carpeta `/img/`.
- Verifica la ruta correcta del ejecutable de Prolog (`swipl.exe`) en el controlador.
- Inicia sesión como usuario y realiza el diagnóstico.

## ✅ Requisitos

- PHP >= 8.0  
- SWI-Prolog instalado  
- MySQL o MariaDB  
- Navegador moderno  

## 🧑 Estudiantes

📧 2123010523@untels.edu.pe  
📧 2123010122@untels.edu.pe

💻 Universidad Nacional Tecnológica de Lima Sur - UNTELS