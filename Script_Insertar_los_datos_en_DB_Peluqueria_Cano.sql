-- INSERTAMOS DATOS EN LA TABLA CLIENTES
INSERT INTO clientes (Dni,Nombre,Apellido,Mail,Fecha_Ingreso,Fecha_Nacimiento) VALUE (31210232,'Gabriel','Castro','Gabriel@gmail.com','2021-05-06','1988-06-05');
INSERT INTO clientes (Dni,Nombre,Apellido,Mail,Fecha_Ingreso,Fecha_Nacimiento) VALUE (33210232,'Juan','Castillo','Jcastillo@gmail.com','2022-04-06','1989-05-15');
INSERT INTO clientes (Dni,Nombre,Apellido,Mail,Fecha_Ingreso,Fecha_Nacimiento) VALUE (38210432,'Julio','Perez','Perez156@gmail.com','2018-05-06','1999-06-05');
INSERT INTO clientes (Dni,Nombre,Apellido,Mail,Fecha_Ingreso,Fecha_Nacimiento) VALUE (40210132,'Celeste','Frias','FriasCel@hotmail.com','2022-12-06','2000-04-05');
INSERT INTO clientes (Dni,Nombre,Apellido,Mail,Fecha_Ingreso,Fecha_Nacimiento) VALUE (45200202,'Alejandra','Diaz','DiazAle@hotmail.com','2018-05-06','2001-10-05');
INSERT INTO clientes (Dni,Nombre,Apellido,Mail,Fecha_Ingreso,Fecha_Nacimiento) VALUE (18200202,'Cecilia','Paez','Paez@yahoo.com','2010-05-06','1979-10-05');
INSERT INTO clientes (Dni,Nombre,Apellido,Mail,Fecha_Ingreso,Fecha_Nacimiento) VALUE (23211202,'Eduardo','Molineri','MEduardo@gmail.com','2005-05-06','1990-11-05');
INSERT INTO clientes (Dni,Nombre,Apellido,Mail,Fecha_Ingreso,Fecha_Nacimiento) VALUE (35200202,'Lenadro','Gonzales','GonzaLenadro@hotmail.com','2022-09-11','1988-07-11');
INSERT INTO clientes (Dni,Nombre,Apellido,Mail,Fecha_Ingreso,Fecha_Nacimiento) VALUE (45200203,'Natalia','Juarez','JNati@hotmail.com','2020-05-22','2003-11-15');
INSERT INTO clientes (Dni,Nombre,Apellido,Mail,Fecha_Ingreso,Fecha_Nacimiento) VALUE (22110302,'Fernanda','Martinez','MFer@gmail.com','2011-11-12','1999-12-21');

-- INSERTAMOS DATOS EN LA TABLA CARGOS

INSERT INTO cargos_empleados (Nombre,Descripcion) VALUE ('Peluquero_Jr','Peluquero que recien se gradua y esta empezando con sus primeras experiencias en el rubro');
INSERT INTO cargos_empleados (Nombre,Descripcion) VALUE ('Peluquero_SemiSr','Peluquero Con experiencia menor a 5 años');
INSERT INTO cargos_empleados (Nombre,Descripcion) VALUE ('Peluquero_Sr','Peluquero Con experiencia mayor a 5 años');
INSERT INTO cargos_empleados (Nombre,Descripcion) VALUE ('Administrativo','Realiza tareas relacionadas con la adminstracion del local');
INSERT INTO cargos_empleados (Nombre,Descripcion) VALUE ('Limpieza','Realiza las tareas de limpieza del local');
INSERT INTO cargos_empleados (Nombre,Descripcion) VALUE ('Vendedor','Realiza tareas exclusivas de ventas de los productos del local');

-- INSERTAMOS DATOS EN LA TABLA EMPLEADOS

