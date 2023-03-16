-- View: Edades de clientes

CREATE view TB_CLIENTES_EDAD AS 
select Nombre,Apellido,year(now())-YEAR(Fecha_Nacimiento) as Edad from clientes;

-- View: Detalles de gastados por cada cliente

CREATE view TB_Detalles_Gastos_Clientes AS
select clientes.id_Clientes, clientes.nombre,clientes.Apellido,servicios.Nombre as Servicio,citas.Fecha,servicios.Precio from clientes 
join citas ON clientes.id_Clientes=citas.id_Clientes 
join citas_serv ON citas.id_Citas=citas_serv.id_Citas
join servicios ON citas_serv.id_Servicios=servicios.id_Servicios;

-- View: Agrupo por Mes el total gastado por cada cliente
CREATE view TB_Agrupodo_por_Mes_Gastos_Clientes AS
select clientes.id_Clientes,clientes.Nombre,clientes.Apellido, monthname(citas.Fecha) as MES,sum(servicios.Precio) as Total_Gastado from clientes 
join citas ON clientes.id_Clientes=citas.id_Clientes 
join citas_serv ON citas.id_Citas=citas_serv.id_Citas
join servicios ON citas_serv.id_Servicios=servicios.id_Servicios
group by clientes.id_Clientes,monthname(citas.Fecha);

-- View: Cuento la cantidad de citas que tuvo cada cliente
CREATE view TB_Cantidad_Citas_Clientes AS
 select clientes.id_Clientes,clientes.Nombre,clientes.Apellido, count(citas.id_Citas) from clientes 
 join citas ON clientes.id_Clientes=citas.id_Clientes
 group by clientes.id_Clientes,clientes.Nombre,clientes.Apellido;


-- View: Total de compras por Proveedor por mes

CREATE view TB_Total_Compras_x_Proveedor AS
SELECT proveedores.Nombre, monthname(detalles_compras.Fecha_compra) as MES,sum(detalles_compras.Subtotal) as Total_Compras FROM detalles_compras 
join proveedores on detalles_compras.id_Proveedores=proveedores.id_Proveedores
group by proveedores.Nombre,monthname(detalles_compras.Fecha_compra);