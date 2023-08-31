-- Función para contar clientes en China
DELIMITER //
CREATE FUNCTION ContarUsuariosEnChina() RETURNS INT
BEGIN
    DECLARE china_usuarios_contador INT;
    SELECT COUNT(*) INTO china_usuarios_contador FROM direccion WHERE pais = 'China';
    RETURN china_usuarios_contador;
END;
//
DELIMITER ;

-- Función para contar clientes con tarjetas de crédito, débito u otros medios de pago
DELIMITER //
CREATE FUNCTION ContadorVisaYAmex() RETURNS VARCHAR(255)
BEGIN
    DECLARE visa INT;
    DECLARE amex INT;
    DECLARE result_message VARCHAR(255);
    
    SELECT COUNT(*) INTO visa FROM metodo_pago WHERE tipo_tarjeta = 'visa';
    SELECT COUNT(*) INTO amex FROM metodo_pago WHERE tipo_tarjeta = 'amex';
    
    SET result_message = CONCAT('Tarjetas Visa: ', CAST(visa AS CHAR), ', Tarjetas Amex: ', CAST(amex AS CHAR));
    
    RETURN result_message;
END;

