ALTER TABLE Productos ADD COLUMN id_categoria INT;

UPDATE Productos SET id_categoria = 1 WHERE id_producto = 2;
UPDATE Productos SET id_categoria = 2 WHERE id_producto = 3;
UPDATE Productos SET id_categoria = 3 WHERE id_producto = 4;
UPDATE Productos SET id_categoria = 4 WHERE id_producto = 5;

