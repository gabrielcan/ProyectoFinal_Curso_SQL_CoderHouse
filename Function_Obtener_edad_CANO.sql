-- creamos una funcion para calcular la edad, tiene que obtener la fecha de nacimiento y devolvera la edad

CREATE DEFINER=`root`@`localhost` FUNCTION `Calcular_edad`(fecha_Nac date) RETURNS int
    NO SQL
BEGIN
declare resultado int;
set resultado = (YEAR(NOW()) - YEAR(fecha_Nac));
RETURN resultado;
END