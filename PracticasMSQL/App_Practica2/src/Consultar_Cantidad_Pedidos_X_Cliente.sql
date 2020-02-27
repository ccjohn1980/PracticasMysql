DELIMITER $$
DROP PROCEDURE IF EXISTS usp_productos_registrados;
CREATE PROCEDURE usp_productos_registrados ()
BEGIN
    select p.nombre_producto, c.nombre_categoria 
    from Productos as p 
    inner join Categoria as c 
    on (c.id_categoria=p.id_categoria);
END$$
DELIMITER ;




