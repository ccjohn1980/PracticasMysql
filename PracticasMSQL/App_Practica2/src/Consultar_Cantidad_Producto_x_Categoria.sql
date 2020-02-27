DELIMITER $$
DROP PROCEDURE IF EXISTS usp_cant_productos_x_categoria;
CREATE PROCEDURE usp_cant_productos_x_categoria ()
BEGIN
    select c.nombre_categoria, 
    count(p.id_producto) 
    from categoria as c 
    inner join Productos as p 
    on (c.id_categoria=p.id_categoria) 
    group by p.id_producto
    order by c.nombre_categoria desc;
END$$
DELIMITER ;
