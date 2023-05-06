/* Creacion de SP con breve descripción y ejemplo de uso de cada uno */

/*
Creamos un SP que permite poder realizar un Insert a la tabla Clientes, 
donde exige para su carga que los campos indicados sean distintos de vacíos, 
para poder ejecutarse con éxito la carga, 
devolverá una variable que tendrá un mensaje indicando que la carga fue exitosa 
y además se ejecuta una consulta a la tabla "clientes” ordenada por id_cliente de manera Desc 
con lo cual podremos ver el registro cargado. 
Ahora bien, si alguno de los campos ingresados está vacío, 
obtendremos en la variable de salida (Respuesta) un mensaje indicando que la carga no fue exitosa 
y que tienen que completar todos los campos.
*/

DELIMITER //
CREATE PROCEDURE `Ingresar_New_Clientes`(IN id_dni varchar(20),IN nomb varchar(50),IN apell varchar(50),IN correo varchar(100),IN f_ingreso date,IN f_nacimiento date, OUT Respuesta varchar(100))
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


END//

/* Ejemplo de la carga de un cliente nuevo */

-- call Ingresar_New_Clientes('154858151','Hector','Barrionuevo','barrionuevo@gmail.com','2020-05-25','1978-02-21',@result_Carga);


/*
Creamos un SP para ordenar por un campo específico 
Permite ordenar los productos según el campo que le pasemos y lo va hacer de manera ascendente o Descendente, 
dependiendo del segundo valor que pasemos siendo “A” para Ascendente y “D” para Descendente,
de compartir cualquier otro valor tomara el valor por defecto de la consulta. 
Resuelto el stored procedures mostrara la tabla “productos” según los valores que hayamos compartido.
*/

/*
Permite ordenar el campo de la tabla que necesitemos y lo va hacer de manera ascendente o Descendente, 
dependiendo del tercer valor que pasemos siendo “A” para Ascendente y “D” para Descendente, 
de compartir cualquier otro valor tomara el valor por defecto de la consulta. 
Resuelto el stored procedures mostrara:
la tabla y el campos que pasamos, 
ordenado según el valor que hayamos enviado (A o D).
*/

DELIMITER //

CREATE PROCEDURE `ORDENAR_Campo_Table`(IN Campo_tabla varchar(12),IN tabla varchar(25), IN tipo char(1))
BEGIN
/* verificamos que no este vacia la variable que carga el usuario*/
IF Campo_tabla <>'' and tabla <>'' THEN
SET @Tabla= concat('SELECT * FROM ',tabla);
SET @ORDERBY = concat('ORDER BY ',Campo_tabla);
/* Realizamos una segunda verificacion para saber si el usuario eligio un tipo de ordenamito (A = Ascendente , D= Descendente y si es vacio tendra el orden por defecto que tiene mysql)*/
	IF tipo = 'A' THEN
    /*concatenamos las variables completadas por el usario para el ordenamiento */
		SET @TIPO=' asc';
	ELSEIF tipo='D' THEN
    /*concatenamos las variables completadas por el usario para el ordenamiento */
		SET @TIPO=' desc';
        
	ELSE
		SET @TIPO='';
	END IF;
ELSE
SET @ORDERBY='';
END IF;

/*concatenamos las variables completadas por el usario para el ordenamiento dentro de la consulta a la tabla productos*/

SET @Consult_Prod= concat(@Tabla,' ',@ORDERBY,@TIPO);

PREPARE runSQL from @Consult_Prod;
EXECUTE runSQL;
deallocate prepare runSQL;

END //

-- EJEMPLO DE COMO USAR EL SP "ORDENAR_Campo_Table" para ordenar un campos de la tabla "Ventas" de forma Ascendente
-- CALL ORDENAR_Campo_Table('total_venta','ventas','A');

-- EJEMPLO DE COMO USAR EL SP "ORDENAR_Campo_Table" para ordenar un campo de la tabla "ventas" de forma descendente

