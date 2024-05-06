USE mysql;

-- CREATE USER IF NOT EXISTS
CREATE USER IF NOT EXISTS 'superadmin'@'%' IDENTIFIED BY 'password';
CREATE USER 'usuario_select'@'%' IDENTIFIED BY 'password_select';
CREATE USER 'usuario_crud'@'%' IDENTIFIED BY 'password_crud';


-- GRANT ALL PRIVILEGES ON motelapp.* TO 'superadmin'@'%'
GRANT ALL PRIVILEGES ON motelapp.* TO 'superadmin'@'%' WITH GRANT OPTION;


FLUSH PRIVILEGES;

USE motelapp;

-- CREACIÓN DE ROLES
CREATE ROLE role_select_vistas;
CREATE ROLE role_crud_moteles;

-- ASIGNACIÓN DE PRIVILEGIOS AL ROL role_select_vistas
GRANT SELECT ON MOTEL TO role_select_vistas;
--GRANT SELECT ON DUENO TO role_select_vistas;
GRANT SELECT ON HABITACION TO role_select_vistas;
GRANT SELECT ON HABITACIONESTADO TO role_select_vistas;
GRANT SELECT ON HABITACIONVALORES TO role_select_vistas;
GRANT SELECT ON PAGO TO role_select_vistas;
GRANT SELECT ON MEDIODEPAGO TO role_select_vistas;
GRANT SELECT ON EMPLEADO TO role_select_vistas;
GRANT SELECT ON RESERVA TO role_select_vistas;
GRANT SELECT ON ESTADORESERVA TO role_select_vistas;
GRANT SELECT ON TIEMPORESERVA TO role_select_vistas;
GRANT SELECT ON CLIENTE TO role_select_vistas;
GRANT SELECT ON CLIENTEESTADO TO role_select_vistas;
GRANT SELECT ON CLIENTELOGS TO role_select_vistas;


-- ASIGNACIÓN DE PRIVILEGIOS AL ROL role_crud_moteles
GRANT ALL PRIVILEGES ON MOTEL TO role_crud_moteles;
--GRANT ALL PRIVILEGES ON DUENO TO role_crud_moteles;
GRANT ALL PRIVILEGES ON HABITACION TO role_crud_moteles;
GRANT ALL PRIVILEGES ON HABITACIONESTADO TO role_crud_moteles;
GRANT ALL PRIVILEGES ON HABITACIONVALORES TO role_crud_moteles;



-- ASIGNACIÓN A ROLES
GRANT role_select_vistas TO 'usuario_select'@'%';
GRANT role_crud_moteles TO 'usuario_crud'@'%';

FLUSH PRIVILEGES;
