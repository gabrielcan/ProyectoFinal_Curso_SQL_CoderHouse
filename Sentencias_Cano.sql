-- Creamos un usuario para que se de solo lectura en todas las tablas pero no puede eliminar registros de las tablas.
create USER gabi_Solo_lectura@localhost identified BY '123456';
-- Creamos un usuario para que tendra permisos de lectura, inserción y modificacion de datos pero no puede eliminar registros de las tablas.
create USER gabi_Solo_ADMIN@localhost identified BY '123456';

use mysql;
select * from user;

-- Asiganmos permisos de sólo lectura en todas las tablas de la base de datos
GRANT SELECT ON *.* TO 'gabi_Solo_lectura'@'localhost';

-- Asiganmos permisos de lectura, inserción y modificación de datos en todas las tablas de la base de datos
GRANT SELECT, INSERT, UPDATE ON *.* TO 'gabi_Solo_ADMIN'@'localhost';