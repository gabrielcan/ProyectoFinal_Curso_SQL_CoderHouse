-- CREATE DE VISTAS DE DB

-- 1- View: tb_clientes_edad
-- obtenemos las Edades de los clientes

CREATE view tb_clientes_edad AS 
select id_clientes,Nombre,Apellido,year(now())-YEAR(Fecha_Nacimiento) as Edad from clientes
ORDER BY (YEAR(NOW()) - YEAR(Fecha_Nacimiento)) DESC;

-- Ejemplo de uso de la vista "tb_clientes_edad"
-- select * from tb_clientes_edad;

-- 2- View: tb_Detalles_Gastos_Clientes 
-- Detalles de gastados por cada cliente

CREATE view tb_Detalles_Gastos_Clientes AS
select clientes.id_Clientes, clientes.nombre,clientes.Apellido,servicios.Nombre as Servicio,citas.Fecha,servicios.Precio from clientes 
join citas ON clientes.id_Clientes=citas.id_Clientes 
join citas_serv ON citas.id_Citas=citas_serv.id_Citas
join servicios ON citas_serv.id_Servicios=servicios.id_Servicios
ORDER BY servicios.Precio DESC;

-- Ejemplo de uso de la vista "tb_Detalles_Gastos_Clientes"
-- select * from tb_Detalles_Gastos_Clientes;


-- 3- View: tb_Agrupodo_por_Mes_Gastos_Clientes 
-- Agrupo por Mes el total gastado por cada cliente

CREATE view tb_Agrupodo_por_Mes_Gastos_Clientes AS
select clientes.id_Clientes,clientes.Nombre,clientes.Apellido, monthname(citas.Fecha) as MES,sum(servicios.Precio) as Total_Gastado from clientes 
join citas ON clientes.id_Clientes=citas.id_Clientes 
join citas_serv ON citas.id_Citas=citas_serv.id_Citas
join servicios ON citas_serv.id_Servicios=servicios.id_Servicios
group by clientes.id_Clientes,monthname(citas.Fecha)
order by Total_Gastado desc;

-- Ejemplo de uso de la vista "tb_Agrupodo_por_Mes_Gastos_Clientes"
-- select * from tb_Agrupodo_por_Mes_Gastos_Clientes;


-- 4- View: TB_Cantidad_Citas_Clientes
-- Cuento la cantidad de citas que tuvo cada cliente

CREATE view TB_Cantidad_Citas_Clientes AS
 select clientes.id_Clientes,clientes.Nombre,clientes.Apellido, count(citas.id_Citas) as cant_citas from clientes 
 join citas ON clientes.id_Clientes=citas.id_Clientes
 group by clientes.id_Clientes,clientes.Nombre,clientes.Apellido
 order by cant_citas desc;

-- Ejemplo de uso de la vista "TB_Cantidad_Citas_Clientes"
-- select * from TB_Cantidad_Citas_Clientes;

-- 5- View: Total de compras por Proveedor por mes

CREATE view TB_Total_Compras_x_Proveedor AS
SELECT proveedores.Nombre, monthname(detalles_compras.Fecha_compra) as MES,sum(detalles_compras.Subtotal) as Total_Compras FROM detalles_compras 
join proveedores on detalles_compras.id_Proveedores=proveedores.id_Proveedores
group by proveedores.Nombre,monthname(detalles_compras.Fecha_compra);

-- Ejemplo de uso de la vista "TB_Total_Compras_x_Proveedor"
-- select * from TB_Total_Compras_x_Proveedor;

-- 6- View: tb_Product_Mas_vendidos

-- Obtenemos el producto que más se esta vendiendo, 
-- el dinero que representa y cuando fue la ultima vez que vendió el producto

CREATE view tb_Product_Mas_vendidos AS
SELECT id_Productos,count(id_Productos) as Cant_Vendidos,sum(Subtotal) as Dinero_Total, max(Fecha_Pago) as ultim_Vent from detalles_ventas
group by id_Productos 
order by Cant_Vendidos desc;

-- Ejemplo de uso de la vista "tb_Product_Mas_vendidos"
-- select * from tb_product_mas_vendidos;