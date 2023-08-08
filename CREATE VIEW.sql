CREATE VIEW DetallesUsuarioS AS
SELECT
    u.id_usuarios,
    u.nombre,
    u.apellido,
    u.correo_electronico,
    d.calle AS DireccionCalle,
    d.ciudad AS DireccionCiudad,
    d.estado AS DireccionEstado,
    d.pais AS DireccionPais,
    m.tipo_tarjeta,
    m.numero_tarjeta,
    m.fvto
FROM usuarios u
LEFT JOIN direccion d ON u.id_usuarios = d.id_usuarios
LEFT JOIN metodo_pago m ON u.id_usuarios = m.id_usuarios;
