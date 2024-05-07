USE motelapp;

INSERT INTO MEDIODEPAGO
(ID_MEDIODEPAGO, DESCRIPCION) VALUES 
(1, 'Transferencia'),
(2, 'Webpay');

INSERT INTO DUENO
(ID_DUENO, NOMBRE, CORREO, TELEFONO) VALUES
('15467731','JORGE','JORGE@MOTELAPP.CL','962361668'),
('15467732','PEDRO','PEDRO@MOTELAPP.CL','962361668'),
('15467733','JUAN','JUAN@MOTELAPP.CL','962361668'),
('15467734','JOSE','JOSE@MOTELAPP.CL','962361668'),
('15467735','MARIA','MARIA@MOTELAPP.CL','962361668'),
('15467736','PATRICIA','PATRICIA@MOTELAPP.CL','962361668'),
('15467737','RENE','RENE@MOTELAPP.CL','962361668'),
('15467738','JUANA','JUANA@MOTELAPP.CL','962361668'),
('15467739','OSVALDO','OSVALDO@MOTELAPP.CL','962361668'),
('15467740','CARLOS','CARLOS@MOTELAPP.CL','962361668'),
('15467741','RODRIGO','RODRIGO@MOTELAPP.CL','962361668'),
('15467742','CARMEN','CARMEN@MOTELAPP.CL','962361668'),
('15467743','ROSA','ROSA@MOTELAPP.CL','962361668'),
('15467744','CARLA','CARLA@MOTELAPP.CL','962361668'),
('15467745','CATALINA','CATALINA@MOTELAPP.CL','962361668'),
('15467746','ANTONIO','ANTONIO@MOTELAPP.CL','962361668'),
('15467747','GABRIEL','GABRIEL@MOTELAPP.CL','962361668'),
('15467748','LUZ','LUZ@MOTELAPP.CL','962361668'),
('15467749','RICARDO','RICARDO@MOTELAPP.CL','962361668'),
('15467750','ANGEL','ANGEL@MOTELAPP.CL','962361668');

INSERT INTO MOTEL
(ID_MOTEL, NOMBRE, DIRECCION, TELEFONO,ID_DUENO) VALUES
('MOTEL001', 'El Oasis', 'Avenida Providencia 1234 - Providencia', '220594837','15467731'),
('MOTEL002', 'Luna de Miel', 'Calle Las Condes 5678 - Las Condes', '221308495','15467732'),
('MOTEL003', 'El Refugio', 'Pasaje Ñuñoa 910 - Ñuñoa', '220976354','15467733'),
('MOTEL004', 'Paraíso Secreto', 'Avenida La Florida 246 - La Florida', '220158473','15467734'),
('MOTEL005', 'La Cabaña', 'Calle Maipú 3456 - Maipú', '222057139','15467735'),
('MOTEL006', 'El Escondite', 'Avenida Pedro de Valdivia 789 - Ñuñoa', '223098457','15467736'),
('MOTEL007', 'Noches de Pasión', 'Pasaje Bellavista 123 - Recoleta', '220635984','15467737'),
('MOTEL008', 'El Rincón del Amor', 'Calle San Miguel 456 - San Miguel', '222670943','15467738'),
('MOTEL009', 'Sueños Prohibidos', 'Avenida Kennedy 7890 - Las Condes', '221840795','15467739'),
('MOTEL010', 'La Posada Romántica', 'Pasaje Puente Alto 321 - Puente Alto', '222405198','15467740'),
('MOTEL011', 'El Encuentro', 'Calle Peñalolén 567 - Peñalolén', '223705819','15467741'),
('MOTEL012', 'El Jardín del Deseo', 'Avenida Colina 890 - Colina', '220974531','15467742'),
('MOTEL013', 'El Mirador', 'Pasaje Providencia 234 - Providencia', '223564098','15467743'),
('MOTEL014', 'Amorío Hotel', 'Calle La Cisterna 678 - La Cisterna', '222630185','15467744'),
('MOTEL015', 'La Morada Intima', 'Avenida Vitacura 9012 - Vitacura', '221783095','15467745'),
('MOTEL016', 'El Refugio del Amante', 'Pasaje Macul 345 - Macul', '222407518','15467746'),
('MOTEL017', 'El Paraíso del Romance', 'Calle La Reina 6789 - La Reina', '220183947','15467747'),
('MOTEL018', 'La Guarida del Amor', 'Avenida San Bernardo 1234 - San Bernardo', '223890745','15467748'),
('MOTEL019', 'El Cielo en la Tierra', 'Pasaje Pudahuel 567 - Pudahuel', '221057634','15467749'),
('MOTEL020', 'La Estancia del Placer', 'Calle La Pintana 890 - La Pintana', '222306579','15467750');

INSERT INTO EMPLEADO
(ID_EMPLEADO, NOMBRE, ID_MOTEL) VALUES
('EMP001', 'María García López', 'MOTEL001'),
('EMP002', 'Juan Martínez Rodríguez', 'MOTEL002'),
('EMP003', 'Ana Pérez Fernández', 'MOTEL003'),
('EMP004', 'Carlos Gómez Martínez', 'MOTEL004'),
('EMP005', 'Laura Ruiz Sánchez', 'MOTEL005'),
('EMP006', 'Pedro Díaz López', 'MOTEL006'),
('EMP007', 'Carmen Castro González', 'MOTEL007'),
('EMP008', 'Sergio López Martínez', 'MOTEL008'),
('EMP009', 'Isabel Jiménez García', 'MOTEL009'),
('EMP010', 'Pablo Moreno Rodríguez', 'MOTEL010'),
('EMP011', 'Marta Navarro Sánchez', 'MOTEL011'),
('EMP012', 'Diego Rodríguez Pérez', 'MOTEL012'),
('EMP013', 'Elena Hernández Martínez', 'MOTEL013'),
('EMP014', 'Andrés Soto Rodríguez', 'MOTEL014'),
('EMP015', 'Lucia Torres García', 'MOTEL015'),
('EMP016', 'Antonio López Ruiz', 'MOTEL016'),
('EMP017', 'Sofía García Martínez', 'MOTEL017'),
('EMP018', 'Javier Sánchez Pérez', 'MOTEL018'),
('EMP019', 'Paula Fernández López', 'MOTEL019'),
('EMP020', 'Daniel Ortiz González', 'MOTEL020');

