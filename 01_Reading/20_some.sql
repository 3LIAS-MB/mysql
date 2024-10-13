-- SOME compara un valor con un conjunto de valores devueltos por una subconsulta. La comparación 
-- será TRUE si al menos uno de los valores en el conjunto satisface la condición especificada.
SELECT nombre, salario
FROM empleados
WHERE salario > SOME (SELECT salario_minimo FROM proyectos);

-- Devuelve TRUE solo si todos los valores devueltos por la subconsulta cumplen con la condición.
SELECT nombre, salario
FROM empleados
WHERE salario > ALL (SELECT salario_minimo FROM proyectos);
