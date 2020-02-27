/* 
* Insertar una categoria, el valor debe  ser ingresado en mayuscula, 
el id debe ser ingresado por ti, devuelveme un 1 si a sido grabado ok y un 0 si no a sido grabado.
*/

DELIMITER $$
DROP PROCEDURE IF EXISTS insertar_categoria;
CREATE PROCEDURE insertar_categoria(
  IN  _p_nombre  VARCHAR(30),
  OUT _p_confirm INT
)
BEGIN
    DECLARE _v_id_cat INT;
    SET _p_nombre = UPPER(_p_nombre);
    --
    SELECT FLOOR(1 + RAND() * 60) INTO _v_id_cat;
    --
    INSERT INTO categoria
        (id_categoria, nombre_categoria)
        VALUES
        (_v_id_cat , _p_nombre );
    --
    IF ROW_COUNT() > 0 THEN
        SET _p_confirm = 1;
    ELSE
        SET _p_confirm = 0;
    END IF;
END$$
DELIMITER ;


