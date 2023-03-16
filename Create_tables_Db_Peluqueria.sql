-- creamos el Schema
CREATE SCHEMA PELUQUERIA;
USE PELUQUERIA;

-- tables
-- Table: CLIENTES
CREATE TABLE CLIENTES (
    id_Clientes int auto_increment not null,
    Dni int NOT NULL unique,
    Nombre varchar(100) Not null,
    Apellido varchar(100) Not null,
    Mail varchar(100),
    Fecha_Ingreso Date Not null,
	Fecha_Nacimiento Date Not null,
    CONSTRAINT PK_Clientes PRIMARY KEY (id_Clientes)
);

-- Table: EMPLEADOS
CREATE TABLE EMPLEADOS (
    id_Empleados int auto_increment not null,
    id_Cargos int not null,
    Dni int NOT NULL,
    Legajo int NOT NULL unique,
    Nombre varchar(100) Not null,
    Apellido varchar(100) Not null,
    Mail varchar(100) Not null,
    Fecha_Ingreso Date Not null,
    Fecha_Salida Date,
	Fecha_Nacimiento Date Not null,
    Tel_principal varchar(30) Not null,
    Tel_secundario varchar(30),
    
    CONSTRAINT PK_EMPLEADOS PRIMARY KEY (id_Empleados)
);

-- Table: CARGOS_EMPLEADOS
CREATE TABLE CARGOS_EMPLEADOS (
    id_Cargos int auto_increment not null,
    Nombre varchar(100) Not null,
    Descripcion varchar(300) Not null,
    
    CONSTRAINT PK_CARGOS_EMPLADOS PRIMARY KEY (id_Cargos)
);

-- Table: MONEDA
CREATE TABLE MONEDA(
    id_Moneda int auto_increment not null,
    Nombre varchar(20) Not null,

    CONSTRAINT PK_MONEDA PRIMARY KEY (id_Moneda)
);

-- Table: UNIDAD_PESOS
CREATE TABLE UNIDAD_PESOS(
    id_Unidad_Pesos int auto_increment not null,
    Unidad_Medida varchar(20) Not null,

    CONSTRAINT PK_UNIDAD_PESOS PRIMARY KEY (id_Unidad_Pesos)
);

-- Table: PRODUCTOS
CREATE TABLE PRODUCTOS (
    id_Productos int auto_increment not null,
    id_Unidad_Pesos int not null,
    Valor_Peso_Producto float not null,
    Codigo_Barra varchar(50) Not null unique,
	Nombre varchar(100) Not null,
    Marca varchar(100) Not null,
	Descripcion varchar(300) Not null,
    fecha_Vencimiento date not null,
	fecha_Ingreso date not null,
    id_Moneda int not null,
    Precio_Unitario float not null,
    stock int not null,
	Activo boolean default(true),
    
CONSTRAINT PK_PRODUCTOS PRIMARY KEY (id_Productos)
);

-- Table: SERVICIOS
CREATE TABLE SERVICIOS (
    id_Servicios int auto_increment not null,
    id_Moneda int not null,
    Precio float not null,
    Nombre varchar(100) Not null,
    Descripcion varchar(300) Not null,
    Activo boolean default(0),
    
CONSTRAINT PK_SERVICIOS PRIMARY KEY (id_Servicios)
);

-- Table: CITAS
CREATE TABLE CITAS (
    id_Citas int auto_increment not null,
    id_Empleados int not null,
    id_Clientes int not null,
    Fecha date not null,
    Hora time not null,
    Estado boolean default(true),

CONSTRAINT PK_CITAS PRIMARY KEY (id_Citas)
);

-- Table: CITAS_SERV
CREATE TABLE CITAS_SERV (
    id_Citas_Serv int auto_increment not null,
	id_Citas int not null,
    id_Servicios int not null,
    Cantidad_Servicios int not null default(1),

CONSTRAINT PK_CITAS_SERV PRIMARY KEY (id_Citas_Serv)
);

-- Table: PAGOS_CITAS
CREATE TABLE PAGOS_CITAS (
    id_Pagos_Citas int auto_increment not null,
	id_Citas int not null,
    id_Moneda int not null,
    Fecha_Pago date not null,
    Hora_Pago time not null,
    Total_Pagar float not null,

CONSTRAINT PK_PAGOS_CITAS PRIMARY KEY (id_Pagos_Citas)
);

-- Table: VENTAS

