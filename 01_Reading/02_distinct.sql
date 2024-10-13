/*
DISTINCT
Lección 9.1: https://youtu.be/OuJerKzV5T0?t=6089
*/

-- Obtiene todos los datos distintos entre sí de la tabla "users"
SELECT DISTINCT * FROM users;

-- Obtiene todos los valores distintos referentes al atributo edad de la tabla "users"
SELECT DISTINCT age FROM users;

-- Obtiene los datos distintos basándose en la combinación de las columnas name y surname.

-- Si una combinación de name y surname se repite en
-- diferentes filas, solo se mostrará una vez en el resultado.
SELECT DISTINCT name, surname FROM users;