INSERT INTO empleados (id_Cargos,Dni,Legajo,Nombre,Apellido,Mail,Fecha_Ingreso,Fecha_Salida,Fecha_Nacimiento,Tel_principal,Tel_Secundario) VALUE (2,33022001,124,'Adrian','Perez','AdrianPerez@gmail.com','2018-10-15',null,'1999-10-01',3814526555,1155665512);
INSERT INTO empleados (id_Cargos,Dni,Legajo,Nombre,Apellido,Mail,Fecha_Ingreso,Fecha_Salida,Fecha_Nacimiento,Tel_principal,Tel_Secundario) VALUE (3,32022001,100,'Gabriela','Santos','Santos@gmail.com','2015-10-05',null,'1986-10-01',38855666123,'');
INSERT INTO empleados (id_Cargos,Dni,Legajo,Nombre,Apellido,Mail,Fecha_Ingreso,Fecha_Salida,Fecha_Nacimiento,Tel_principal,Tel_Secundario) VALUE (1,45012101,200,'Julio','Cano','Canojulio@gmail.com','2020-12-23',null,'2000-12-11',3254123555,'');
INSERT INTO empleados (id_Cargos,Dni,Legajo,Nombre,Apellido,Mail,Fecha_Ingreso,Fecha_Salida,Fecha_Nacimiento,Tel_principal,Tel_Secundario) VALUE (4,35022041,150,'Manuel','Gerez','GManuel@gmail.com','2011-08-25',null,'1989-06-01',38144544411,38144441255);
INSERT INTO empleados (id_Cargos,Dni,Legajo,Nombre,Apellido,Mail,Fecha_Ingreso,Fecha_Salida,Fecha_Nacimiento,Tel_principal,Tel_Secundario) VALUE (5,40022001,255,'Laura','Monzon','MonzonL@gmail.com','2006-07-05',null,'1994-03-11',110212332221,38145651251);
INSERT INTO empleados (id_Cargos,Dni,Legajo,Nombre,Apellido,Mail,Fecha_Ingreso,Fecha_Salida,Fecha_Nacimiento,Tel_principal,Tel_Secundario) VALUE (6,1225458887,266,'Edgardo','Robles','roblesedgard@gmail.com','2018-07-05',null,'1980-03-11',1102123333331,null);

-- INSERTAMOS DATOS EN LA TABLA MONEDA
INSERT INTO Moneda(Nombre) value ('Peso_Arg');
INSERT INTO Moneda(Nombre) value ('Dolar_Estados_Unidos');

-- INSERTAMOS DATOS EN LA TABLA SERVICIOS

INSERT INTO servicios (id_Moneda,Precio,Nombre,Descripcion,Activo) Value (1,2000,'Corte de Cabello Femenino','Se realiza Corte De cabello, que se compone con lavado del cabello y posterior corte',1);
INSERT INTO servicios (id_Moneda,Precio,Nombre,Descripcion,Activo) Value (1,1000,'Corte de Cabello Masculino','Se realiza Corte De cabello, que se compone con lavado del cabello y posterior corte',1);
INSERT INTO servicios (id_Moneda,Precio,Nombre,Descripcion,Activo) Value (1,3000,'Peinados de Fiesta','Se realiza un peinado de fiesta',1);
INSERT INTO servicios (id_Moneda,Precio,Nombre,Descripcion,Activo) Value (1,3500,'Cambio de Color del cabello','Se realiza lavado de cabello y posterior cambio de cabello',1);
INSERT INTO servicios (id_Moneda,Precio,Nombre,Descripcion,Activo) Value (1,2500,'Hidratacion','Se realiza tratamiento con crema para hidratar el cabello',1);
INSERT INTO servicios (id_Moneda,Precio,Nombre,Descripcion,Activo) Value (1,3000,'Alizado','Se realiza Corte De cabello y alizado',1);
INSERT INTO servicios (id_Moneda,Precio,Nombre,Descripcion,Activo) Value (1,3700,'Cambio de color de mechas','Se realiza lavado del cabello y posterior cambio de color en mechas',1);

-- INSERTAMOS DATOS EN LA TABLA UNIDAD_PESOS
INSERT INTO unidad_pesos(Unidad_Medida) value ('Miligramos');
INSERT INTO unidad_pesos(Unidad_Medida) value ('Gramos');
INSERT INTO unidad_pesos(Unidad_Medida) value ('Kilos');
INSERT INTO unidad_pesos(Unidad_Medida) value ('Litros');
INSERT INTO unidad_pesos(Unidad_Medida) value ('Mililitros');
INSERT INTO unidad_pesos(Unidad_Medida) value ('Centimetro Cubico');

