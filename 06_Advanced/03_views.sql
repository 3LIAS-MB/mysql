/*
Vistas (Views)
Concepto: Una vista es una tabla virtual que se basa en el resultado de una consulta SQL. No almacena datos físicamente, sino que se genera dinámicamente cuando se consulta.

Para qué sirve:

-> Simplifica consultas complejas al encapsularlas en una vista.
-> Mejora la seguridad al limitar el acceso a ciertas columnas o filas.
-> Facilita la reusabilidad y la organización lógica de datos.*/

/*
VIEWS
Lección 18.3: https://youtu.be/OuJerKzV5T0?t=19663
*/

-- Crea unaa vista llamada "v_adult_users" con los nombres y edades de usuarios de la table "users"
-- que tienen una edad igual o mayor a 18 años.
CREATE VIEW v_adult_users AS
SELECT name, age
FROM users
WHERE age >= 18;

SELECT * FROM v_adult_users;

-- Elimina la vista llamada "v_adult_users"
DROP VIEW v_adult_users;