CREATE TABLE VENTAS (
id_Ventas int auto_increment not null,
id_Empleados int not null,
Fecha date not null,
Hora time not null,
Total_Venta float not null,

CONSTRAINT PK_VENTAS PRIMARY KEY (id_Ventas)
);

-- Table: DETALLES_VENTAS
CREATE TABLE DETALLES_VENTAS (
    id_Detalles_Ventas int auto_increment not null,
    id_Ventas int not null,
	id_Productos int not null,
    cantidad int not null,
    id_Moneda int not null,
	Precio_Unitario float not null,
    Subtotal float not null,
    Fecha_Pago date not null,
    Hora_Pago time not null,

CONSTRAINT PK_DETALLES_VENTAS PRIMARY KEY (id_Detalles_Ventas)
);

-- Table: PROVEEDORES
CREATE TABLE PROVEEDORES(
    id_Proveedores int auto_increment not null,
    Nombre varchar(60) Not null,
    Direccion varchar(100) not null,
    Descripcion varchar(300),
    Telefono varchar(25) not null,
    Mail varchar(100) not null,
    Fecha_Ingreso Date Not null,

    CONSTRAINT PK_Proveedores PRIMARY KEY (id_Proveedores)
);

-- Table: COMPRAS
CREATE TABLE COMPRAS(
id_Compras int auto_increment not null,
id_Empleados int not null,
Fecha date not null,
Hora time not null,
Total_Compras float not null,

CONSTRAINT PK_COMPRAS PRIMARY KEY (id_Compras)
);

-- Table: DETALLES_COMPRAS
CREATE TABLE DETALLES_COMPRAS (
    id_Detalles_Compras int auto_increment not null,
    id_Compras int not null,
	id_Productos int not null,
    id_Proveedores int not null,
    cantidad int default(1),
    id_Moneda int not null,
	Precio_Unitario float not null,
    Subtotal  float not null,
    Fecha_Compra date not null,
    Hora_Compra time not null,

CONSTRAINT PK_DETALLES_COMPRAS PRIMARY KEY (id_Detalles_Compras)
);

-- foreign keys

-- Reference: FK_COMPRAS_EMPLEADOS (table: COMPRAS)
ALTER TABLE COMPRAS ADD CONSTRAINT FK_COMPRAS_EMPLEADOS FOREIGN KEY FK_COMPRAS_EMPLEADOS(id_Empleados)
REFERENCES EMPLEADOS(id_Empleados);


-- Reference: FK_DETALLES_COMPRAS_MONEDAS (table: DETALLES_COMPRAS)
ALTER TABLE DETALLES_COMPRAS ADD CONSTRAINT FK_DETALLES_COMPRAS_MONEDA FOREIGN KEY FK_DETALLES_COMPRAS_MONEDA(id_Moneda)
REFERENCES Moneda(id_Moneda);

-- Reference: FK_DETALLES_COMPRAS_PROVEEDORES (table: DETALLES_COMPRAS)
ALTER TABLE DETALLES_COMPRAS ADD CONSTRAINT FK_DETALLES_COMPRAS_PROVEEDORES FOREIGN KEY FK_DETALLES_COMPRAS_PROVEEDORES(id_Proveedores)
REFERENCES Proveedores(id_Proveedores);

-- Reference: FK_DETALLES_COMPRAS_PRODUCTOS (table: DETALLES_COMPRAS)
ALTER TABLE DETALLES_COMPRAS ADD CONSTRAINT FK_DETALLES_COMPRAS_PRODUCTOS FOREIGN KEY FK_DETALLES_COMPRAS_PRODUCTOS(id_Productos)
REFERENCES Productos(id_Productos);

-- Reference: FK_DETALLES_COMPRAS_COMPRAS (table: DETALLES_COMPRAS)
ALTER TABLE DETALLES_COMPRAS ADD CONSTRAINT FK_DETALLES_COMPRAS_COMPRAS FOREIGN KEY FK_DETALLES_COMPRAS_COMPRAS(id_Compras)
REFERENCES Compras(id_Compras);


-- Reference: FK_SERVICIOS_MONEDA (table: MONEDA)
ALTER TABLE SERVICIOS ADD CONSTRAINT FK_SERVICIOS_MONEDA FOREIGN KEY FK_SERVICIOS_MONEDA(id_Moneda)
REFERENCES Moneda (id_Moneda);