-- INSERTAMOS DATOS EN LA TABLA PRODUCTOS
INSERT INTO productos(id_Unidad_Pesos,Valor_Peso_Producto,Codigo_Barra,Nombre,Marca,Descripcion,Fecha_Vencimiento,Fecha_Ingreso,id_Moneda,Precio_Unitario,Stock,Activo) value (4,2,12548963,'Shampoo pelo graso','Pantene','Shampoo pelo graso','2026-05-22','2023-01-20',1,400,10,1);
INSERT INTO productos(id_Unidad_Pesos,Valor_Peso_Producto,Codigo_Barra,Nombre,Marca,Descripcion,Fecha_Vencimiento,Fecha_Ingreso,id_Moneda,Precio_Unitario,Stock,Activo) value (5,200,11111123,'Shampoo Reconstruccion Completa','Dave','Shampoo Reconstruccion Completa','2025-05-22','2023-02-20',1,500,10,1);
INSERT INTO productos(id_Unidad_Pesos,Valor_Peso_Producto,Codigo_Barra,Nombre,Marca,Descripcion,Fecha_Vencimiento,Fecha_Ingreso,id_Moneda,Precio_Unitario,Stock,Activo) value (4,1,1254896311,'Shampoo Suavidad','Plusbelle','shampoo Suavidad Manzana Verde','2024-02-22','2022-11-25',1,556,12,1);
INSERT INTO productos(id_Unidad_Pesos,Valor_Peso_Producto,Codigo_Barra,Nombre,Marca,Descripcion,Fecha_Vencimiento,Fecha_Ingreso,id_Moneda,Precio_Unitario,Stock,Activo) value (2,45,124515456,'Tintura','Garnier','Kit Colores Permanentes Nutrisse Clásicos x 45g','2024-04-28','2022-09-01',1,1497,12,1);
INSERT INTO productos(id_Unidad_Pesos,Valor_Peso_Producto,Codigo_Barra,Nombre,Marca,Descripcion,Fecha_Vencimiento,Fecha_Ingreso,id_Moneda,Precio_Unitario,Stock,Activo) value (2,50,6666666661,'Tintura','Wella','Kit Wella Permanente Todos Colores','2025-04-28','2022-07-15',1,1288,11,1);
INSERT INTO productos(id_Unidad_Pesos,Valor_Peso_Producto,Codigo_Barra,Nombre,Marca,Descripcion,Fecha_Vencimiento,Fecha_Ingreso,id_Moneda,Precio_Unitario,Stock,Activo) value (2,180,6777778778,'Gel Capilar Men','Farmacity','Gel Capilar Men Farmacity Fijación Fuerte X 180 Gr','2025-01-28','2022-08-15',1,440,5,1);
INSERT INTO productos(id_Unidad_Pesos,Valor_Peso_Producto,Codigo_Barra,Nombre,Marca,Descripcion,Fecha_Vencimiento,Fecha_Ingreso,id_Moneda,Precio_Unitario,Stock,Activo) value (5,200,674448778,'Gel Liquido','Silkey','Gel Líquido Easy Brush Mucize X 200 Ml - Silkey','2026-03-28','2022-05-15',1,730,20,1);
INSERT INTO productos(id_Unidad_Pesos,Valor_Peso_Producto,Codigo_Barra,Nombre,Marca,Descripcion,Fecha_Vencimiento,Fecha_Ingreso,id_Moneda,Precio_Unitario,Stock,Activo) value (6,350,55221125666,'Gel Modelador Graso','Han','Gel Modelador Graso Para Peinar Brillo Natural Han 350cc','2026-04-18','2022-06-15',1,2453,8,1);
INSERT INTO productos(id_Unidad_Pesos,Valor_Peso_Producto,Codigo_Barra,Nombre,Marca,Descripcion,Fecha_Vencimiento,Fecha_Ingreso,id_Moneda,Precio_Unitario,Stock,Activo) value (5,90,88888111155,'Fragancia Masculina We Are Tribe','Benetton','Fragancia Masculina We Are Tribe 90 Ml Benetton 6c','2026-04-18','2022-06-15',1,2453,8,1);
INSERT INTO productos(id_Unidad_Pesos,Valor_Peso_Producto,Codigo_Barra,Nombre,Marca,Descripcion,Fecha_Vencimiento,Fecha_Ingreso,id_Moneda,Precio_Unitario,Stock,Activo) value (5,100,8888812222,'King of Seduction Absolute','Antonio Banderas','Características de Antonio Banderas Seduction King of Seduction Absolute Hombre Eau de toilette Spray','2027-08-18','2023-01-15',1,9625,8,1);

-- INSERTAMOS DATOS EN LA TABLA CITAS

INSERT INTO citas(id_Empleados,id_Clientes,Fecha,Hora,Estado) value (2,4,'2023-03-10','17:00:00',1);
INSERT INTO citas(id_Empleados,id_Clientes,Fecha,Hora,Estado) value (3,5,'2023-04-10','16:30:00',1);
INSERT INTO citas(id_Empleados,id_Clientes,Fecha,Hora,Estado) value (3,6,'2023-04-10','17:30:00',1);
INSERT INTO citas(id_Empleados,id_Clientes,Fecha,Hora,Estado) value (1,7,'2023-04-11','16:30:00',1);
INSERT INTO citas(id_Empleados,id_Clientes,Fecha,Hora,Estado) value (3,8,'2023-04-12','10:30:00',1);
INSERT INTO citas(id_Empleados,id_Clientes,Fecha,Hora,Estado) value (2,7,'2023-04-12','11:00:00',1);