INSERT INTO HABITACIONESTADO
(ID_HABITACIONESTADO, DESCRIPCION) VALUES
(1, 'Disponible'),
(2,'En Mantención');

INSERT INTO HABITACION
(ID_HABITACION, NOMBRE, ID_MOTEL, ID_HABITACIONESTADO) VALUES
('HAB48271', 'Suite Romance', 'MOTEL001', 1),
('HAB48272', 'Oasis íntimo', 'MOTEL002', 1),
('HAB48273', 'Refugio Acogedor', 'MOTEL003', 1),
('HAB48274', 'Rincón Secreto', 'MOTEL004', 1),
('HAB48275', 'Cabaña del Amor', 'MOTEL005', 1),
('HAB48276', 'Paraíso Privado', 'MOTEL006', 1),
('HAB48277', 'Nido de Pasión', 'MOTEL007', 1),
('HAB48278', 'Refugio del Placer', 'MOTEL008', 1),
('HAB48279', 'Refugio Íntimo', 'MOTEL009', 1),
('HAB48280', 'Morada de la Intimidad', 'MOTEL010', 1),
('HAB48281', 'Rincón Seductor', 'MOTEL011', 1),
('HAB48282', 'Espacio del Secreto', 'MOTEL012', 1),
('HAB48283', 'Espacio Intimo', 'MOTEL013', 1),
('HAB48284', 'Escondite del Encuentro', 'MOTEL014', 1),
('HAB48285', 'Cabaña del Encuentro', 'MOTEL015', 1),
('HAB48286', 'Suite del Cariño', 'MOTEL016', 1),
('HAB48287', 'Paraíso de la Ternura', 'MOTEL017', 1),
('HAB48288', 'Refugio Amigable', 'MOTEL018', 1),
('HAB48289', 'Morada del Afecto', 'MOTEL019', 1),
('HAB48290', 'Rincón Agradable', 'MOTEL020', 1);

INSERT INTO HABITACIONVALORES
(ID, DIASEMANA, VALORHORA, ID_HABITACION) VALUES
(1, 'Lunes', 15000, 'HAB48271'),
(2, 'Martes', 15000, 'HAB48271'),
(3, 'Miercoles', 15000, 'HAB48271'),
(4, 'Jueves', 15000, 'HAB48271'),
(5, 'Viernes', 15000, 'HAB48271'),
(6, 'Sabado', 20000, 'HAB48271'),
(7, 'Domingo', 20000, 'HAB48271'),
(8, 'Lunes', 15000, 'HAB48272'),
(9, 'Martes', 15000, 'HAB48272'),
(10, 'Miercoles', 15000, 'HAB48272'),
(11, 'Jueves', 15000, 'HAB48272'),
(12, 'Viernes', 15000, 'HAB48272'),
(13, 'Sabado', 20000, 'HAB48272'),
(14, 'Domingo', 20000, 'HAB48272'),
(15, 'Lunes', 15000, 'HAB48273'),
(16, 'Martes', 15000, 'HAB48273'),
(17, 'Miercoles', 15000, 'HAB48273'),
(18, 'Jueves', 15000, 'HAB48273'),
(19, 'Viernes', 15000, 'HAB48273'),
(20, 'Sabado', 20000, 'HAB48273'),
(21, 'Domingo', 20000, 'HAB48273'),
(22, 'Lunes', 15000, 'HAB48274'),
(23, 'Martes', 15000, 'HAB48274'),
(24, 'Miercoles', 15000, 'HAB48274'),
(25, 'Jueves', 15000, 'HAB48274'),
(26, 'Viernes', 15000, 'HAB48274'),
(27, 'Sabado', 20000, 'HAB48274'),
(28, 'Domingo', 20000, 'HAB48274'),
(29, 'Lunes', 15000, 'HAB48275'),
(30, 'Martes', 15000, 'HAB48275'),
(31, 'Miercoles', 15000, 'HAB48275'),
(32, 'Jueves', 15000, 'HAB48275'),
(33, 'Viernes', 15000, 'HAB48275'),
(34, 'Sabado', 20000, 'HAB48275'),
(35, 'Domingo', 20000, 'HAB48275'),
(36, 'Lunes', 15000, 'HAB48276'),
(37, 'Martes', 15000, 'HAB48276'),
(38, 'Miercoles', 15000, 'HAB48276'),
(39, 'Jueves', 15000, 'HAB48276'),
(40, 'Viernes', 15000, 'HAB48276'),
(41, 'Sabado', 20000, 'HAB48276'),
(42, 'Domingo', 20000, 'HAB48276'),
(43, 'Lunes', 15000, 'HAB48277'),
(44, 'Martes', 15000, 'HAB48277'),
(45, 'Miercoles', 15000, 'HAB48277'),
(46, 'Jueves', 15000, 'HAB48277'),
(47, 'Viernes', 15000, 'HAB48277'),
(48, 'Sabado', 20000, 'HAB48277'),
(49, 'Domingo', 20000, 'HAB48277');

