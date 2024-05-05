
USE motelapp;

DROP FUNCTION IF EXISTS TotalPagosCliente;
DROP FUNCTION IF EXISTS ObtenerNombreCliente;



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

--SELECT TotalPagosCliente('CLI005');
--DROP FUNCTION TotalPagosCliente;





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

--SELECT ObtenerNombreCliente('RES5792586');
--DROP FUNCTION ObtenerNombreCliente;