-- INSERTAMOS DATOS EN LA TABLA CITAS_SERV
INSERT INTO citas_serv(id_Citas,id_Servicios,Cantidad_Servicios) value (1,1,1);
INSERT INTO citas_serv(id_Citas,id_Servicios,Cantidad_Servicios) value (1,3,1);
INSERT INTO citas_serv(id_Citas,id_Servicios,Cantidad_Servicios) value (1,6,1);

INSERT INTO citas_serv(id_Citas,id_Servicios,Cantidad_Servicios) value (2,2,1);

INSERT INTO citas_serv(id_Citas,id_Servicios,Cantidad_Servicios) value (3,1,1);
INSERT INTO citas_serv(id_Citas,id_Servicios,Cantidad_Servicios) value (3,4,1);
INSERT INTO citas_serv(id_Citas,id_Servicios,Cantidad_Servicios) value (3,5,1);

INSERT INTO citas_serv(id_Citas,id_Servicios,Cantidad_Servicios) value (4,2,1);

INSERT INTO citas_serv(id_Citas,id_Servicios,Cantidad_Servicios) value (5,2,1);
INSERT INTO citas_serv(id_Citas,id_Servicios,Cantidad_Servicios) value (5,7,1);

INSERT INTO citas_serv(id_Citas,id_Servicios,Cantidad_Servicios) value (6,2,1);

-- INSERTAMOS DATOS EN LA TABLA PAGOS_CITAS
INSERT INTO pagos_citas(id_Citas,id_Moneda,Fecha_Pago,Hora_Pago,Total_Pagar) value (1,1,'2023-03-10','20:15:02',8000);
INSERT INTO pagos_citas(id_Citas,id_Moneda,Fecha_Pago,Hora_Pago,Total_Pagar) value (2,1,'2023-04-10','18:10:12',1000);
INSERT INTO pagos_citas(id_Citas,id_Moneda,Fecha_Pago,Hora_Pago,Total_Pagar) value (3,1,'2023-04-10','19:20:10',8000);
INSERT INTO pagos_citas(id_Citas,id_Moneda,Fecha_Pago,Hora_Pago,Total_Pagar) value (4,1,'2023-04-11','17:20:10',3700);
INSERT INTO pagos_citas(id_Citas,id_Moneda,Fecha_Pago,Hora_Pago,Total_Pagar) value (5,1,'2023-04-12','12:01:10',2000);
INSERT INTO pagos_citas(id_Citas,id_Moneda,Fecha_Pago,Hora_Pago,Total_Pagar) value (6,1,'2023-04-12','13:21:10',1000);

-- INSERTAMOS DATOS EN LA TABLA PROVEEDORES

INSERT INTO Proveedores (Nombre,Direccion,Descripcion,Telefono,Mail,Fecha_Ingreso) value('Loreal','Carlos herrera 125','Proveedor de cosmeticos',125848815123,'loreal@loreal.com','2021-10-01');
INSERT INTO Proveedores (Nombre,Direccion,Descripcion,Telefono,Mail,Fecha_Ingreso) value('Finoli','London herrera 1225','Proveedor Shampoo',11011145211,'lodon1225@gmail.com','2020-05-24');
INSERT INTO Proveedores (Nombre,Direccion,Descripcion,Telefono,Mail,Fecha_Ingreso) value('Las Margaritas','Moron Belgrano - Manuel Belgrano 165 - BsAs','Proveedor de Productos en general de peluqueria',1146278925,'lasmargaritas@gmail.com','2019-10-01');
INSERT INTO Proveedores (Nombre,Direccion,Descripcion,Telefono,Mail,Fecha_Ingreso) value('Todo Peluquerias','honduras 1455 - CABA','Proveedor de Productos en general de peluqueria',420009479,'todopeluquerias@gmail.com','2023-01-01');
INSERT INTO Proveedores (Nombre,Direccion,Descripcion,Telefono,Mail,Fecha_Ingreso) value('Tomassa','solo WEB','Proveedor de productos de cosmética en general',123154654654,'tomassapeinados@gmail.com','2021-08-12');

-- INSERTAMOS DATOS EN LA TABLA COMPRAS

