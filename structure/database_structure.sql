DROP DATABASE IF EXISTS motelapp;

CREATE DATABASE motelapp;

USE motelapp;

-- Tabla CLIENTEESTADO
CREATE TABLE IF NOT EXISTS `CLIENTEESTADO` (
  `ID_CLIENTEESTADO` TINYINT NOT NULL,
  `DESCRIPCION` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`ID_CLIENTEESTADO`)
);

-- Tabla CLIENTE
CREATE TABLE IF NOT EXISTS `CLIENTE` (
  `ID_CLIENTE` VARCHAR(15) NOT NULL,
  `NOMBRE` VARCHAR(100) NOT NULL,
  `TELEFONO` VARCHAR(15) NULL DEFAULT NULL,
  `EMAIL` VARCHAR(70) NOT NULL,
  `FECHANACIMIENTO` DATETIME NOT NULL,
  `ID_CLIENTEESTADO` TINYINT NOT NULL,
  PRIMARY KEY (`ID_CLIENTE`),
  CONSTRAINT `FK_CLIENTE_CLIENTEESTADO` FOREIGN KEY (`ID_CLIENTEESTADO`) REFERENCES `CLIENTEESTADO` (`ID_CLIENTEESTADO`)
);

-- Tabla MOTEL
CREATE TABLE IF NOT EXISTS `MOTEL` (
  `ID_MOTEL` VARCHAR(10) NOT NULL,
  `NOMBRE` VARCHAR(50) NOT NULL,
  `DIRECCION` VARCHAR(50) NOT NULL,
  `TELEFONO` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`ID_MOTEL`)
);

-- Tabla EMPLEADO
CREATE TABLE IF NOT EXISTS `EMPLEADO` (
  `ID_EMPLEADO` VARCHAR(7) NOT NULL,
  `NOMBRE` VARCHAR(100) NOT NULL,
  `ID_MOTEL` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ID_EMPLEADO`),
  CONSTRAINT `FK_EMPLEADO_MOTEL` FOREIGN KEY (`ID_MOTEL`) REFERENCES `MOTEL` (`ID_MOTEL`)
);

-- Tabla ESTADORESERVA
CREATE TABLE IF NOT EXISTS `ESTADORESERVA` (
  `ID_ESTADORESERVA` TINYINT NOT NULL,
  `DESCRIPCION` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`ID_ESTADORESERVA`)
);

-- Tabla HABITACIONESTADO
CREATE TABLE IF NOT EXISTS `HABITACIONESTADO` (
  `ID_HABITACIONESTADO` TINYINT NOT NULL,
  `DESCRIPCION` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`ID_HABITACIONESTADO`)
);

-- Tabla HABITACION
CREATE TABLE IF NOT EXISTS `HABITACION` (
  `ID_HABITACION` VARCHAR(10) NOT NULL,
  `NOMBRE` VARCHAR(50) NOT NULL,
  `ID_MOTEL` VARCHAR(10) NOT NULL,
  `ID_HABITACIONESTADO` TINYINT NOT NULL,
  PRIMARY KEY (`ID_HABITACION`),
  CONSTRAINT `FK_HABITACION_MOTEL` FOREIGN KEY (`ID_MOTEL`) REFERENCES `MOTEL` (`ID_MOTEL`),
  CONSTRAINT `FK_HABITACION_HABITACIONESTADO` FOREIGN KEY (`ID_HABITACIONESTADO`) REFERENCES `HABITACIONESTADO` (`ID_HABITACIONESTADO`)
);

-- Tabla HABITACIONVALORES
CREATE TABLE IF NOT EXISTS `HABITACIONVALORES` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `DIASEMANA` VARCHAR(10) NOT NULL,
  `VALORHORA` INT NOT NULL,
  `ID_HABITACION` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_HABITACIONVALORES_HABITACION` FOREIGN KEY (`ID_HABITACION`) REFERENCES `HABITACION` (`ID_HABITACION`)
);

-- Tabla MEDIODEPAGO
CREATE TABLE IF NOT EXISTS `MEDIODEPAGO` (
  `ID_MEDIODEPAGO` TINYINT NOT NULL,
  `DESCRIPCION` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`ID_MEDIODEPAGO`)
);

-- Tabla TIEMPORESERVA
CREATE TABLE IF NOT EXISTS `TIEMPORESERVA` (
  `ID_TIEMPORESERVA` TINYINT NOT NULL,
  `DESCRIPCION` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ID_TIEMPORESERVA`)
);

-- Tabla RESERVA
CREATE TABLE IF NOT EXISTS `RESERVA` (
  `ID_RESERVA` VARCHAR(10) NOT NULL,
  `FECHA` DATETIME NOT NULL,
  `ENTRADA` DATETIME NOT NULL,
  `SALIDA` DATETIME NOT NULL,
  `VALORRESERVA` INT NOT NULL,
  `ID_HABITACION` VARCHAR(10) NOT NULL,
  `ID_CLIENTE` VARCHAR(15) NOT NULL,
  `ID_EMPLEADO` VARCHAR(7) NOT NULL,
  `ID_TIEMPORESERVA` TINYINT NOT NULL,
  `ID_ESTADORESERVA` TINYINT NOT NULL,
  PRIMARY KEY (`ID_RESERVA`),
  CONSTRAINT `FK_RESERVA_HABITACION` FOREIGN KEY (`ID_HABITACION`) REFERENCES `HABITACION` (`ID_HABITACION`),
  CONSTRAINT `FK_RESERVA_CLIENTE` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `CLIENTE` (`ID_CLIENTE`),
  CONSTRAINT `FK_RESERVA_TIEMPORESERVA` FOREIGN KEY (`ID_TIEMPORESERVA`) REFERENCES `TIEMPORESERVA` (`ID_TIEMPORESERVA`),
  CONSTRAINT `FK_RESERVA_EMPLEADO` FOREIGN KEY (`ID_EMPLEADO`) REFERENCES `EMPLEADO` (`ID_EMPLEADO`),
  CONSTRAINT `FK_RESERVA_ESTADORESERVA` FOREIGN KEY (`ID_ESTADORESERVA`) REFERENCES `ESTADORESERVA` (`ID_ESTADORESERVA`)
);

-- Tabla PAGO
CREATE TABLE IF NOT EXISTS `PAGO` (
  `ID_PAGO` VARCHAR(10) NOT NULL,
  `NUMBOLETA` VARCHAR(10) NOT NULL,
  `FECHAPAGO` DATETIME NOT NULL,
  `ID_RESERVA` VARCHAR(10) NOT NULL,
  `ID_MEDIODEPAGO` TINYINT NOT NULL,
  PRIMARY KEY (`ID_PAGO`),
  CONSTRAINT `FK_PAGO_RESERVA` FOREIGN KEY (`ID_RESERVA`) REFERENCES `RESERVA` (`ID_RESERVA`),
  CONSTRAINT `FK_PAGO_MEDIODEPAGO` FOREIGN KEY (`ID_MEDIODEPAGO`) REFERENCES `MEDIODEPAGO` (`ID_MEDIODEPAGO`)
);


-- Tabla CLIENTELOGS
--CREATE TABLE clientelogs (
 --   accion VARCHAR(10),
--    id_cliente VARCHAR(15),
--    nombre_cliente VARCHAR(50),
--    fecha_hora TIMESTAMP
--);