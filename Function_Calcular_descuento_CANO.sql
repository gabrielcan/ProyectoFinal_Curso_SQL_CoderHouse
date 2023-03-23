CREATE DEFINER=`root`@`localhost` FUNCTION `Calcular_Descuento`(valor float, porcentaje_descuento float) RETURNS float
    NO SQL
BEGIN
declare iva float;
declare result float;
set iva=0.10;
set result=valor+iva-(valor*porcentaje_descuento);
RETURN result;
END