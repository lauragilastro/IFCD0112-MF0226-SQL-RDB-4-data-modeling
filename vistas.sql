CREATE VIEW zi_asignaciones AS
SELECT choferes.num_chofer, choferes.nombre, choferes.apellido, choferes.zona,
 vehiculos.matricula, vehiculos.tipo_vehiculo
FROM choferes
LEFT JOIN vehiculos ON choferes.num_vehiculo = vehiculos.num_vehiculo;
-- Esta es para leer fácilmente el chófer con su vehículo y su zona asignados.

CREATE VIEW zi_zonas_libres AS
SELECT zonas.zona
FROM zonas
LEFT JOIN choferes ON choferes.zona = zonas.zona
WHERE choferes.num_chofer IS NULL;
-- Simplemente muestra las zonas sin chófer, que son las que se pueden asignar.

CREATE VIEW v_vehiculos_libres AS
SELECT vehiculos.num_vehiculo, vehiculos.matricula, vehiculos.tipo_vehiculo
FROM vehiculos
LEFT JOIN choferes ON choferes.num_vehiculo = vehiculos.num_vehiculo
WHERE choferes.num_chofer IS NULL;
--Igual, muestra los vehículos sin chófer.