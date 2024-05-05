USE motelapp;


-- TRIGGERS PARA PROCESO DE AUDITORIA TABLA CLIENTE. ESCRIBE LOS MOVIMIENTOS EN LA TABLA CLIENTELOGS
DELIMITER //
-- Trigger para inserción
CREATE TRIGGER trigger_cliente_insert
AFTER INSERT ON cliente
FOR EACH ROW
BEGIN
    INSERT INTO clientelogs (accion, id_cliente, nombre_cliente, fecha_hora)
    VALUES ('INSERT', NEW.id_cliente, NEW.nombre, CURRENT_TIMESTAMP);
END;
//

-- Trigger para actualización
CREATE TRIGGER trigger_cliente_update
AFTER UPDATE ON cliente
FOR EACH ROW
BEGIN
    INSERT INTO clientelogs (accion, id_cliente, nombre_cliente, fecha_hora)
    VALUES ('UPDATE', NEW.id_cliente, NEW.nombre, CURRENT_TIMESTAMP);
END;
//

-- Trigger para eliminación
CREATE TRIGGER trigger_cliente_delete
AFTER DELETE ON cliente
FOR EACH ROW
BEGIN
    INSERT INTO clientelogs (accion, id_cliente, nombre_cliente, fecha_hora)
    VALUES ('DELETE', OLD.id_cliente, OLD.nombre, CURRENT_TIMESTAMP);
END;
// DELIMITER ;






