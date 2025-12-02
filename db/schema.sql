USE taskflow;

CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(150) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    rol VARCHAR(20) DEFAULT 'usuario',
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE proyectos (
    id_proyecto INT AUTO_INCREMENT PRIMARY KEY,
    id_propietario INT NOT NULL,
    titulo VARCHAR(150) NOT NULL,
    descripcion TEXT,
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    fecha_fin_prevista DATE,
    estado VARCHAR(20) DEFAULT 'activo',
    FOREIGN KEY (id_propietario) REFERENCES usuarios(id_usuario)
);

CREATE TABLE estados_tarea (
    id_estado INT AUTO_INCREMENT PRIMARY KEY,
    nombre_estado VARCHAR(50) NOT NULL UNIQUE,
    orden INT NOT NULL
);

CREATE TABLE tareas (
    id_tarea INT AUTO_INCREMENT PRIMARY KEY,
    id_proyecto INT NOT NULL,
    id_usuario_asignado INT,
    id_estado INT NOT NULL,
    titulo VARCHAR(150) NOT NULL,
    descripcion TEXT,
    prioridad VARCHAR(10) DEFAULT 'media',
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    fecha_vencimiento DATE,

    FOREIGN KEY (id_proyecto) REFERENCES proyectos(id_proyecto),
    FOREIGN KEY (id_usuario_asignado) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_estado) REFERENCES estados_tarea(id_estado)
);

CREATE TABLE comentarios (
    id_comentario INT AUTO_INCREMENT PRIMARY KEY,
    id_tarea INT NOT NULL,
    id_usuario INT NOT NULL,
    texto TEXT NOT NULL,
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (id_tarea) REFERENCES tareas(id_tarea),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

CREATE TABLE historial_estados (
    id_historial INT AUTO_INCREMENT PRIMARY KEY,
    id_tarea INT NOT NULL,
    id_estado_anterior INT,
    id_estado_nuevo INT NOT NULL,
    fecha_cambio DATETIME DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (id_tarea) REFERENCES tareas(id_tarea)
);

DELIMITER $$

CREATE TRIGGER tr_cambio_estado
AFTER UPDATE ON tareas
FOR EACH ROW
BEGIN
    IF OLD.id_estado <> NEW.id_estado THEN
        INSERT INTO historial_estados
        (id_tarea, id_estado_anterior, id_estado_nuevo)
        VALUES
        (OLD.id_tarea, OLD.id_estado, NEW.id_estado);
    END IF;
END$$

DELIMITER ;
