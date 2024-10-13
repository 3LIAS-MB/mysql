/*
Stored Procedures (Procedimientos Almacenados)
Concepto: Un procedimiento almacenado es un conjunto de instrucciones SQL que se almacenan y se ejecutan en el servidor de la base de datos. Pueden aceptar parámetros de entrada y devolver resultados.

Para qué sirve:

-> Encapsula lógica de negocios.
-> Reduce el tráfico de red y mejora el rendimiento.
-> Aumenta la seguridad y el control de acceso.
-> Simplifica el mantenimiento y las actualizaciones.*/

/*
STORED PROCEDURES
Lección 18.4: https://youtu.be/OuJerKzV5T0?t=20033
*/

-- Crea un procedimiento almacenado llamado "p_all_users" que obtiene todos los datos de "users"
DELIMITER //
CREATE PROCEDURE p_all_users()
BEGIN
	SELECT * FROM users;
END//

-- Invoca al procedimiento almacenado llamado "p_all_users"
CALL p_all_users;

-- Crea un procedimiento almacenado llamado "p_age_users" parametrizado para
-- obtener usuarios con edad variable
DELIMITER //
CREATE PROCEDURE p_age_users(IN age_param int)
BEGIN
	SELECT * FROM users WHERE age = age_param;
END//

-- Invoca al procedimiento almacenado llamado "p_age_users" con un parámetro de valor 30
CALL p_age_users(30);

-- Elimina el procedimiento almacenado llamado "p_age_users"
DROP PROCEDURE p_age_users;