DELIMITER $$
DROP PROCEDURE IF EXISTS usp_cant_productos_x_nombre_categoria;
CREATE PROCEDURE usp_cant_productos_x_nombre_categoria (
in variable_nombre_categoria varchar (30)
)
BEGIN
    select c.nombre_categoria, 
    count(p.id_producto) 
    from categoria as c 
    inner join Productos as p 
    on (c.id_categoria=p.id_categoria)
    where c.nombre_categoria = variable_nombre_categoria
    group by p.id_producto
    order by c.nombre_categoria desc;
END$$
DELIMITER ;
