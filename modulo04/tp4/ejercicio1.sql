
CREATE TABLE ALUMNO
(
  cod_matricula INT NOT NULL,
  nombre VARCHAR(40) NOT NULL,
  dni INT NOT NULL,
  fecha_nac DATE NOT NULL,
  email VARCHAR(50) NOT NULL,
  PRIMARY KEY (cod_matricula)
);

CREATE TABLE CURSO
(
  nombre VARCHAR(100) NOT NULL,
  cod_curso INT NOT NULL,
  PRIMARY KEY (cod_curso)
);

CREATE TABLE PROFESOR
(
  id_profesor INT NOT NULL,
  nombre VARCHAR(40) NOT NULL,
  especialidad VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  PRIMARY KEY (id_profesor)
);

CREATE TABLE inscripto_en
(
  cod_matricula INT NOT NULL,
  cod_curso INT NOT NULL,
  PRIMARY KEY (cod_matricula, cod_curso),
  FOREIGN KEY (cod_matricula) REFERENCES ALUMNO(cod_matricula),
  FOREIGN KEY (cod_curso) REFERENCES CURSO(cod_curso)
);

CREATE TABLE imparte
(
  id_profesor INT NOT NULL,
  cod_curso INT NOT NULL,
  PRIMARY KEY (id_profesor, cod_curso),
  FOREIGN KEY (id_profesor) REFERENCES PROFESOR(id_profesor),
  FOREIGN KEY (cod_curso) REFERENCES CURSO(cod_curso)
);

INSERT INTO ALUMNO (cod_matricula, nombre, dni, fecha_nac, email)
VALUES
  (1, 'Juan Perez', 12345678, '1999-01-01', 'juan.perez@gmail.com'),
  (2, 'María López', 98765432, '1998-05-15', 'maria.lopez@gmail.com'),
  (3, 'Carlos Rodríguez', 45678912, '1997-09-30', 'carlos.rodriguez@gmail.com');
  
  INSERT INTO CURSO (nombre, cod_curso)
VALUES
  ('Informática', 1),
  ('Gastronomía', 2),
  ('Enfermería', 3);
  
  INSERT INTO PROFESOR (id_profesor, nombre, especialidad, email)
VALUES
  (1, 'Lorena García', 'Informática', 'lorena.garcia@gmail.com'),
  (2, 'Ana Morales', 'Gastronomía', 'ana.morales@gmail.com'),
  (3, 'Martín Sánchez', 'Enfermería', 'martin.sanchez@gmail.com');
  
  INSERT INTO inscripto_en (cod_matricula, cod_curso)
VALUES
  (1, 1),
  (1, 2),
  (2, 1),
  (3, 3);
  
  INSERT INTO imparte (id_profesor, cod_curso)
VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (1, 3);