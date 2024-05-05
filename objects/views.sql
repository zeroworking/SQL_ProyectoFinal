USE motelapp;


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
 

--SELECT * FROM ClientesDeCumpleañosMesActual;
--DROP VIEW IF EXISTS ClientesDeCumpleañosMesActual;





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

--SELECT * FROM ClientesTopReservasAnual;
--DROP VIEW IF EXISTS ClientesTopReservasAnual;