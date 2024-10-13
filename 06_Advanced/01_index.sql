/*
Índices (Indexes)
Concepto: Un índice es una estructura de datos que mejora la velocidad de las operaciones de recuperación de datos en una tabla a costa de espacio adicional y tiempo de mantenimiento para las operaciones de escritura (inserción, actualización y eliminación). Los índices se crean en una o más columnas de una tabla.

Para qué sirve:

-> Acelera las consultas SELECT al permitir búsquedas rápidas y eficientes.
-> Mejora el rendimiento en las cláusulas WHERE, JOIN, ORDER BY y GROUP BY.

*/

/*
INDEX
Lección 18.1: https://youtu.be/OuJerKzV5T0?t=18219
*/

-- Crea un índice llamado "idx_name" en la tabla "users" asociado al campo "name"
CREATE INDEX idx_name ON users(name);

-- Crea un índice único llamado "idx_name" en la tabla "users" asociado al campo "name"
/*Indice primario?*/
CREATE UNIQUE INDEX idx_name ON users(name);

-- Crea un índice llamado "idx_name_surname" en la tabla "users" asociado a los campos "name" y "surname"
/*Indice compuesto*/
CREATE UNIQUE INDEX idx_name_surname ON users(name, surname);

-- Elimina el índice llamado "idx_name"
DROP INDEX idx_name ON users;