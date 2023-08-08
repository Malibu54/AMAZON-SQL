SELECT
    Nombre,
    Apellido,
    Calle,
    Ciudad,
    tipo_tarjeta
FROM usuarios 
LEFT JOIN direccion ON id_usuarios = id_usuarios
LEFT JOIN metodo_pago ON id_usuarios = id_usuarios;