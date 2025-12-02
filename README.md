# TaskFlow – Gestor de proyectos y tareas (DAM)

Proyecto final del ciclo **Desarrollo de Aplicaciones Multiplataforma (DAM)**.

Autor: **[Tu Nombre y Apellidos]**

---

## Índice

1. [Introducción](#introducción)
2. [Funcionalidades](#funcionalidades)
3. [Tecnologías utilizadas](#tecnologías-utilizadas)
4. [Guía de instalación](#guía-de-instalación)
5. [Guía de uso](#guía-de-uso)
6. [Documentación](#documentación)
7. [Diseño en Figma](#diseño-en-figma)
8. [Conclusión](#conclusión)
9. [Contribuciones, agradecimientos y referencias](#contribuciones-agradecimientos-y-referencias)
10. [Licencia](#licencia)
11. [Contacto](#contacto)

---

## Introducción

**TaskFlow** es una aplicación web para gestionar proyectos y tareas, pensada para estudiantes del ciclo DAM.  
Permite crear proyectos, asignar tareas, organizarlas en un tablero Kanban y hacer un seguimiento del estado de cada una.

### Objetivos

- Aplicar los conocimientos adquiridos en programación, bases de datos y desarrollo web.
- Desarrollar una aplicación completa con front-end, back-end y base de datos.
- Implementar buenas prácticas de control de versiones y despliegue.

### Motivación

La organización de proyectos y tareas es clave durante el ciclo formativo. TaskFlow busca ser una herramienta sencilla para gestionar el trabajo del día a día.

---

## Funcionalidades

- Registro e inicio de sesión de usuarios.
- Gestión de proyectos:
  - Crear, editar, listar y archivar proyectos.
- Gestión de tareas:
  - Crear, editar y eliminar tareas.
  - Asignación de tareas a usuarios.
  - Cambiar estado de la tarea (Backlog, Por hacer, En progreso, En revisión, Hecho).
- Tablero Kanban visual.
- Sistema de comentarios en las tareas.
- Filtrado y búsqueda de tareas por estado, prioridad y usuario.

---

## Tecnologías utilizadas

- **Front-end**: React, HTML5, CSS3 (o Tailwind CSS).
- **Back-end**: Node.js, Express.
- **Base de datos**: PostgreSQL.
- **Control de versiones**: Git + GitHub.
- **Diseño**: Figma.
- **Herramientas adicionales**: Trello, Postman.

---

## Guía de instalación

### Requisitos previos

- Node.js y npm instalados.
- PostgreSQL instalado y en ejecución.
- Git instalado.

### Pasos

1. Clonar el repositorio:

   ```bash
   git clone https://github.com/tu_usuario/taskflow.git
   cd taskflow
