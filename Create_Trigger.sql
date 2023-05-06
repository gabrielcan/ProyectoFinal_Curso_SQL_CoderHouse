use peluqueria;

-- creamos 3 Trigger (after) en la tabla "productos" para el insert, update y delete, 
-- de éste modo guardo en una tabla de auditoría los campos que considero importante, 
-- para luego tener un control de los cambios que se realizan.

-- trigger Insert
create trigger `tr_add_new_Product`
after insert on `productos`
for each row
insert into `_audit_new_Productos`(Tb_update,tipo_event,Created_by,id_update,nombre_Prod,fech_update,time_update) 
value ('Productos','Insert',User(),new.id_Productos,new.Nombre,curdate(),current_time());

-- trigger update
create trigger `tr_update_Product`
after update on `productos`
for each row
insert into `_audit_new_Productos`(Tb_update,tipo_event,Created_by,id_update,nombre_Prod,fech_update,time_update) 
value ('Productos','Update',User(),new.id_Productos,new.Nombre,curdate(),current_time());

-- trigger Delete

create trigger `tr_Delete_Product`
after Delete on `productos`
for each row
insert into `_audit_new_Productos`(Tb_update,tipo_event,Created_by,id_update,nombre_Prod,fech_update,time_update) 
value ('Productos','Delete',User(),old.id_Productos,old.Nombre,curdate(),current_time());


-- Creo un Trigger (BEFORE) en la tabla "Productos" para asegurarme que siempre el Precio_unitario sea mayor a 0

DELIMITER $$
CREATE TRIGGER `tr_validar_precio_unitario`
BEFORE INSERT ON `productos`
FOR EACH ROW
BEGIN
  IF NEW.Precio_Unitario <= 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'EL PRECIO UNITARIO DEBE SER MAYOR A 0';
  END IF;
END;
$$


-- Creo un Trigger (BEFORE) en la tabla "Productos" para asegurarme que siempre el stock tenga minimo 1 
-- al momento de ser insertado un nuevo producto en la tabla

DELIMITER $$
CREATE TRIGGER `tr_validar_stock`
BEFORE INSERT ON `productos`
FOR EACH ROW
BEGIN
  IF NEW.Stock <= 0 THEN
	set new.Stock=1; /* Al agregar un producto con stock "0", ponemos por defecto "1"*/
  END IF;
END;
$$

/*
ejemplos que use para probar el trigger de productos
trigger del precio unitario

INSERT INTO Productos (id_Unidad_Pesos, Valor_Peso_Producto, Codigo_Barra, Nombre, Marca, Descripcion, fecha_Vencimiento, fecha_Ingreso, id_Moneda, Precio_Unitario, stock, Activo) value ('5', '100', '888888877777', 'King of Seduction Absolute', 'Antonio Banderas', 'Características de Antonio Banderas Seduction King of Seduction Absolute Hombre Eau de toilette Spray', '2027-08-18', '2023-01-15', '1', 0, 0, '1');

trigger del stock
INSERT INTO Productos (id_Unidad_Pesos, Valor_Peso_Producto, Codigo_Barra, Nombre, Marca, Descripcion, fecha_Vencimiento, fecha_Ingreso, id_Moneda, Precio_Unitario, stock, Activo) value ('5', '100', '888888877777', 'King of Seduction Absolute', 'Antonio Banderas', 'Características de Antonio Banderas Seduction King of Seduction Absolute Hombre Eau de toilette Spray', '2027-08-18', '2023-01-15', '1', '1000', 0, '1');

*/


-- creamos un Trigger (after) en la tabla "Clientes" para el insert, 
-- de éste modo guardo en una tabla de auditoría los campos que considero importante, 
-- para luego tener un control de los cambios que se realizan en la tabla "clientes".

create trigger `tr_add_new_clientes`
after insert on `clientes`
for each row
insert into `_audit_new_clientes`(Tb_update,tipo_event,Created_by,id_update,fech_update,time_update) 
value ('clientes','Insert',User(),new.id_Clientes,curdate(),current_time());

/* utilizo el stored procedures "Ingresar_New_Clientes" para poder realizar un insert:
 
call Ingresar_New_Clientes('45521458','Facundo','leo','leo@leo',now(),'1888-05-11',@resp);
*/

-- Creo un Trigger (after) en la tabla "Clientes" para el Update

create trigger `tr_update_clientes`
after update on `clientes`
for each row
insert into `_audit_new_clientes`(Tb_update,tipo_event,Created_by,id_update,fech_update,time_update) 
value ('clientes','Update',User(),new.id_Clientes,curdate(),current_time());

/* Tengo que usar la siguiente linea de codigo "SET SQL_SAFE_UPDATES = 0" para actualizar la tabla clientes, de otro modo obtengo el error "1175" */
/* ejemplo del update:
 
SET SQL_SAFE_UPDATES = 0;
UPDATE `peluqueria`.`clientes` SET `Nombre` = 'Enzo' WHERE (`id_Clientes` = '30');
*/


-- Creo un Trigger (after) en la tabla "Clientes" para el Delete

create trigger `tr_Delete_clientes`
after delete on `clientes`
for each row
insert into `_audit_new_clientes`(Tb_update,tipo_event,Created_by,id_update,fech_update,time_update) 
value ('clientes','Delete',User(),old.id_Clientes,curdate(),current_time());



