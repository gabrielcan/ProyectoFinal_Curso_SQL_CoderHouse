
-- verificamos el si esta activado el auto commit
select @@autocommit;

-- Cambiamos el valor de autocommit a "0" para deshabilitar el autocommit.
set AUTOCOMMIT=0;

/*Los ejercicios fueron aplicados con tablas no necesariamente de transacciones porque 
no termine de entender como aplicar dichos conceptos, por lo tanto, me limite a poder cumplir 
con lo que solicitaba el desafio de TCL*/

-- ejercico Tabla 1
START transaction;
 delete from productos where id_Productos=15;
-- Commit;
 
START transaction;
 delete from productos where id_Productos=14;
-- Rollback;
select * from productos;

-- Ejercicio Tabla 2

/*siguiendo la consigna para la segunda tabla Agregue despues del 4 registro un savepoint_01 y luego del octavo registro otro savepoint_02
Finalmente agrego un rollback al savepoint_01, según entendi en el último item de la consigna.
*/

START transaction;
INSERT INTO cargos_empleados (Nombre,Descripcion) VALUES 
('Ejecutivo','tareas de administracion'),
('Gerente','tareas de administracion gerencial'),
('Abogado','tareas referidas a la parte legal del comercio'),
('Decoracion','Diseños y cambios de imagen del local');
SAVEPOINT savepoint_01;
INSERT INTO cargos_empleados (Nombre,Descripcion) VALUES
('Electricista','mantenimiento del tendido electrico del local'),
('Mantenimiento','tareas de mantenimiento generales del local'),
('Jardinero','tareas de mantenimientos del jardin'),
('Medico','asistencia media dentro del local');
SAVEPOINT savepoint_02;

/* agrego un rollback al savepoint_01*/

-- ROLLBACK TO SAVEPOINT savepoint_01;
-- Commit

select * from cargos_empleados;
