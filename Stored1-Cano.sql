CREATE DEFINER=`root`@`localhost` PROCEDURE `ORDENAR_PRODUCTOS`(IN ORDEN varchar(55), IN tipo char(2))
BEGIN
/* verificamos que no este vacia la variable que carga el usuario*/
IF ORDEN <>'' THEN
/* Realizamos una segunda verificacion para saber si el usuario eligio un tipo de ordenamito (A = Ascendente , D= Descendente y si es vacio tendra el orden por defecto que tiene mysql)*/
	IF tipo = 'A' THEN
    
    /*concatenamos las variables completadas por el usario para el ordenamiento */
		SET @ORDERBY = concat('ORDER BY ',ORDEN);
		SET @TIPO=' asc';
	ELSEIF tipo='D' THEN
    /*concatenamos las variables completadas por el usario para el ordenamiento */
		SET @ORDERBY = concat('ORDER BY ',ORDEN);
		SET @TIPO=' desc';
	ELSE
		SET @TIPO='';
	END IF;
ELSE
SET @ORDERBY='';
END IF;

/*concatenamos las variables completadas por el usario para el ordenamiento dentro de la consulta a la tabla productos*/

SET @Consult_Prod= concat('SELECT * FROM peluqueria.productos ',@ORDERBY,@TIPO);

PREPARE runSQL from @Consult_Prod;
EXECUTE runSQL;
deallocate prepare runSQL;

END