INSERT INTO CLIENTEESTADO
(ID_CLIENTEESTADO, DESCRIPCION) VALUES
(1, 'Vigente'),
(2,'Bloqueado');

INSERT INTO CLIENTE
(ID_CLIENTE, NOMBRE, EMAIL, TELEFONO, FECHANACIMIENTO, ID_CLIENTEESTADO) VALUES
('CLI001', 'Juan Perez', 'juan.perez@example.com', '990123456', '1975-08-25', 1),
('CLI002', 'Maria Lopez', 'maria.lopez@example.com', '990234567', '1976-12-13', 1),
('CLI003', 'Pedro Rodriguez', 'pedro.rodriguez@example.com', '990345678', '1977-09-03', 1),
('CLI004', 'Ana Martinez', 'ana.martinez@example.com', '990456789', '1979-02-14', 1),
('CLI005', 'Luisa Sanchez', 'luisa.sanchez@example.com', '990567890', '1980-09-22', 1),
('CLI006', 'Carlos Gomez', 'carlos.gomez@example.com', '990678901', '1981-06-15', 1),
('CLI007', 'Laura Fernandez', 'laura.fernandez@example.com', '990789012', '1982-08-31', 1),
('CLI008', 'Javier Ramirez', 'javier.ramirez@example.com', '990890123', '1982-10-03', 1),
('CLI009', 'Sofia Alonso', 'sofia.alonso@example.com', '990901234', '1983-05-18', 1),
('CLI010', 'Diego Herrera', 'diego.herrera@example.com', '990012345', '1983-12-30', 1),
('CLI011', 'Elena Castro', 'elena.castro@example.com', '990123406', '1984-07-19', 1),
('CLI012', 'Manuel Rubio', 'manuel.rubio@example.com', '990234067', '1984-09-22', 1),
('CLI013', 'Carmen Jimenez', 'carmen.jimenez@example.com', '990345078', '1985-10-20', 1),
('CLI014', 'Pablo Diaz', 'pablo.diaz@example.com', '990456089', '1986-04-26', 1),
('CLI015', 'Rocio Navarro', 'rocio.navarro@example.com', '990567190', '1986-11-07', 1),
('CLI016', 'Gonzalo Herrera', 'gonzalo.herrera@example.com', '990678201', '1987-11-11', 1),
('CLI017', 'Raquel Gomez', 'raquel.gomez@example.com', '990789312', '1988-03-12', 1),
('CLI018', 'Alberto Ruiz', 'alberto.ruiz@example.com', '990890423', '1988-07-14', 1),
('CLI019', 'Julia Torres', 'julia.torres@example.com', '990901534', '1989-03-07', 1),
('CLI020', 'Santiago Serrano', 'santiago.serrano@example.com', '990012645', '1990-02-15', 1),
('CLI021', 'Eva Martin', 'eva.martin@example.com', '990123756', '1990-09-08', 1),
('CLI022', 'Daniel Garcia', 'daniel.garcia@example.com', '990234867', '1991-10-03', 1),
('CLI023', 'Patricia Moreno', 'patricia.moreno@example.com', '990345978', '1992-07-08', 1),
('CLI024', 'Roberto Herrera', 'roberto.herrera@example.com', '990456089', '1993-06-28', 1),
('CLI025', 'Beatriz Alvarez', 'beatriz.alvarez@example.com', '990567190', '1994-09-08', 1),
('CLI026', 'Marcos Sanchez', 'marcos.sanchez@example.com', '990678201', '1995-04-17', 1),
('CLI027', 'Natalia Jimenez', 'natalia.jimenez@example.com', '990789312', '1996-11-24', 1),
('CLI028', 'Jorge Lopez', 'jorge.lopez@example.com', '990890423', '1997-08-02', 1),
('CLI029', 'Adriana Gomez', 'adriana.gomez@example.com', '990901534', '1998-01-05', 1),
('CLI030', 'Hector Martinez', 'hector.martinez@example.com', '990012645', '1999-04-05', 1);

INSERT INTO TIEMPORESERVA
(ID_TIEMPORESERVA, DESCRIPCION) VALUES
(1, '3 Horas'),
(2,'12 Horas');

INSERT INTO ESTADORESERVA
(ID_ESTADORESERVA, DESCRIPCION) VALUES
(1, 'Confirmada'),
(2,'Anulada');