-- CALL ORDENAR_Campo_Table('total_venta','ventas','D');

-- EJEMPLO DE COMO USAR EL SP "ORDENAR_Campo_Table" para ordenar un campo de la tabla "detalles_ventas" de forma descendente
-- CALL ORDENAR_Campo_Table('fecha_pago','detalles_ventas','D');

/*Creamos SP que Permite controlar si tenemos stock del Id del producto que le pasemos como parámetro, donde:

a. necesita como parámetros el id del producto y una cantidad.
b. Con estos datos el SP verifica en la tabla "productos" si contiene la cantidad del id producto solicitado.
c. Si existe y tenemos la cantidad solicitada devolverá en la variable de Salida (@result) el valor 1, de lo contrario mostrará 0 (cero).

*/

DELIMITER //
Create Procedure `Verif_Stock_Prod` (IN id_prod INT,IN CantCtrl int, OUT Result INT)

BEGIN
 set @queryStock = (SELECT stock FROM PRODUCTOS where id_Productos=id_prod);
 if @queryStock >= CantCtrl then 
 set Result = 1; 
 ELSE 
 set Result =0;
END IF;	
END //

/*ejemplos de uso del SP Verif_Stock_Prod */

-- Ejemplo si mandamos el id de un producto que no existe en la tabla productos @result=0
-- call Verif_Stock_Prod(50,1,@result);
-- select @result;

-- Ejemplo cuando tenemos stock @result=1
-- call Verif_Stock_Prod(7,1,@result);
-- select @result;

-- Ejemplo cuando No tenemos stock @result=0
-- call Verif_Stock_Prod(7,100,@result);
-- select @result;

/*
_ Creamos un SP que permite cargar la venta de un producto. 
Utilizamos TCL dentro del SP, para iniciar una transacción y si no se obtiene ningún error confirmamos los cambios utilizando “--Commit”.

1 - Solicitaremos para la carga los siguientes parámetros:

	E.	id_product (Es el id del producto que se está vendiendo),
	F.	Cant_prod (es la cantidad que se está vendiendo del producto),
	G.	id_Empleado (agregamos el Id del empleado que está realizando la venta),
	H.	bandera_ventas (donde tendremos que poner el valor 0 (cero) si estamos cargando el primer producto de una nueva venta, de lo contrario, tendremos que poner el valor 1 (uno), si estamos cargando el producto de una venta que aún se está llevando a cabo. Si enviamos un valor diferente los mencionados obtendremos un error al ejecutar el SP.

2 - Pasado los parámetros de la carga verificaremos utilizando otro SP (Verif_Stock_Prod) para controlar si tenemos stock del producto que estamos vendiendo para realizar la transacción.
3 - En caso de tener el stock tenemos que restar de la tabla productos la cantidad que se está comprando
4 - Agregamos en la tabla Ventas un registro con una ID de ventas.
5 - Agregamos un registro por cada producto que se compró en la tabla "detalles_ventas" donde repetiremos o no según sea el caso el ID de la venta que fue agregado en la tabla "Ventas".
Una vez ejecutado el SP podemos obtener algunos de los siguientes mensajes:
•	Si la carga es correcta mostrara “Carga OK de la venta”.
•	Si no tenemos stock del producto que estamos cargando mostrara “No tiene Stock para realizar la venta”
•	Si enviamos mal el valor de la bandera de venta, nos mostrara “ERROR en el valor enviado de bandera_ventas (es el cuarto valor puesto en el SP”).
Además, el SP también cuanta con una variable de salida (Resp) donde mostrara el valor 1(uno) si la carga fue exitosa de lo contrario mostrara 0 (cero).
Objetivo: poder realizar la carga de las ventas en la base de datos.
Tablas/Datos: Utilizamos las tablas productos, ventas y detalles_ventas y solicitamos los siguientes campos en el SP:
•	IN id_product INT
•	IN Cant_prod INT
•	IN id_Empleado INT
•	IN bandera_ventas INT
•	OUT Resp INT

*/

