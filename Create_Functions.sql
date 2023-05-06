
/*
FUNCION CALCULAR DESCUENTO

En este caso es una función que recibe 2 valores float, 
donde el primer valor que pasamos será el precio y el otro el porcentaje de descuento.
Obteniendo el valor enviado al principio, aplicando el descuento 
y sumando el IVA (por defecto puse en la funcion 0.1)
*/

DELIMITER //
CREATE function `Calcular_Descuento`(valor float, porcentaje_descuento float) RETURNS float
    NO SQL
BEGIN
declare iva float;
declare result float;
set iva=0.10;
set result=valor+iva-(valor*porcentaje_descuento);
RETURN result;
END //

/* ejemplo de uso de la funcion "Calcular_Descuento"*/
-- select Calcular_Descuento(100,0.5) as Precio_con_Descuento;

/*
FUNCION 'calcular_edad'
En este caso realicé una función que me permite calcular la edad, enviando la fecha de nacimiento, 
con lo cual devuelve un valor entero indicando la edad o mejor dicho la diferencia entre la fecha enviada 
y la fecha actual.

*/

DELIMITER //

CREATE FUNCTION `Calcular_edad`(fecha_Nac date) RETURNS int
    NO SQL
BEGIN
declare resultado int;
set resultado = (YEAR(NOW()) - YEAR(fecha_Nac));
RETURN resultado;
END //

/* ejemplo de uso de la funcion "Calcular_edad"*/

-- select Calcular_edad('1986-04-17') as Edad;