-- Reference: FK_PRODUCTOS_UNIDAD_PESOS (table: DETALLES_PRODUCTOS)
ALTER TABLE PRODUCTOS ADD CONSTRAINT FK_PRODUCTOS_UNIDAD_PESOS FOREIGN KEY FK_PRODUCTOS_UNIDAD_PESOS(id_Unidad_Pesos)
REFERENCES UNIDAD_PESOS (id_Unidad_Pesos);

-- Reference: FK_PRODUCTOS_MONEDA (table: PRODUCTOS)
ALTER TABLE PRODUCTOS ADD CONSTRAINT FK_PRODUCTOS_MONEDA FOREIGN KEY FK_PRODUCTOS_MONEDA(id_Moneda)
REFERENCES Moneda (id_Moneda);

-- Reference: FK_EMPLEADOS_CARGOS_EMPLEADOS (table: EMPLEADOS)
ALTER TABLE EMPLEADOS ADD CONSTRAINT FK_EMPLEADOS_CARGOS_EMPLEADOS FOREIGN KEY FK_EMPLEADOS_CARGOS_EMPLEADOS (id_Cargos)
REFERENCES CARGOS_EMPLEADOS (id_Cargos);

-- Reference: FK_CITAS_EMPLEADOS (table: CITAS)
ALTER TABLE CITAS ADD CONSTRAINT FK_CITAS_EMPLEADOS FOREIGN KEY FK_CITAS_EMPLEADOS (id_Empleados)
REFERENCES EMPLEADOS (id_Empleados);


-- Reference: FK_CITAS_CLIENTES (table: CITAS)
ALTER TABLE CITAS ADD CONSTRAINT FK_CITAS_CLIENTES FOREIGN KEY FK_CITAS_CLIENTES (id_Clientes)
REFERENCES CLIENTES (id_Clientes);



-- Reference: FK_CITAS_SERV_CITAS (table: CITAS_SERV)
ALTER TABLE CITAS_SERV ADD CONSTRAINT FK_CITAS_SERV_CITAS FOREIGN KEY FK_CITAS_SERV_CITAS (id_Citas)
REFERENCES CITAS (id_Citas);

-- Reference: FK_CITAS_SERV_SERVICIOS (table: CITAS_SERV)
ALTER TABLE CITAS_SERV ADD CONSTRAINT FK_CITAS_SERV_SERVICIOS FOREIGN KEY FK_CITAS_SERV_SERVICIOS (id_Servicios)
REFERENCES SERVICIOS (id_Servicios);


-- Reference: FK_PAGOS_CITAS_CITAS (table: PAGOS_CITAS)
ALTER TABLE PAGOS_CITAS ADD CONSTRAINT FK_PAGOS_CITAS_CITAS FOREIGN KEY FK_PAGOS_CITAS_CITAS (id_Citas)
REFERENCES CITAS (id_Citas);

-- Reference: FK_PAGOS_CITAS_MONEDA (table: PAGOS_CITAS)
ALTER TABLE PAGOS_CITAS ADD CONSTRAINT FK_PAGOS_CITAS_MONEDA FOREIGN KEY FK_PAGOS_CITAS_MONEDA (id_Moneda)
REFERENCES MONEDA (id_Moneda);

-- Reference: FK_VENTAS_EMPLEADOS (table: VENTAS)
ALTER TABLE VENTAS ADD CONSTRAINT FK_VENTAS_EMPLEADOS FOREIGN KEY FK_VENTAS_EMPLEADOS(id_Empleados)
REFERENCES EMPLEADOS(id_Empleados);

-- Reference: FK_DETALLES_VENTAS_PRODUCTOS (table: DETALLES_VENTAS)
ALTER TABLE DETALLES_VENTAS ADD CONSTRAINT FK_DETALLES_VENTAS_CITAS FOREIGN KEY FK_DETALLES_VENTAS_CITAS (id_Productos)
REFERENCES PRODUCTOS (id_Productos);

-- Reference: FK_DETALLES_VENTAS_VENTAS (table: DETALLES_VENTAS)
ALTER TABLE DETALLES_VENTAS ADD CONSTRAINT FK_DETALLES_VENTAS_VENTAS FOREIGN KEY FK_DETALLES_VENTAS_VENTAS (id_Ventas)
REFERENCES VENTAS (id_Ventas);


-- Reference: FK_DETALLES_VENTAS_MONEDA (table: DETALLES_VENTAS)
ALTER TABLE DETALLES_VENTAS ADD CONSTRAINT FK_DETALLES_VENTAS_MONEDA FOREIGN KEY FK_DETALLES_VENTAS_MONEDA (id_Moneda)
REFERENCES MONEDA(id_Moneda);