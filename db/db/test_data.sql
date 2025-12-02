INSERT INTO estados_tarea (nombre_estado, orden) VALUES
('Backlog', 1),
('Por hacer', 2),
('En progreso', 3),
('En revisión', 4),
('Hecho', 5);

INSERT INTO usuarios (nombre, apellidos, email, password_hash, rol) VALUES
('Ana', 'García', 'ana@email.com', 'hash1', 'usuario'),
('Luis', 'Pérez', 'luis@email.com', 'hash2', 'usuario'),
('Admin', 'Sistema', 'admin@email.com', 'hash3', 'admin');

INSERT INTO proyectos (id_propietario, titulo, descripcion, fecha_fin_prevista)
VALUES
(1, 'Proyecto DAM – TaskFlow',
 'Gestión de proyectos para estudiantes DAM',
 '2026-06-30');

INSERT INTO tareas
(id_proyecto, id_usuario_asignado, id_estado, titulo, descripcion, prioridad, fecha_vencimiento)
VALUES
(1, 1, 2, 'Crear diagrama casos de uso',
 'Diseñar UML en draw.io', 'alta', '2025-12-20'),
(1, 1, 2, 'Crear diagrama ER',
 'Diseñar base de datos', 'alta', '2025-12-22'),
(1, 2, 3, 'API proyecto',
 'Endpoints CRUD', 'media', '2026-01-05');

INSERT INTO comentarios (id_tarea, id_usuario, texto)
VALUES
(1, 1, 'Revisar actores del diagrama'),
(3, 2, 'La API responde correctamente');
