CREATE DEFINER=`root`@`localhost` PROCEDURE `Ingresar_New_Clientes`(IN id_dni varchar(20),IN nomb varchar(50),IN apell varchar(50),IN correo varchar(100),IN f_ingreso date,IN f_nacimiento date, OUT Respuesta varchar(100))
BEGIN
/* Nos aseguramos que los campos que tienen fecha tengan el formato aceptado por mysql */
set f_ingreso = str_to_date(f_ingreso,'%Y-%m-%d');
set f_nacimiento= str_to_date(f_nacimiento,'%Y-%m-%d');
/* realizamos la validacion para asegurarnos de no tener campos vacios */
if id_dni <>'' and nomb <>'' and apell <>'' and correo <>'' and f_ingreso <> 0 and f_nacimiento <> 0 then

/*insertamos los valores enviados por el usuario a la tabla cliente*/
INSERT INTO clientes(dni,nombre,apellido,mail,Fecha_Ingreso,Fecha_Nacimiento) VALUE (id_dni,nomb,apell,correo,f_ingreso,f_nacimiento);
/* cargamos el mensaje indicando que la insercion se realizo con exito*/
set Respuesta='INSERCION EXITOSA';

/* ejecutamos la consulta select para poder ver toda la tabla cliente */
SET @InsertClient='select * from clientes order by id_clientes desc';
PREPARE runClientes from @InsertClient;
execute runClientes;
deallocate prepare runClientes;

else
/* cargamos el mensaje de error en la variable Respuesta ya que no se pudo completar la inserción*/
set Respuesta='ERROR EN INSERCION - TIENE QUE COMPLETAR TODOS LOS DATOS';
END IF;


END