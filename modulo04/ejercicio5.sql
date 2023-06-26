-- a) Lista el apellido de todos los empleados.
SELECT apellido FROM empleados;

-- b) Lista el apellido de los empleados eliminando los apellidos que estén repetidos.
SELECT DISTINCT apellido FROM empleados;

-- c) Lista todas las columnas de la tabla empleados.
SELECT * FROM empleados;

-- d) Lista el nombre y apellido de todos los empleados.
SELECT nombre, apellido FROM empleados;

-- e) Lista el cuit/cuil de los departamentos de los empleados que aparecen en la tabla empleados.
SELECT empleados.cuil_cuit FROM empleados JOIN departamentos ON empleados.departamento = departamentos.departamento_id;

-- f) Lista el nombre y apellido de los empleados en una única columna.
SELECT CONCAT(nombre, ' ', apellido) AS nombre_completo FROM empleados;

-- g) Lista el nombre y apellido de los empleados en una única columna, convirtiendo todos los caracteres en mayúscula.
SELECT CONCAT(UPPER(nombre), ' ', UPPER(apellido)) AS nombre_completo FROM empleados;

-- h) Lista el nombre y apellido de los empleados en una única columna, convirtiendo todos los caracteres en minúscula.
SELECT CONCAT(LOWER(nombre), ' ', LOWER(apellido)) AS nombre_completo FROM empleados;

-- i) Lista el nombre de los departamentos y el valor del presupuesto actual ordenado de forma ascendente.
SELECT nombre, presupuesto FROM departamentos ORDER BY presupuesto ASC;

-- j) Lista el nombre de todos los departamentos ordenados de forma ascendente.
SELECT nombre FROM departamentos ORDER BY nombre ASC;

-- k) Lista el nombre de todos los departamentos ordenados de forma descendente.
SELECT nombre FROM departamentos ORDER BY nombre DESC;

-- l) Lista el apellido y el nombre de todos los empleados, ordenados de forma alfabética tendiendo en cuenta en primer lugar su apellido y luego su nombre.
SELECT apellido, nombre FROM empleados ORDER BY apellido ASC, nombre ASC;

-- m) Devuelve una lista con el nombre y el presupuesto, de los 3 departamentos que tienen mayor presupuesto.
SELECT nombre, presupuesto FROM departamentos ORDER BY presupuesto DESC LIMIT 3;

-- n) Devuelve una lista con el nombre y el presupuesto, de los 3 departamentos que tienen menor presupuesto.
SELECT nombre, presupuesto FROM departamentos ORDER BY presupuesto ASC LIMIT 3;

-- o) Devuelve una lista con el nombre de los departamentos y el presupuesto, de aquellos que tienen un presupuesto mayor o igual a $150000.
SELECT nombre, presupuesto FROM departamentos WHERE presupuesto >= 150000;

-- p) Devuelve una lista con el nombre de los departamentos y el presupuesto, de aquellos que tienen un presupuesto entre $100000 y $200000. Sin utilizar el operador BETWEEN.
SELECT nombre, presupuesto FROM departamentos WHERE presupuesto >= 100000 AND presupuesto <= 200000;

-- q) Devuelve una lista con el nombre de los departamentos que no tienen un presupuesto entre $100000 y $200000. Sin utilizar el operador BETWEEN.
SELECT nombre FROM departamentos WHERE presupuesto < 100000 OR presupuesto > 200000;

-- r) Devuelve una lista con el nombre de los departamentos que tienen un presupuesto entre $100000 y $200000. Utilizando el operador BETWEEN.
SELECT nombre FROM departamentos WHERE presupuesto BETWEEN 100000 AND 200000;

-- s) Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno.
SELECT empleados.*, departamentos.nombre AS nombre_departamento, departamentos.presupuesto, departamentos.estado FROM empleados 
JOIN departamentos ON empleados.departamento = departamentos.departamento_id;

-- t) Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno. Ordena el resultado, en primer lugar por el nombre del departamento (en orden alfabético) y en segundo lugar por apellido y el nombre de los empleados.
SELECT empleados.*, departamentos.nombre AS nombre_departamento, departamentos.presupuesto, departamentos.estado FROM empleados 
JOIN departamentos ON empleados.departamento = departamentos.departamento_id
ORDER BY nombre_departamento ASC, empleados.apellido ASC, empleados.nombre ASC;

-- u) Devuelve un listado con el código y el nombre del departamento, solamente de aquellos departamentos que tienen empleados.
SELECT departamentos.departamento_id, departamentos.nombre AS nombre_departamento FROM departamentos
JOIN empleados ON departamentos.departamento_id = empleados.departamento
GROUP BY departamentos.departamento_id, departamentos.nombre;

-- v) Devuelve el nombre del departamento donde trabaja el empleado que tiene el cuit 27-38382980-3.
SELECT departamentos.departamento_id, departamentos.nombre AS nombre_departamento FROM departamentos
JOIN empleados ON departamentos.departamento_id = empleados.departamento
WHERE empleados.cuil_cuit = '27-38382980-3';

-- w) Devuelve el nombre del departamento donde trabaja el empleado Pepe Ruiz.
SELECT departamentos.nombre AS nombre_departamento FROM departamentos
JOIN empleados ON departamentos.departamento_id = empleados.departamento WHERE empleados.nombre = 'Pepe' AND empleados.apellido = 'Ruiz';

-- x) Devuelve un listado con los datos de los empleados que trabajan en el departamento de I+D. Ordena el resultado alfabéticamente. 
SELECT * FROM empleados
JOIN departamentos ON empleados.departamento = departamentos.departamento_id WHERE departamentos.nombre = 'I+D'
ORDER BY empleados.apellido, empleados.nombre;

-- y) Devuelve un listado con los datos de los empleados que trabajan en el departamento de Sistemas, Contabilidad o I+D. Ordena el resultado alfabéticamente.
SELECT * FROM empleados
JOIN departamentos ON empleados.departamento = departamentos.departamento_id WHERE departamentos.nombre IN ('Sistemas', 'Contabilidad', 'I+D')
ORDER BY empleados.apellido, empleados.nombre;

-- z) Devuelve una lista con el nombre de los empleados que tienen los departamentos que no tienen un presupuesto entre $100000 y $200000
SELECT empleados.nombre FROM empleados
JOIN departamentos ON empleados.departamento = departamentos.departamento_id WHERE departamentos.presupuesto < 100000 OR departamentos.presupuesto > 200000;
