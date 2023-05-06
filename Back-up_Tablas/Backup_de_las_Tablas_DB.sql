/*
Las 17 Tablas que tienen hecho el backup son las siguientes:
_audit_new_clientes,
_audit_new_productos,
cargos_empleados,
citas,
citas_serv,
clientes,
compras,
detalles_compras,
detalles_ventas,
empleados,
moneda,
pagos_citas,
productos,
proveedores,
servicios,
tb_agrupodo_por_mes_gastos_clientes,
tb_cantidad_citas_clientes,
tb_clientes_edad,
tb_detalles_gastos_clientes,
tb_total_compras_x_proveedor,
unidad_pesos,
ventas.
*/

-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: peluqueria
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `_audit_new_clientes`
--

LOCK TABLES `_audit_new_clientes` WRITE;
/*!40000 ALTER TABLE `_audit_new_clientes` DISABLE KEYS */;
INSERT INTO `_audit_new_clientes` VALUES (1,'clientes','root@localhost','Insert',31,'2023-03-23','00:06:43');
/*!40000 ALTER TABLE `_audit_new_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `_audit_new_productos`
--

LOCK TABLES `_audit_new_productos` WRITE;
/*!40000 ALTER TABLE `_audit_new_productos` DISABLE KEYS */;
INSERT INTO `_audit_new_productos` VALUES (1,'clientes','root@localhost','Insert',15,'King of Seduction Absolute','2023-03-23','00:24:34');
/*!40000 ALTER TABLE `_audit_new_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cargos_empleados`
--

LOCK TABLES `cargos_empleados` WRITE;
/*!40000 ALTER TABLE `cargos_empleados` DISABLE KEYS */;
INSERT INTO `cargos_empleados` VALUES (1,'Peluquero_Jr','Peluquero que recien se gradua y esta empezando con sus primeras experiencias en el rubro'),(2,'Peluquero_SemiSr','Peluquero Con experiencia menor a 5 años'),(3,'Peluquero_Sr','Peluquero Con experiencia mayor a 5 años'),(4,'Administrativo','Realiza tareas relacionadas con la adminstracion del local'),(5,'Limpieza','Realiza las tareas de limpieza del local'),(6,'Vendedor','Realiza tareas exclusivas de ventas de los productos del local');
/*!40000 ALTER TABLE `cargos_empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `citas`
--

LOCK TABLES `citas` WRITE;
/*!40000 ALTER TABLE `citas` DISABLE KEYS */;
INSERT INTO `citas` VALUES (1,2,4,'2023-03-10','17:00:00',1),(2,3,5,'2023-04-10','16:30:00',1),(3,3,6,'2023-04-10','17:30:00',1),(4,1,7,'2023-04-11','16:30:00',1),(5,3,8,'2023-04-12','10:30:00',1),(6,2,7,'2023-04-12','11:00:00',1);
/*!40000 ALTER TABLE `citas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `citas_serv`
--

LOCK TABLES `citas_serv` WRITE;
/*!40000 ALTER TABLE `citas_serv` DISABLE KEYS */;
INSERT INTO `citas_serv` VALUES (1,1,1,1),(2,1,3,1),(3,1,6,1),(4,2,2,1),(5,3,1,1),(6,3,4,1),(7,3,5,1),(8,4,2,1),(9,5,2,1),(10,5,7,1),(11,6,2,1);
/*!40000 ALTER TABLE `citas_serv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,31210232,'Brian','Castro','gabo1986@hotmail.com','2021-05-06','1988-06-05'),(2,33210232,'Juan','Castillo','Jcastillo@gmail.com','2022-04-06','1989-05-15'),(3,38210432,'Julio','Perez','Perez156@gmail.com','2018-05-06','1999-06-05'),(4,40210132,'Celeste','Frias','FriasCel@hotmail.com','2022-12-06','2000-04-05'),(5,45200202,'Alejandra','Diaz','DiazAle@hotmail.com','2018-05-06','2001-10-05'),(6,18200202,'Cecilia','Paez','Paez@yahoo.com','2010-05-06','1979-10-05'),(7,23211202,'Eduardo','Molineri','MEduardo@gmail.com','2005-05-06','1990-11-05'),(8,35200202,'Lenadro','Gonzales','GonzaLenadro@hotmail.com','2022-09-11','1988-07-11'),(9,45200203,'Natalia','Juarez','JNati@hotmail.com','2020-05-22','2003-11-15'),(10,22110302,'Fernanda','Martinez','MFer@gmail.com','2011-11-12','1999-12-21'),(11,12345678,'Juan','Pérez','juan.perez@example.com','2022-03-16','1990-01-01'),(12,987654321,'Gabriela','Monzon','Monzon.Gab@gmail.com','2018-03-16','1999-01-01'),(15,369852147,'Erika','Saba','Saba.Erik@gmail.com','2010-06-26','1988-09-15'),(16,32201940,'Gaston','Sueldo','Sueldogasss@gmail.com','2020-06-26','2000-12-15'),(17,889994551,'Alexander','Perez','alexPerez@gmail.com','2023-03-22','1986-04-22'),(27,77788855,'Fausto','Testa','testa_faust@gmail.com','2023-03-22','1999-04-22'),(28,753159963,'Federico','Montilla','Mon_fede@gmail.com','2023-03-22','1980-04-22'),(29,885522116,'Brian','Cano','cano_justina@gmail.com','2023-03-22','2018-04-22'),(31,45521458,'Facundo','leo','leo@leo','2023-03-23','1888-05-11');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (1,4,'2022-10-18','19:22:10',22455),(2,4,'2022-10-19','11:15:10',43850),(3,4,'2022-12-21','10:15:10',190500),(4,4,'2023-01-21','21:15:10',11120);
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `detalles_compras`
--

LOCK TABLES `detalles_compras` WRITE;
/*!40000 ALTER TABLE `detalles_compras` DISABLE KEYS */;
INSERT INTO `detalles_compras` VALUES (1,1,4,5,15,1,1497,22455,'2022-10-18','19:00:05'),(2,2,5,5,15,1,1288,19320,'2022-10-19','10:35:05'),(3,2,8,5,10,1,2453,24530,'2022-10-19','10:30:05'),(4,3,10,3,20,1,9625,190500,'2022-12-21','09:30:05'),(5,4,3,2,20,1,556,11120,'2023-01-21','20:30:05');
/*!40000 ALTER TABLE `detalles_compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `detalles_ventas`
--

LOCK TABLES `detalles_ventas` WRITE;
/*!40000 ALTER TABLE `detalles_ventas` DISABLE KEYS */;
INSERT INTO `detalles_ventas` VALUES (1,1,3,1,1,556,556,'2022-11-15','11:10:10'),(2,2,3,1,1,556,556,'2022-08-20','15:00:08'),(3,2,7,1,1,730,730,'2022-08-20','15:10:18'),(4,2,9,1,1,2453,2453,'2022-08-20','15:25:01'),(5,3,9,1,1,2453,2453,'2022-06-18','18:02:01'),(6,4,10,1,1,9625,9625,'2022-09-25','16:02:01'),(7,4,2,1,1,500,500,'2022-09-25','16:12:51');
/*!40000 ALTER TABLE `detalles_ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,2,33022001,124,'Adrian','Perez','AdrianPerez@gmail.com','2018-10-15',NULL,'1999-10-01','3814526555','1155665512'),(2,3,32022001,100,'Gabriela','Santos','Santos@gmail.com','2015-10-05',NULL,'1986-10-01','38855666123',''),(3,1,45012101,200,'Julio','Cano','Canojulio@gmail.com','2020-12-23',NULL,'2000-12-11','3254123555',''),(4,4,35022041,150,'Manuel','Gerez','GManuel@gmail.com','2011-08-25',NULL,'1989-06-01','38144544411','38144441255'),(5,5,40022001,255,'Laura','Monzon','MonzonL@gmail.com','2006-07-05',NULL,'1994-03-11','110212332221','38145651251'),(6,6,1225458887,266,'Edgardo','Robles','roblesedgard@gmail.com','2018-07-05',NULL,'1980-03-11','1102123333331',NULL);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `moneda`
--

LOCK TABLES `moneda` WRITE;
/*!40000 ALTER TABLE `moneda` DISABLE KEYS */;
INSERT INTO `moneda` VALUES (1,'Peso_Arg'),(2,'Dolar_Estados_Unidos');
/*!40000 ALTER TABLE `moneda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pagos_citas`
--

LOCK TABLES `pagos_citas` WRITE;
/*!40000 ALTER TABLE `pagos_citas` DISABLE KEYS */;
INSERT INTO `pagos_citas` VALUES (1,1,1,'2023-03-10','20:15:02',8000),(2,2,1,'2023-04-10','18:10:12',1000),(3,3,1,'2023-04-10','19:20:10',8000),(4,4,1,'2023-04-11','17:20:10',3700),(5,5,1,'2023-04-12','12:01:10',2000),(6,6,1,'2023-04-12','13:21:10',1000);
/*!40000 ALTER TABLE `pagos_citas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,4,2,'12548963','Shampoo pelo graso','Pantene','Shampoo pelo graso','2026-05-22','2023-01-20',1,400,10,1),(2,5,200,'11111123','Shampoo Reconstruccion Completa','Dave','Shampoo Reconstruccion Completa','2025-05-22','2023-02-20',1,500,10,1),(3,4,1,'1254896311','Shampoo Suavidad','Plusbelle','shampoo Suavidad Manzana Verde','2024-02-22','2022-11-25',1,556,12,1),(4,2,45,'124515456','Tintura','Garnier','Kit Colores Permanentes Nutrisse Clásicos x 45g','2024-04-28','2022-09-01',1,1497,12,1),(5,2,50,'6666666661','Tintura','Wella','Kit Wella Permanente Todos Colores','2025-04-28','2022-07-15',1,1288,11,1),(6,2,180,'6777778778','Gel Capilar Men','Farmacity','Gel Capilar Men Farmacity Fijación Fuerte X 180 Gr','2025-01-28','2022-08-15',1,440,5,1),(7,5,200,'674448778','Gel Liquido','Silkey','Gel Líquido Easy Brush Mucize X 200 Ml - Silkey','2026-03-28','2022-05-15',1,730,20,1),(8,6,350,'55221125666','Gel Modelador Graso','Han','Gel Modelador Graso Para Peinar Brillo Natural Han 350cc','2026-04-18','2022-06-15',1,2453,8,1),(9,5,90,'88888111155','Fragancia Masculina We Are Tribe','Benetton','Fragancia Masculina We Are Tribe 90 Ml Benetton 6c','2026-04-18','2022-06-15',1,2453,8,1),(10,5,100,'8888812222','King of Seduction Absolute','Antonio Banderas','Características de Antonio Banderas Seduction King of Seduction Absolute Hombre Eau de toilette Spray','2027-08-18','2023-01-15',1,9625,8,1),(12,5,100,'213564897','King of Seduction Absolute','Antonio Banderas','Características de Antonio Banderas Seduction King of Seduction Absolute Hombre Eau de toilette Spray','2027-08-18','2023-01-15',1,0,8,1),(13,5,100,'1111111118','King of Seduction Absolute','Antonio Banderas','Características de Antonio Banderas Seduction King of Seduction Absolute Hombre Eau de toilette Spray','2027-08-18','2023-01-15',1,0,8,1),(14,5,100,'888888877777','King of Seduction Absolute','Antonio Banderas','Características de Antonio Banderas Seduction King of Seduction Absolute Hombre Eau de toilette Spray','2027-08-18','2023-01-15',1,1000,1,1),(15,5,100,'00000000','King of Seduction Absolute','Antonio Banderas','Características de Antonio Banderas Seduction King of Seduction Absolute Hombre Eau de toilette Spray','2027-08-18','2023-01-15',1,1000,1,1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Loreal','Carlos herrera 125','Proveedor de cosmeticos','125848815123','loreal@loreal.com','2021-10-01'),(2,'Finoli','London herrera 1225','Proveedor Shampoo','11011145211','lodon1225@gmail.com','2020-05-24'),(3,'Las Margaritas','Moron Belgrano - Manuel Belgrano 165 - BsAs','Proveedor de Productos en general de peluqueria','1146278925','lasmargaritas@gmail.com','2019-10-01'),(4,'Todo Peluquerias','honduras 1455 - CABA','Proveedor de Productos en general de peluqueria','420009479','todopeluquerias@gmail.com','2023-01-01'),(5,'Tomassa','solo WEB','Proveedor de productos de cosmética en general','123154654654','tomassapeinados@gmail.com','2021-08-12');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (1,1,2000,'Corte de Cabello Femenino','Se realiza Corte De cabello, que se compone con lavado del cabello y posterior corte',1),(2,1,1000,'Corte de Cabello Masculino','Se realiza Corte De cabello, que se compone con lavado del cabello y posterior corte',1),(3,1,3000,'Peinados de Fiesta','Se realiza un peinado de fiesta',1),(4,1,3500,'Cambio de Color del cabello','Se realiza lavado de cabello y posterior cambio de cabello',1),(5,1,2500,'Hidratacion','Se realiza tratamiento con crema para hidratar el cabello',1),(6,1,3000,'Alizado','Se realiza Corte De cabello y alizado',1),(7,1,3700,'Cambio de color de mechas','Se realiza lavado del cabello y posterior cambio de color en mechas',1);
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `unidad_pesos`
--

LOCK TABLES `unidad_pesos` WRITE;
/*!40000 ALTER TABLE `unidad_pesos` DISABLE KEYS */;
INSERT INTO `unidad_pesos` VALUES (1,'Miligramos'),(2,'Gramos'),(3,'Kilos'),(4,'Litros'),(5,'Mililitros'),(6,'Centimetro Cubico');
/*!40000 ALTER TABLE `unidad_pesos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,6,'2022-11-15','11:26:15',556),(2,6,'2022-08-20','15:44:15',3739),(3,6,'2021-06-18','18:10:45',2453),(4,6,'2020-09-25','16:29:45',10125);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-02 22:25:01
