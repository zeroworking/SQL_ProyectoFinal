-- VISTAS, FUNCIONES, PROCEDIMIENTO ALMACENADOS, TRIGGERS
-- JORGE JARA
-- CODERHOUSE COMISION 53175




-- VISTA 1 CLIENTES CUMPLEAÑEROS DEL MES
CREATE OR REPLACE VIEW ClientesDeCumpleañosMesActual AS
(SELECT
    cliente.NOMBRE,
    cliente.EMAIL,
    cliente.FECHANACIMIENTO,
    clienteestado.DESCRIPCION
FROM
    cliente
INNER JOIN
    clienteestado ON cliente.ID_CLIENTEESTADO = clienteestado.ID_CLIENTEESTADO
WHERE
    MONTH(cliente.FECHANACIMIENTO) = MONTH(CURRENT_DATE()) AND
    clienteestado.ID_CLIENTEESTADO = 1);
 

SELECT * FROM ClientesDeCumpleañosMesActual;
DROP VIEW IF EXISTS ClientesDeCumpleañosMesActual;





-- VISTA 2 TOP 3 CLIENTES CON MAS RESERVAS EN EL AÑO
CREATE OR REPLACE VIEW ClientesTopReservasAnual AS
(SELECT
reserva.ID_CLIENTE,
Count(*) AS NumeroVisitas,
cliente.NOMBRE,
cliente.EMAIL,
clienteestado.DESCRIPCION
FROM
reserva
INNER JOIN cliente ON reserva.ID_CLIENTE = cliente.ID_CLIENTE
INNER JOIN clienteestado ON cliente.ID_CLIENTEESTADO = clienteestado.ID_CLIENTEESTADO
WHERE
YEAR(FECHA) = YEAR(CURRENT_DATE) AND
cliente.ID_CLIENTEESTADO = 1
GROUP BY ID_CLIENTE
ORDER BY NumeroVisitas DESC
LIMIT 3);

SELECT * FROM ClientesTopReservasAnual;
DROP VIEW IF EXISTS ClientesTopReservasAnual;





-- FUNCION 1 RETORNA TOTAL DE DINERO PAGADO POR CONCEPTO DE RESERVAS POR UN CLIENTE ESPECIFICO
DELIMITER //
CREATE FUNCTION TotalPagosCliente(cliente_id VARCHAR(15)) RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;
    SELECT SUM(VALORRESERVA) INTO total FROM reserva WHERE id_cliente = cliente_id;
    RETURN total;
END;
// DELIMITER ;

SELECT TotalPagosCliente('CLI005');
DROP FUNCTION TotalPagosCliente;





-- FUNCION 2 RETORNA NOMBRE DEL CLIENTE PARA UN CODIGO DE RESERVA ESPECIFICO
DELIMITER //
CREATE FUNCTION ObtenerNombreCliente(id_reserva VARCHAR(10)) RETURNS VARCHAR(100)
NO SQL
BEGIN
    DECLARE cliente_nombre VARCHAR(100);    
    SELECT cliente.NOMBRE INTO cliente_nombre
    FROM reserva
    INNER JOIN cliente ON cliente.ID_CLIENTE = reserva.ID_CLIENTE    
    WHERE reserva.ID_RESERVA = id_reserva;    
    RETURN cliente_nombre;
END
// DELIMITER ;

SELECT ObtenerNombreCliente('RES5792586');
DROP FUNCTION ObtenerNombreCliente;









-- PROCEDIMIENTO ALMACENADO 1 RETORNA HISTORICO DE RESERVAS ANULADAS
DELIMITER //
CREATE PROCEDURE ReservasAnuladas()
BEGIN
    SELECT
        estadoreserva.DESCRIPCION,
        reserva.ID_RESERVA,
        reserva.VALORRESERVA,
        reserva.FECHA,
        cliente.NOMBRE AS nombre_cliente,
        habitacion.NOMBRE AS nombre_habitacion,
        motel.NOMBRE AS nombre_motel
    FROM
        reserva
    INNER JOIN estadoreserva ON reserva.ID_ESTADORESERVA = estadoreserva.ID_ESTADORESERVA
    INNER JOIN cliente ON reserva.ID_CLIENTE = cliente.ID_CLIENTE
    INNER JOIN habitacion ON reserva.ID_HABITACION = habitacion.ID_HABITACION
    INNER JOIN motel ON habitacion.ID_MOTEL = motel.ID_MOTEL
    WHERE
        reserva.ID_ESTADORESERVA = 2;
END;
//DELIMITER ;





-- PROCEDIMIENTO ALMACENADO 2 RETORNA EL NUMERO TOTAL DE RESERVAS EFECTIVAS Y EL MONTO RECAUDADO POR CADA MOTEL AL MES
DELIMITER //
CREATE PROCEDURE EstadisticaMensualMoteles()
BEGIN
    SELECT
    motel.ID_MOTEL,
    motel.NOMBRE,
    COUNT(reserva.ID_RESERVA) AS CANTIDAD_RESERVAS,
    SUM(reserva.VALORRESERVA) AS TOTAL_VALOR_RESERVAS,
    estadoreserva.DESCRIPCION
FROM
    reserva
    INNER JOIN habitacion ON reserva.ID_HABITACION = habitacion.ID_HABITACION
    INNER JOIN motel ON habitacion.ID_MOTEL = motel.ID_MOTEL
    INNER JOIN estadoreserva ON reserva.ID_ESTADORESERVA = estadoreserva.ID_ESTADORESERVA
WHERE
    estadoreserva.ID_ESTADORESERVA = 1
    AND MONTH(reserva.FECHA) = 1
GROUP BY
    motel.ID_MOTEL,
    motel.NOMBRE;
END
// DELIMITER ;





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






