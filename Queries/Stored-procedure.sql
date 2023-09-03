DELIMITER //

CREATE PROCEDURE InsertarUsuario (
    IN p_nombre VARCHAR(255),
    IN p_apellido VARCHAR(255),
    IN p_email VARCHAR(255)
)
BEGIN
    INSERT INTO usuarios (nombre, apellido, email) VALUES (p_nombre, p_apellido, p_email);
END;
//
DELIMITER ;

/** Para llamar este proceso almacenado uso CALL InsertarUsuario('Juan', 'Pérez', 'juan@example.com');
**/

DELIMITER //

CREATE PROCEDURE InsertarMetodoPago (
    IN p_tipo_tarjeta VARCHAR(255),
    IN p_numero_tarjeta VARCHAR(16),
    IN p_nombre_titular VARCHAR(255)
)
BEGIN
    INSERT INTO metodo_pago (tipo_tarjeta, numero_tarjeta, nombre_titular)
    VALUES (p_tipo_tarjeta, p_numero_tarjeta, p_nombre_titular);
END;
//
DELIMITER ;

/** Para llamar este proceso almacenado uso CALL InsertarMetodoPago('Tarjeta de Crédito', '1234567890123456', 'Juan Pérez');

**/