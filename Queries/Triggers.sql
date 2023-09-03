DELIMITER //
CREATE TRIGGER before_insert_metodo_pago
BEFORE INSERT ON metodo_pago FOR EACH ROW
BEGIN
    -- Registra el usuario, la fecha y la hora de la inserción
    INSERT INTO LOG (usuario, fecha, hora, accion)
    VALUES (CURRENT_USER(), CURDATE(), CURTIME(), 'Inserción en metodo_pago');
END;
//
DELIMITER ;


DELIMITER //
CREATE TRIGGER after_update_clientes
AFTER UPDATE ON clientes FOR EACH ROW
BEGIN
    -- Registra el usuario, la fecha y la hora de la actualización
    INSERT INTO LOG (usuario, fecha, hora, accion)
    VALUES (CURRENT_USER(), CURDATE(), CURTIME(), 'Actualización en clientes');
END;
//
DELIMITER ;

CREATE TABLE LOG (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(255),
    fecha DATE,
    hora TIME,
    accion VARCHAR(255)
);