-- verificamos si esta activado el auto commit
-- select @@autocommit;

-- Cambiamos el valor de autocommit a "0" para deshabilitar el autocommit.
-- set AUTOCOMMIT=0;

DELIMITER //
Create Procedure `Carga_Ventas_Product`(IN id_product INT, IN Cant_prod INT,IN id_Empleado INT,IN bandera_ventas INT, OUT Resp INT)

begin

declare ventas_suma FLOAT;
declare ID_Ventas_actual INT;

-- Cambiamos el valor de autocommit a "0" para deshabilitar el autocommit.
set AUTOCOMMIT=0;

START transaction;

call Verif_Stock_Prod (id_product,Cant_prod,@stock);

if @stock=1 then
/* Al tener stock realizamos el proceso para cargar la venta */ 

if bandera_ventas=0 then

/* Insertamos un nuevo registro en la tabla "Ventas" porque obtenemos el valor 0 en la variable
"bandera_ventas", de lo contrario se saltea éste paso */

INSERT INTO Ventas (id_Empleados,Fecha,Hora,Total_Venta) VALUES 
(id_Empleado,CURDATE(),CURTIME(),(Select (Precio_Unitario*Cant_prod) from productos where id_Productos = id_product));


INSERT INTO detalles_ventas (id_Ventas,id_Productos,cantidad,id_Moneda,Precio_Unitario,Subtotal,Fecha_Pago,Hora_Pago) VALUES 
((SELECT max(id_ventas) FROM Ventas),id_product,Cant_prod,1,(Select Precio_Unitario from productos where id_Productos = id_product),(Precio_Unitario*cantidad),CURDATE(),CURTIME());

/* Actualizamos el stock en la tabla "Productos"*/

Update Productos
SET stock=stock-Cant_prod
where id_Productos = id_product;

-- Commit;

/* Si estamos cargando un producto de una venta ya existente vamos por el ELSE 
para tomar como Id de ventas la ultima que fue cargada en la tabla "ventas" */

set ID_Ventas_actual=(select max(id_Ventas) from ventas);

INSERT INTO detalles_ventas (id_Ventas,id_Productos,cantidad,id_Moneda,Precio_Unitario,Subtotal,Fecha_Pago,Hora_Pago) VALUES 
((SELECT max(id_ventas) FROM Ventas),id_product,Cant_prod,1,(Select Precio_Unitario from productos where id_Productos = id_product),(Precio_Unitario*cantidad),CURDATE(),CURTIME());

/* Actualizamos el stock en la tabla "Productos"*/

Update Productos
SET stock=stock-Cant_prod
where id_Productos = id_product;

/* Actualizamos los datos en la tabla "ventas" cambiando la fecha, hora y precio total de la id de ventas*/


set ventas_suma =(select sum(Subtotal) from detalles_ventas WHERE id_ventas = (select max(id_Ventas) from ventas));

Update ventas
SET fecha=CURDATE(),hora=CURTIME(),Total_venta=ventas_suma
where id_Ventas=ID_Ventas_actual;

-- Commit;

select 'Carga OK de la Venta' as Mensaje;
set Resp=1;
 else
 select 'ERROR en el valor enviado de bandera_ventas (es el cuarto valor puesto en el SP)' as Mensaje;
 end if;
 
else 
select 'No tiene Stock para realizar la venta' as Mensaje;
set Resp=0;
end if;

end //

/* ejemplo la carga de una nueva venta de un producto*/

-- call Carga_Ventas_Product(1,2,2,0,@Result_Carga);

-- Select @Result_Carga as msj;

/* ejemplo de la carga de un producto pero que es parte de una venta ya existente */

-- call Carga_Ventas_Product(3,2,2,1,@Result_Carga);
-- Select @Result_Carga as msj;

/* ejemplo cuando mandamos mal la Bandera_Ventas */

-- call Carga_Ventas_Product(6,2,2,5,@Result_Carga);
-- Select @Result_Carga as msj;