INSERT INTO COMPRAS(id_Empleados,Fecha,Hora,Total_Compras) value (4,'2022-10-18','19:22:10',22455);
INSERT INTO COMPRAS(id_Empleados,Fecha,Hora,Total_Compras) value (4,'2022-10-19','11:15:10',43850);
INSERT INTO COMPRAS(id_Empleados,Fecha,Hora,Total_Compras) value (4,'2022-12-21','10:15:10',190500);
INSERT INTO COMPRAS(id_Empleados,Fecha,Hora,Total_Compras) value (4,'2023-01-21','21:15:10',11120);

-- INSERTAMOS DATOS EN LA TABLA COMPRAS
INSERT INTO DETALLES_COMPRAS(id_Compras,id_Productos,id_Proveedores,cantidad,id_Moneda,Precio_Unitario,Subtotal,Fecha_Compra,Hora_Compra) VALUE(1,4,5,15,1,1497,22455,'2022-10-18','19:00:05');
INSERT INTO DETALLES_COMPRAS(id_Compras,id_Productos,id_Proveedores,cantidad,id_Moneda,Precio_Unitario,Subtotal,Fecha_Compra,Hora_Compra) VALUE(2,5,5,15,1,1288,19320,'2022-10-19','10:35:05');
INSERT INTO DETALLES_COMPRAS(id_Compras,id_Productos,id_Proveedores,cantidad,id_Moneda,Precio_Unitario,Subtotal,Fecha_Compra,Hora_Compra) VALUE(2,8,5,10,1,2453,24530,'2022-10-19','10:30:05');
INSERT INTO DETALLES_COMPRAS(id_Compras,id_Productos,id_Proveedores,cantidad,id_Moneda,Precio_Unitario,Subtotal,Fecha_Compra,Hora_Compra) VALUE(3,10,3,20,1,9625,190500,'2022-12-21','09:30:05');
INSERT INTO DETALLES_COMPRAS(id_Compras,id_Productos,id_Proveedores,cantidad,id_Moneda,Precio_Unitario,Subtotal,Fecha_Compra,Hora_Compra) VALUE(4,3,2,20,1,556,11120,'2023-01-21','20:30:05');


-- INSERTAMOS DATOS EN LA TABLA VENTAS
INSERT INTO VENTAS(Id_Empleados,Fecha,Hora,Total_Venta) value(6,'2022-11-15','11:26:15',556);
INSERT INTO VENTAS(Id_Empleados,Fecha,Hora,Total_Venta) value(6,'2022-08-20','15:44:15',3739);
INSERT INTO VENTAS(Id_Empleados,Fecha,Hora,Total_Venta) value(6,'2021-06-18','18:10:45',2453);
INSERT INTO VENTAS(Id_Empleados,Fecha,Hora,Total_Venta) value(6,'2020-09-25','16:29:45',10125);

-- INSERTAMOS DATOS EN LA TABLA DETALLES_VENTA
INSERT INTO DETALLES_VENTAS(id_Ventas,id_Productos,Cantidad,id_Moneda,Precio_Unitario,Subtotal,Fecha_Pago,Hora_Pago) value(1,3,1,1,556,556,'2022-11-15','11:10:10');
INSERT INTO DETALLES_VENTAS(id_Ventas,id_Productos,Cantidad,id_Moneda,Precio_Unitario,Subtotal,Fecha_Pago,Hora_Pago) value(2,3,1,1,556,556,'2022-08-20','15:00:08');
INSERT INTO DETALLES_VENTAS(id_Ventas,id_Productos,Cantidad,id_Moneda,Precio_Unitario,Subtotal,Fecha_Pago,Hora_Pago) value(2,7,1,1,730,730,'2022-08-20','15:10:18');
INSERT INTO DETALLES_VENTAS(id_Ventas,id_Productos,Cantidad,id_Moneda,Precio_Unitario,Subtotal,Fecha_Pago,Hora_Pago) value(2,9,1,1,2453,2453,'2022-08-20','15:25:01');
INSERT INTO DETALLES_VENTAS(id_Ventas,id_Productos,Cantidad,id_Moneda,Precio_Unitario,Subtotal,Fecha_Pago,Hora_Pago) value(3,9,1,1,2453,2453,'2022-06-18','18:02:01');
INSERT INTO DETALLES_VENTAS(id_Ventas,id_Productos,Cantidad,id_Moneda,Precio_Unitario,Subtotal,Fecha_Pago,Hora_Pago) value(4,10,1,1,9625,9625,'2022-09-25','16:02:01');
INSERT INTO DETALLES_VENTAS(id_Ventas,id_Productos,Cantidad,id_Moneda,Precio_Unitario,Subtotal,Fecha_Pago,Hora_Pago) value(4,2,1,1,500,500,'2022-09-25','16:12:51');








