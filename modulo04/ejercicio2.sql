CREATE TABLE PAIS
(
  pais_id INT NOT NULL,
  nombre_pais VARCHAR(40) NOT NULL,
  PRIMARY KEY (pais_id),
  UNIQUE (nombre_pais)
);

CREATE TABLE PROVINCIA
(
  provincia_id INT NOT NULL,
  nombre_provincia VARCHAR(40) NOT NULL,
  pais_id INT NOT NULL,
  PRIMARY KEY (provincia_id),
  FOREIGN KEY (pais_id) REFERENCES PAIS(pais_id)
);

CREATE TABLE LOCALIDAD
(
  cod_localidad INT NOT NULL,
  nombre_localidad VARCHAR(40) NOT NULL,
  cod_postal INT NOT NULL,
  provincia_id INT NOT NULL,
  PRIMARY KEY (cod_localidad),
  FOREIGN KEY (provincia_id) REFERENCES PROVINCIA(provincia_id)
);

CREATE TABLE EMPLEADO
(
  empleado_id INT NOT NULL,
  dni INT NOT NULL,
  nombre VARCHAR(40) NOT NULL,
  telefono BIGINT NOT NULL,
  email VARCHAR(50) NOT NULL,
  fecha_alta DATE NOT NULL,
  cod_localidad INT NOT NULL,
  PRIMARY KEY (empleado_id),
  FOREIGN KEY (cod_localidad) REFERENCES LOCALIDAD(cod_localidad)
);

INSERT INTO PAIS (pais_id, nombre_pais)
VALUES
  (1, 'Argentina'),
  (2, 'España'),
  (3, 'Estados Unidos');
  
  INSERT INTO PROVINCIA (provincia_id, nombre_provincia, pais_id)
VALUES
  (1, 'Misiones', 1),
  (2, 'Madrid', 2),
  (3, 'California', 3);
  
  INSERT INTO LOCALIDAD (cod_localidad, nombre_localidad, cod_postal, provincia_id)
VALUES
  (1, 'Posadas', 3300, 1),
  (2, 'Barcelona', 08001, 2),
  (3, 'Los Angeles', 90001, 3);
  
  INSERT INTO EMPLEADO (empleado_id, dni, nombre, telefono, email, fecha_alta, cod_localidad)
VALUES
  (1, 23452345, 'Juan Pereyra', 3764432453, 'juan.pereyra@gmail.com', '2020-01-01', 1),
  (2, 54633654, 'María López', 987654321, 'maria.lopez@gmail.com', '2022-02-01', 2),
  (3, 23454567, 'Carlos Rodríguez', 456789123, 'carlos.rodriguez@gmail.com', '2022-03-01', 3);