-- Crear un usuario con permisos de solo lectura
-- Este usuario podrá seleccionar datos de todas las tablas, pero no podrá modificar ni eliminar registros.

CREATE USER 'usuario_lectura'@'localhost' IDENTIFIED BY 'contrasena_lectura';
-- Crea el usuario 'usuario_lectura' con una contraseña

-- Otorgar permisos de solo lectura al usuario en todas las tablas
-- Permite SELECT (lectura) en todas las tablas de todas las bases de datos.
GRANT SELECT ON *.* TO 'usuario_lectura'@'localhost';

-- Crear un usuario con permisos de lectura, inserción y modificación
-- Este usuario podrá seleccionar, insertar y actualizar datos, pero no podrá eliminar registros.

CREATE USER 'usuario_escritura'@'localhost' IDENTIFIED BY 'contrasena_escritura';
-- Crea el usuario 'usuario_escritura' con una contraseña

-- Otorgar permisos de lectura, inserción y modificación al usuario en todas las tablas
-- Permite SELECT (lectura), INSERT (inserción) y UPDATE (modificación) en todas las tablas de todas las bases de datos.
GRANT SELECT, INSERT, UPDATE ON *.* TO 'usuario_escritura'@'localhost';

-- No permitir eliminación de registros para ninguno de los usuarios

-- Comenta las sentencias para mayor claridad
