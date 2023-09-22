
START TRANSACTION;


DECLARE rowCount INT;
SELECT COUNT(*) INTO rowCount FROM direccion;


IF rowCount > 0 THEN
    DELETE FROM direccion WHERE condición;

ELSE
    INSERT INTO direccion (calle, ciudad) VALUES ('Calle Nueva', 'Ciudad Nueva'), ('Otra Calle', 'Otra Ciudad');
END IF;


-- ROLLBACK;

COMMIT;



START TRANSACTION;


INSERT INTO metodo_pago (tipo_tarjeta, numero_tarjeta, nombre_titular)
VALUES ('Visa', '1234567890123456', 'Juan Pérez');


SELECT ROW_COUNT() INTO @rowCount;


IF rowCount = 1 THEN
    COMMIT;

ELSE
    ROLLBACK;
END IF;

