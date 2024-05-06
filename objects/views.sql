USE motelapp;

-- VISTA 1 CLIENTES CUMPLEAÑEROS DEL MES
CREATE OR REPLACE VIEW ClientesDeCumpleanosMesActual AS
SELECT
    CLIENTE.NOMBRE,
    CLIENTE.EMAIL,
    CLIENTE.FECHANACIMIENTO,
    CLIENTEESTADO.DESCRIPCION
FROM
    CLIENTE
INNER JOIN
    CLIENTEESTADO ON CLIENTE.ID_CLIENTEESTADO = CLIENTEESTADO.ID_CLIENTEESTADO
WHERE
    MONTH(CLIENTE.FECHANACIMIENTO) = MONTH(CURRENT_DATE()) AND
    CLIENTEESTADO.ID_CLIENTEESTADO = 1;
 

-- VISTA 2 TOP 3 CLIENTES CON MAS RESERVAS EN EL AÑO
CREATE OR REPLACE VIEW ClientesTopReservasAnual AS
(SELECT
    RESERVA.ID_CLIENTE,
    COUNT(*) AS NUMEROVISITAS,
    CLIENTE.NOMBRE,
    CLIENTE.EMAIL,
    CLIENTEESTADO.DESCRIPCION
FROM
    RESERVA
INNER JOIN
    CLIENTE ON RESERVA.ID_CLIENTE = CLIENTE.ID_CLIENTE
INNER JOIN
    CLIENTEESTADO ON CLIENTE.ID_CLIENTEESTADO = CLIENTEESTADO.ID_CLIENTEESTADO
WHERE
    YEAR(FECHA) = YEAR(CURRENT_DATE) AND
    CLIENTE.ID_CLIENTEESTADO = 1
GROUP BY
    RESERVA.ID_CLIENTE
ORDER BY
    NUMEROVISITAS DESC
LIMIT 3);