INSERT INTO RESERVA
(ID_RESERVA, FECHA, ENTRADA, SALIDA, VALORRESERVA, ID_HABITACION, ID_CLIENTE, ID_EMPLEADO, ID_TIEMPORESERVA, ID_ESTADORESERVA) VALUES
('RES5792586', '2024-01-01', '2024-01-01 14:00:00', '2024-01-01 17:00:00', 45000, 'HAB48271', 'CLI001', 'EMP001', 1, 1),
('RES5792587', '2024-01-02', '2024-01-02 14:00:00', '2024-01-02 17:00:00', 45000, 'HAB48272', 'CLI002', 'EMP002', 1, 1),
('RES5792588', '2024-01-03', '2024-01-03 14:00:00', '2024-01-03 17:00:00', 45000, 'HAB48273', 'CLI003', 'EMP003', 1, 1),
('RES5792589', '2024-01-04', '2024-01-04 14:00:00', '2024-01-04 17:00:00', 45000, 'HAB48274', 'CLI004', 'EMP004', 1, 1),
('RES5792590', '2024-01-05', '2024-01-05 14:00:00', '2024-01-05 17:00:00', 45000, 'HAB48275', 'CLI005', 'EMP005', 1, 1),
('RES5792591', '2024-01-06', '2024-01-06 14:00:00', '2024-01-06 17:00:00', 45000, 'HAB48276', 'CLI006', 'EMP006', 1, 1),
('RES5792592', '2024-01-07', '2024-01-07 14:00:00', '2024-01-07 17:00:00', 45000, 'HAB48277', 'CLI007', 'EMP007', 1, 1),
('RES5792593', '2024-01-08', '2024-01-08 14:00:00', '2024-01-08 17:00:00', 45000, 'HAB48278', 'CLI008', 'EMP008', 1, 1),
('RES5792594', '2024-01-09', '2024-01-09 14:00:00', '2024-01-09 17:00:00', 45000, 'HAB48279', 'CLI009', 'EMP009', 1, 1),
('RES5792595', '2024-01-10', '2024-01-10 14:00:00', '2024-01-10 17:00:00', 45000, 'HAB48280', 'CLI010', 'EMP010', 1, 1),
('RES5792596', '2024-01-11', '2024-01-11 14:00:00', '2024-01-11 17:00:00', 45000, 'HAB48281', 'CLI011', 'EMP011', 1, 1),
('RES5792597', '2024-01-12', '2024-01-12 14:00:00', '2024-01-12 17:00:00', 45000, 'HAB48282', 'CLI012', 'EMP012', 1, 1),
('RES5792598', '2024-01-13', '2024-01-13 14:00:00', '2024-01-13 17:00:00', 45000, 'HAB48283', 'CLI013', 'EMP013', 1, 1),
('RES5792599', '2024-01-14', '2024-01-14 14:00:00', '2024-01-14 17:00:00', 45000, 'HAB48284', 'CLI014', 'EMP014', 1, 2),
('RES5792600', '2024-01-15', '2024-01-15 14:00:00', '2024-01-15 17:00:00', 45000, 'HAB48285', 'CLI015', 'EMP015', 1, 1),
('RES5792601', '2024-01-16', '2024-01-16 14:00:00', '2024-01-16 17:00:00', 45000, 'HAB48286', 'CLI016', 'EMP016', 1, 1),
('RES5792602', '2024-01-17', '2024-01-17 14:00:00', '2024-01-17 17:00:00', 45000, 'HAB48287', 'CLI017', 'EMP017', 1, 1),
('RES5792603', '2024-01-18', '2024-01-18 14:00:00', '2024-01-18 17:00:00', 45000, 'HAB48288', 'CLI018', 'EMP018', 1, 1),
('RES5792604', '2024-01-19', '2024-01-19 14:00:00', '2024-01-19 17:00:00', 45000, 'HAB48289', 'CLI019', 'EMP019', 1, 1),
('RES5792605', '2024-01-20', '2024-01-20 14:00:00', '2024-01-20 17:00:00', 45000, 'HAB48290', 'CLI020', 'EMP020', 1, 1),
('RES5792606', '2024-01-21', '2024-01-21 14:00:00', '2024-01-21 17:00:00', 45000, 'HAB48271', 'CLI021', 'EMP001', 1, 1),
('RES5792607', '2024-01-22', '2024-01-22 14:00:00', '2024-01-22 17:00:00', 45000, 'HAB48272', 'CLI022', 'EMP002', 1, 1),
('RES5792608', '2024-01-23', '2024-01-23 14:00:00', '2024-01-23 17:00:00', 45000, 'HAB48273', 'CLI023', 'EMP003', 1, 1),
('RES5792609', '2024-01-24', '2024-01-24 14:00:00', '2024-01-24 17:00:00', 45000, 'HAB48274', 'CLI024', 'EMP004', 1, 2),
('RES5792610', '2024-01-25', '2024-01-25 14:00:00', '2024-01-25 17:00:00', 45000, 'HAB48275', 'CLI025', 'EMP005', 1, 1),
('RES5792611', '2024-01-26', '2024-01-26 14:00:00', '2024-01-26 17:00:00', 45000, 'HAB48276', 'CLI026', 'EMP006', 1, 1),
('RES5792612', '2024-01-27', '2024-01-27 14:00:00', '2024-01-27 17:00:00', 45000, 'HAB48277', 'CLI027', 'EMP007', 1, 1),
('RES5792613', '2024-01-28', '2024-01-28 14:00:00', '2024-01-28 17:00:00', 45000, 'HAB48278', 'CLI028', 'EMP008', 1, 1),
('RES5792614', '2024-01-29', '2024-01-29 14:00:00', '2024-01-29 17:00:00', 45000, 'HAB48279', 'CLI029', 'EMP009', 1, 1),
('RES5792615', '2024-01-30', '2024-01-30 14:00:00', '2024-01-30 17:00:00', 45000, 'HAB48280', 'CLI030', 'EMP010', 1, 1),
('RES5792616', '2024-01-31', '2024-01-31 14:00:00', '2024-01-31 17:00:00', 45000, 'HAB48271', 'CLI004', 'EMP011', 1, 1),
('RES5792617', '2024-02-01', '2024-02-01 14:00:00', '2024-02-01 17:00:00', 45000, 'HAB48272', 'CLI005', 'EMP012', 1, 1),
('RES5792618', '2024-02-02', '2024-02-02 14:00:00', '2024-02-02 17:00:00', 45000, 'HAB48273', 'CLI006', 'EMP013', 1, 2),
('RES5792619', '2024-02-03', '2024-02-03 14:00:00', '2024-02-03 17:00:00', 45000, 'HAB48274', 'CLI007', 'EMP014', 1, 1),
('RES5792620', '2024-02-04', '2024-02-04 14:00:00', '2024-02-04 17:00:00', 45000, 'HAB48275', 'CLI008', 'EMP015', 1, 1),
('RES5792621', '2024-02-05', '2024-02-05 14:00:00', '2024-02-05 17:00:00', 45000, 'HAB48276', 'CLI009', 'EMP016', 1, 1),
('RES5792622', '2024-02-06', '2024-02-06 14:00:00', '2024-02-06 17:00:00', 45000, 'HAB48277', 'CLI010', 'EMP017', 1, 1),
('RES5792623', '2024-02-07', '2024-02-07 14:00:00', '2024-02-07 17:00:00', 45000, 'HAB48278', 'CLI011', 'EMP018', 1, 1),
('RES5792624', '2024-02-08', '2024-02-08 14:00:00', '2024-02-08 17:00:00', 45000, 'HAB48279', 'CLI012', 'EMP019', 1, 1),
('RES5792625', '2024-02-09', '2024-02-09 14:00:00', '2024-02-09 17:00:00', 45000, 'HAB48280', 'CLI013', 'EMP020', 1, 1),
('RES5792626', '2024-02-10', '2024-02-10 14:00:00', '2024-02-10 17:00:00', 45000, 'HAB48271', 'CLI014', 'EMP001', 1, 1),
('RES5792627', '2024-02-11', '2024-02-11 14:00:00', '2024-02-11 17:00:00', 45000, 'HAB48272', 'CLI009', 'EMP002', 1, 1),
('RES5792628', '2024-02-12', '2024-02-12 14:00:00', '2024-02-12 17:00:00', 45000, 'HAB48273', 'CLI010', 'EMP003', 1, 1),
('RES5792629', '2024-02-13', '2024-02-13 14:00:00', '2024-02-13 17:00:00', 45000, 'HAB48274', 'CLI011', 'EMP004', 1, 1),
('RES5792630', '2024-02-14', '2024-02-14 14:00:00', '2024-02-14 17:00:00', 45000, 'HAB48275', 'CLI012', 'EMP005', 1, 1),
('RES5792631', '2024-02-15', '2024-02-15 14:00:00', '2024-02-15 17:00:00', 45000, 'HAB48276', 'CLI013', 'EMP006', 1, 1),
('RES5792632', '2024-02-16', '2024-02-16 14:00:00', '2024-02-16 17:00:00', 45000, 'HAB48277', 'CLI014', 'EMP007', 1, 1),
('RES5792633', '2024-02-17', '2024-02-17 14:00:00', '2024-02-17 17:00:00', 45000, 'HAB48278', 'CLI015', 'EMP008', 1, 1),
('RES5792634', '2024-02-18', '2024-02-18 14:00:00', '2024-02-18 17:00:00', 45000, 'HAB48279', 'CLI016', 'EMP009', 1, 1),
('RES5792635', '2024-02-19', '2024-02-19 14:00:00', '2024-02-19 17:00:00', 45000, 'HAB48280', 'CLI017', 'EMP010', 1, 1),
('RES5792636', '2024-02-20', '2024-02-20 14:00:00', '2024-02-20 17:00:00', 45000, 'HAB48271', 'CLI018', 'EMP011', 1, 1),
('RES5792637', '2024-02-21', '2024-02-21 14:00:00', '2024-02-21 17:00:00', 45000, 'HAB48272', 'CLI019', 'EMP012', 1, 1),
('RES5792638', '2024-02-22', '2024-02-22 14:00:00', '2024-02-22 17:00:00', 45000, 'HAB48273', 'CLI020', 'EMP013', 1, 1),
('RES5792639', '2024-02-23', '2024-02-23 14:00:00', '2024-02-23 17:00:00', 45000, 'HAB48274', 'CLI021', 'EMP014', 1, 1),
('RES5792640', '2024-02-24', '2024-02-24 14:00:00', '2024-02-24 17:00:00', 45000, 'HAB48275', 'CLI002', 'EMP015', 1, 1),
('RES5792641', '2024-02-25', '2024-02-25 14:00:00', '2024-02-25 17:00:00', 45000, 'HAB48276', 'CLI003', 'EMP016', 1, 1),
('RES5792642', '2024-02-26', '2024-02-26 14:00:00', '2024-02-26 17:00:00', 45000, 'HAB48277', 'CLI004', 'EMP017', 1, 1),
('RES5792643', '2024-02-27', '2024-02-27 14:00:00', '2024-02-27 17:00:00', 45000, 'HAB48278', 'CLI005', 'EMP018', 1, 1),
('RES5792644', '2024-02-28', '2024-02-28 14:00:00', '2024-02-28 17:00:00', 45000, 'HAB48279', 'CLI006', 'EMP019', 1, 1),
('RES5792645', '2024-02-29', '2024-02-29 14:00:00', '2024-02-29 17:00:00', 45000, 'HAB48280', 'CLI007', 'EMP020', 1, 1),
('RES5792646', '2024-03-01', '2024-03-01 14:00:00', '2024-03-01 17:00:00', 45000, 'HAB48271', 'CLI008', 'EMP001', 1, 2),
('RES5792647', '2024-03-02', '2024-03-02 14:00:00', '2024-03-02 17:00:00', 45000, 'HAB48272', 'CLI009', 'EMP002', 1, 1),
('RES5792648', '2024-03-03', '2024-03-03 14:00:00', '2024-03-03 17:00:00', 45000, 'HAB48273', 'CLI010', 'EMP003', 1, 1),
('RES5792649', '2024-03-04', '2024-03-04 14:00:00', '2024-03-04 17:00:00', 45000, 'HAB48274', 'CLI011', 'EMP004', 1, 1),
('RES5792650', '2024-03-05', '2024-03-05 14:00:00', '2024-03-05 17:00:00', 45000, 'HAB48275', 'CLI012', 'EMP005', 1, 1),
('RES5792651', '2024-03-06', '2024-03-06 14:00:00', '2024-03-06 17:00:00', 45000, 'HAB48276', 'CLI013', 'EMP006', 1, 1),
('RES5792652', '2024-03-07', '2024-03-07 14:00:00', '2024-03-07 17:00:00', 45000, 'HAB48277', 'CLI014', 'EMP007', 1, 1),
('RES5792653', '2024-03-08', '2024-03-08 14:00:00', '2024-03-08 17:00:00', 45000, 'HAB48278', 'CLI015', 'EMP008', 1, 1),
('RES5792654', '2024-03-09', '2024-03-09 14:00:00', '2024-03-09 17:00:00', 45000, 'HAB48279', 'CLI016', 'EMP009', 1, 1),
('RES5792655', '2024-03-10', '2024-03-10 14:00:00', '2024-03-10 17:00:00', 45000, 'HAB48280', 'CLI017', 'EMP010', 1, 1),
('RES5792656', '2024-03-11', '2024-03-11 14:00:00', '2024-03-11 17:00:00', 45000, 'HAB48271', 'CLI018', 'EMP011', 1, 1),
('RES5792657', '2024-03-12', '2024-03-12 14:00:00', '2024-03-12 17:00:00', 45000, 'HAB48272', 'CLI019', 'EMP012', 1, 1),
('RES5792658', '2024-03-13', '2024-03-13 14:00:00', '2024-03-13 17:00:00', 45000, 'HAB48273', 'CLI020', 'EMP013', 1, 1),
('RES5792659', '2024-03-14', '2024-03-14 14:00:00', '2024-03-14 17:00:00', 45000, 'HAB48274', 'CLI021', 'EMP014', 1, 1),
('RES5792660', '2024-03-15', '2024-03-15 14:00:00', '2024-03-15 17:00:00', 45000, 'HAB48275', 'CLI022', 'EMP015', 1, 1),
('RES5792661', '2024-03-16', '2024-03-16 14:00:00', '2024-03-16 17:00:00', 45000, 'HAB48276', 'CLI023', 'EMP016', 1, 1),
('RES5792662', '2024-03-17', '2024-03-17 14:00:00', '2024-03-17 17:00:00', 45000, 'HAB48277', 'CLI024', 'EMP017', 1, 1),
('RES5792663', '2024-03-18', '2024-03-18 14:00:00', '2024-03-18 17:00:00', 45000, 'HAB48278', 'CLI025', 'EMP018', 1, 1),
('RES5792664', '2024-03-19', '2024-03-19 14:00:00', '2024-03-19 17:00:00', 45000, 'HAB48279', 'CLI026', 'EMP019', 1, 1),
('RES5792665', '2024-03-20', '2024-03-20 14:00:00', '2024-03-20 17:00:00', 45000, 'HAB48280', 'CLI027', 'EMP020', 1, 1),
('RES5792666', '2024-03-21', '2024-03-21 14:00:00', '2024-03-21 17:00:00', 45000, 'HAB48271', 'CLI028', 'EMP001', 1, 1),
('RES5792667', '2024-03-22', '2024-03-22 14:00:00', '2024-03-22 17:00:00', 45000, 'HAB48272', 'CLI029', 'EMP002', 1, 1),
('RES5792668', '2024-03-23', '2024-03-23 14:00:00', '2024-03-23 17:00:00', 45000, 'HAB48273', 'CLI030', 'EMP003', 1, 1),
('RES5792669', '2024-03-24', '2024-03-24 14:00:00', '2024-03-24 17:00:00', 45000, 'HAB48274', 'CLI004', 'EMP004', 1, 1),
('RES5792670', '2024-03-25', '2024-03-25 14:00:00', '2024-03-25 17:00:00', 45000, 'HAB48275', 'CLI005', 'EMP005', 1, 1),
('RES5792671', '2024-03-26', '2024-03-26 14:00:00', '2024-03-26 17:00:00', 45000, 'HAB48276', 'CLI006', 'EMP006', 1, 1),
('RES5792672', '2024-03-27', '2024-03-27 14:00:00', '2024-03-27 17:00:00', 45000, 'HAB48277', 'CLI007', 'EMP007', 1, 1),
('RES5792673', '2024-03-28', '2024-03-28 14:00:00', '2024-03-28 17:00:00', 45000, 'HAB48278', 'CLI008', 'EMP008', 1, 1),
('RES5792674', '2024-03-29', '2024-03-29 14:00:00', '2024-03-29 17:00:00', 45000, 'HAB48279', 'CLI009', 'EMP009', 1, 2),
('RES5792675', '2024-03-30', '2024-03-30 14:00:00', '2024-03-30 17:00:00', 45000, 'HAB48280', 'CLI010', 'EMP010', 1, 1),
('RES5792676', '2024-03-31', '2024-03-31 14:00:00', '2024-03-31 17:00:00', 45000, 'HAB48271', 'CLI011', 'EMP011', 1, 1),
('RES5792677', '2024-04-01', '2024-04-01 14:00:00', '2024-04-01 17:00:00', 45000, 'HAB48272', 'CLI012', 'EMP012', 1, 1),
('RES5792678', '2024-04-02', '2024-04-02 14:00:00', '2024-04-02 17:00:00', 45000, 'HAB48273', 'CLI013', 'EMP013', 1, 1),
('RES5792679', '2024-04-03', '2024-04-03 14:00:00', '2024-04-03 17:00:00', 45000, 'HAB48274', 'CLI014', 'EMP014', 1, 1),
('RES5792680', '2024-04-04', '2024-04-04 14:00:00', '2024-04-04 17:00:00', 45000, 'HAB48275', 'CLI015', 'EMP015', 1, 1),
('RES5792681', '2024-04-05', '2024-04-05 14:00:00', '2024-04-05 17:00:00', 45000, 'HAB48276', 'CLI016', 'EMP016', 1, 2),
('RES5792682', '2024-04-06', '2024-04-06 14:00:00', '2024-04-06 17:00:00', 45000, 'HAB48277', 'CLI017', 'EMP017', 1, 1),
('RES5792683', '2024-04-07', '2024-04-07 14:00:00', '2024-04-07 17:00:00', 45000, 'HAB48278', 'CLI018', 'EMP018', 1, 1),
('RES5792684', '2024-04-08', '2024-04-08 14:00:00', '2024-04-08 17:00:00', 45000, 'HAB48279', 'CLI019', 'EMP019', 1, 1),
('RES5792685', '2024-04-09', '2024-04-09 14:00:00', '2024-04-09 17:00:00', 45000, 'HAB48280', 'CLI020', 'EMP020', 1, 1);

