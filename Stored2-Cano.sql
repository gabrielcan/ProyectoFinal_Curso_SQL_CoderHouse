-- Creamos un Stored Procedure donde enviamos el campo por el que ordenamos la tabla productos 
-- y si queremos que lo haga de manera Ascendente ponemos la letra "A" o la letra "D" para que sea de manera descendente
 
DELIMITER $$
CREATE PROCEDURE `ORDENAR_PRODUCTOS`(IN ORDEN varchar(55), IN tipo char(2))
BEGIN
IF ORDEN <>'' THEN
	IF tipo = 'A' THEN
		SET @ORDERBY = concat('ORDER BY ',ORDEN);
		SET @TIPO=' asc';
	ELSEIF tipo='D' THEN
		SET @ORDERBY = concat('ORDER BY ',ORDEN);
		SET @TIPO=' desc';
	ELSE
		SET @TIPO='';
	END IF;
ELSE
SET @ORDERBY='';
END IF;

SET @Consult_Prod= concat('SELECT * FROM peluqueria.productos ',@ORDERBY,@TIPO);

PREPARE runSQL from @Consult_Prod;
EXECUTE runSQL;
deallocate prepare runSQL;

END $$
DELIMITER ;

-- Ejecutamos el SP

CALL ORDENAR_PRODUCTOS('fecha_vencimiento','D');	
CALL ORDENAR_PRODUCTOS('fecha_vencimiento','A');
CALL ORDENAR_PRODUCTOS('fecha_vencimiento','');		