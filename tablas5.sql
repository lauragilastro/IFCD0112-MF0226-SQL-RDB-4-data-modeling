create table zonas (
 zona VARCHAR(50) PRIMARY KEY
);

create table vehiculos (
 num_vehiculo     VARCHAR(10) PRIMARY KEY,
 matricula        VARCHAR(10) NOT NULL UNIQUE,
antiguedad DATE        NOT NULL,
 tipo_vehiculo    VARCHAR(20) NOT NULL
);

create table choferes (
 num_chofer   INT AUTO_INCREMENT PRIMARY KEY,
 nombre       VARCHAR(50)  NOT NULL,
 apellido     VARCHAR(100) NOT NULL,
 dni          CHAR(9)      NOT NULL UNIQUE,
 direccion    VARCHAR(150),
 zona         VARCHAR(50),
 num_vehiculo VARCHAR(10),
 sueldo       DECIMAL(8,2) NOT NULL,
fecha_alta   DATE         NOT NULL,
 telefono     VARCHAR(15),
 FOREIGN KEY (zona) REFERENCES zonas(zona)
ON UPDATE CASCADE ON DELETE SET NULL,
 FOREIGN KEY (num_vehiculo) REFERENCES vehiculos(num_vehiculo)
ON UPDATE CASCADE ON DELETE SET NULL
);