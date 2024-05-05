USE motelapp;

DROP PROCEDURE IF EXISTS ReservasAnuladas;
DROP PROCEDURE IF EXISTS EstadisticaMensualMoteles;



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


