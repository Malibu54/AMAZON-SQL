SELECT COUNT(*) as total_usuarios_activos
FROM amazon.usuarios
GROUP BY apellido;