INSERT INTO PAGO
(ID_PAGO, NUMBOLETA, FECHAPAGO, ID_RESERVA, ID_MEDIODEPAGO) VALUES
('PG53981207', 'BL583927', '2023-12-01 00:00:00', 'RES5792586', 1),
('PG68504329', 'BL102354', '2023-12-02 00:00:00', 'RES5792587', 1),
('PG20764918', 'BL749821', '2023-12-03 00:00:00', 'RES5792588', 2),
('PG93671245', 'BL436209', '2023-12-04 00:00:00', 'RES5792589', 1),
('PG40182756', 'BL875431', '2023-12-05 00:00:00', 'RES5792590', 2),
('PG87291630', 'BL296017', '2023-12-06 00:00:00', 'RES5792591', 1),
('PG36502498', 'BL510837', '2023-12-07 00:00:00', 'RES5792592', 1),
('PG14890576', 'BL673592', '2023-12-08 00:00:00', 'RES5792593', 1),
('PG75240183', 'BL925810', '2023-12-09 00:00:00', 'RES5792594', 2),
('PG62983715', 'BL381645', '2023-12-10 00:00:00', 'RES5792595', 2),
('PG31508472', 'BL207936', '2023-12-11 00:00:00', 'RES5792596', 2),
('PG49021637', 'BL864129', '2023-12-12 00:00:00', 'RES5792597', 2),
('PG58637192', 'BL540782', '2023-12-13 00:00:00', 'RES5792598', 2),
('PG92370514', 'BL316890', '2023-12-14 00:00:00', 'RES5792599', 2),
('PG81742960', 'BL492607', '2023-12-15 00:00:00', 'RES5792600', 2),
('PG70418593', 'BL708513', '2023-12-16 00:00:00', 'RES5792601', 2),
('PG19862470', 'BL837460', '2023-12-17 00:00:00', 'RES5792602', 2),
('PG27091836', 'BL254387', '2023-12-18 00:00:00', 'RES5792603', 2),
('PG62508934', 'BL671934', '2023-12-19 00:00:00', 'RES5792604', 2),
('PG43890721', 'BL923071', '2023-12-20 00:00:00', 'RES5792605', 1),
('PG17389025', 'BL105278', '2023-12-21 00:00:00', 'RES5792606', 1),
('PG87924601', 'BL639814', '2023-12-22 00:00:00', 'RES5792607', 1),
('PG54781203', 'BL785302', '2023-12-23 00:00:00', 'RES5792608', 1),
('PG91638520', 'BL421506', '2023-12-24 00:00:00', 'RES5792609', 1),
('PG32957184', 'BL596438', '2023-12-25 00:00:00', 'RES5792610', 1),
('PG60274381', 'BL340192', '2023-12-26 00:00:00', 'RES5792611', 1),
('PG48513629', 'BL874051', '2023-12-27 00:00:00', 'RES5792612', 2),
('PG80319276', 'BL158937', '2023-12-28 00:00:00', 'RES5792613', 1),
('PG21856749', 'BL720365', '2023-12-29 00:00:00', 'RES5792614', 2),
('PG35749261', 'BL483961', '2023-12-30 00:00:00', 'RES5792615', 1),
('PG69470825', 'BL269348', '2023-12-31 00:00:00', 'RES5792616', 1),
('PG81025736', 'BL536072', '2024-01-01 00:00:00', 'RES5792617', 1),
('PG47639812', 'BL927814', '2024-01-02 00:00:00', 'RES5792618', 2),
('PG93561027', 'BL705821', '2024-01-03 00:00:00', 'RES5792619', 2),
('PG72839105', 'BL348206', '2024-01-04 00:00:00', 'RES5792620', 2),
('PG20479158', 'BL612475', '2024-01-05 00:00:00', 'RES5792621', 2),
('PG81637254', 'BL409827', '2024-01-06 00:00:00', 'RES5792622', 2),
('PG51903476', 'BL781639', '2024-01-07 00:00:00', 'RES5792623', 2),
('PG36725841', 'BL540367', '2024-01-08 00:00:00', 'RES5792624', 2),
('PG90248761', 'BL197583', '2024-01-09 00:00:00', 'RES5792625', 2),
('PG45018723', 'BL832049', '2024-01-10 00:00:00', 'RES5792626', 2),
('PG68392475', 'BL165740', '2024-01-11 00:00:00', 'RES5792627', 2),
('PG29714863', 'BL937208', '2024-01-12 00:00:00', 'RES5792628', 2),
('PG74129586', 'BL658243', '2024-01-13 00:00:00', 'RES5792629', 1),
('PG53168294', 'BL294781', '2024-01-14 00:00:00', 'RES5792630', 1),
('PG86937421', 'BL508623', '2024-01-15 00:00:00', 'RES5792631', 1),
('PG64509317', 'BL426189', '2024-01-16 00:00:00', 'RES5792632', 1),
('PG18276490', 'BL783051', '2024-01-17 00:00:00', 'RES5792633', 1),
('PG72401639', 'BL201876', '2024-01-18 00:00:00', 'RES5792634', 1),
('PG30587249', 'BL694287', '2024-01-19 00:00:00', 'RES5792635', 1),
('PG97836520', 'BL357906', '2024-01-20 00:00:00', 'RES5792636', 2),
('PG63852170', 'BL810742', '2024-01-21 00:00:00', 'RES5792637', 1),
('PG51273986', 'BL572349', '2024-01-22 00:00:00', 'RES5792638', 2),
('PG46789035', 'BL309487', '2024-01-23 00:00:00', 'RES5792639', 1),
('PG32614897', 'BL498167', '2024-01-24 00:00:00', 'RES5792640', 1),
('PG80425739', 'BL630958', '2024-01-25 00:00:00', 'RES5792641', 1),
('PG58921643', 'BL865302', '2024-01-26 00:00:00', 'RES5792642', 2),
('PG97530682', 'BL742896', '2024-01-27 00:00:00', 'RES5792643', 2),
('PG34867025', 'BL213759', '2024-01-28 00:00:00', 'RES5792644', 2),
('PG23679481', 'BL957183', '2024-01-29 00:00:00', 'RES5792645', 2),
('PG67281459', 'BL460832', '2024-01-30 00:00:00', 'RES5792646', 2),
('PG79036142', 'BL128345', '2024-01-31 00:00:00', 'RES5792647', 2),
('PG81349675', 'BL674912', '2024-02-01 00:00:00', 'RES5792648', 2),
('PG42597863', 'BL591830', '2024-02-02 00:00:00', 'RES5792649', 2),
('PG16793280', 'BL387401', '2024-02-03 00:00:00', 'RES5792650', 2),
('PG90451876', 'BL245387', '2024-02-04 00:00:00', 'RES5792651', 2),
('PG53824769', 'BL916543', '2024-02-05 00:00:00', 'RES5792652', 2),
('PG70125938', 'BL708235', '2024-02-06 00:00:00', 'RES5792653', 1),
('PG29784635', 'BL539071', '2024-02-07 00:00:00', 'RES5792654', 1),
('PG68203519', 'BL842906', '2024-02-08 00:00:00', 'RES5792655', 2),
('PG51047932', 'BL176294', '2024-02-09 00:00:00', 'RES5792656', 1),
('PG34780625', 'BL693210', '2024-02-10 00:00:00', 'RES5792657', 2),
('PG82945761', 'BL482673', '2024-02-11 00:00:00', 'RES5792658', 1),
('PG64192785', 'BL725094', '2024-02-12 00:00:00', 'RES5792659', 1),
('PG27539046', 'BL309218', '2024-02-13 00:00:00', 'RES5792660', 1),
('PG80647129', 'BL854726', '2024-02-14 00:00:00', 'RES5792661', 2),
('PG39857416', 'BL630914', '2024-02-15 00:00:00', 'RES5792662', 2),
('PG18756034', 'BL917526', '2024-02-16 00:00:00', 'RES5792663', 2),
('PG53064792', 'BL285074', '2024-02-17 00:00:00', 'RES5792664', 2),
('PG49283761', 'BL540362', '2024-02-18 00:00:00', 'RES5792665', 2),
('PG71925386', 'BL768591', '2024-02-19 00:00:00', 'RES5792666', 2),
('PG36570891', 'BL496287', '2024-02-20 00:00:00', 'RES5792667', 2),
('PG84306219', 'BL312895', '2024-02-21 00:00:00', 'RES5792668', 2),
('PG92683047', 'BL659437', '2024-02-22 00:00:00', 'RES5792669', 2),
('PG20718496', 'BL834029', '2024-02-23 00:00:00', 'RES5792670', 2),
('PG68543971', 'BL257941', '2024-02-24 00:00:00', 'RES5792671', 2),
('PG51270398', 'BL609348', '2024-02-25 00:00:00', 'RES5792672', 1),
('PG36479582', 'BL473690', '2024-02-26 00:00:00', 'RES5792673', 1),
('PG94182603', 'BL825176', '2024-02-27 00:00:00', 'RES5792674', 1),
('PG73856042', 'BL394670', '2024-02-28 00:00:00', 'RES5792675', 1),
('PG89027531', 'BL742159', '2024-02-29 00:00:00', 'RES5792676', 1),
('PG61520879', 'BL568341', '2024-03-01 00:00:00', 'RES5792677', 2),
('PG47906382', 'BL201587', '2024-03-02 00:00:00', 'RES5792678', 1),
('PG72531680', 'BL915803', '2024-03-03 00:00:00', 'RES5792679', 2),
('PG24897316', 'BL370294', '2024-03-04 00:00:00', 'RES5792680', 1),
('PG80369514', 'BL654028', '2024-03-05 00:00:00', 'RES5792681', 1),
('PG59648721', 'BL829716', '2024-03-06 00:00:00', 'RES5792682', 1),
('PG18793245', 'BL493786', '2024-03-07 00:00:00', 'RES5792683', 2),
('PG37286591', 'BL215976', '2024-03-08 00:00:00', 'RES5792684', 2),
('PG96502318', 'BL687493', '2024-03-09 00:00:00', 'RES5792685', 2);