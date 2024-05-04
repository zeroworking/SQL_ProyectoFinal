USE motelapp;

INSERT INTO MEDIODEPAGO
(ID_MEDIODEPAGO, DESCRIPCION) VALUES 
(1, 'Transferencia'),
(2, 'Webpay');

INSERT INTO MOTEL
(ID_MOTEL, NOMBRE, DIRECCION, TELEFONO) VALUES
('MOTEL001', 'El Oasis', 'Avenida Providencia 1234 - Providencia', '220594837'),
('MOTEL002', 'Luna de Miel', 'Calle Las Condes 5678 - Las Condes', '221308495'),
('MOTEL003', 'El Refugio', 'Pasaje Ñuñoa 910 - Ñuñoa', '220976354'),
('MOTEL004', 'Paraíso Secreto', 'Avenida La Florida 246 - La Florida', '220158473'),
('MOTEL005', 'La Cabaña', 'Calle Maipú 3456 - Maipú', '222057139'),
('MOTEL006', 'El Escondite', 'Avenida Pedro de Valdivia 789 - Ñuñoa', '223098457'),
('MOTEL007', 'Noches de Pasión', 'Pasaje Bellavista 123 - Recoleta', '220635984'),
('MOTEL008', 'El Rincón del Amor', 'Calle San Miguel 456 - San Miguel', '222670943'),
('MOTEL009', 'Sueños Prohibidos', 'Avenida Kennedy 7890 - Las Condes', '221840795'),
('MOTEL010', 'La Posada Romántica', 'Pasaje Puente Alto 321 - Puente Alto', '222405198'),
('MOTEL011', 'El Encuentro', 'Calle Peñalolén 567 - Peñalolén', '223705819'),
('MOTEL012', 'El Jardín del Deseo', 'Avenida Colina 890 - Colina', '220974531'),
('MOTEL013', 'El Mirador', 'Pasaje Providencia 234 - Providencia', '223564098'),
('MOTEL014', 'Amorío Hotel', 'Calle La Cisterna 678 - La Cisterna', '222630185'),
('MOTEL015', 'La Morada Intima', 'Avenida Vitacura 9012 - Vitacura', '221783095'),
('MOTEL016', 'El Refugio del Amante', 'Pasaje Macul 345 - Macul', '222407518'),
('MOTEL017', 'El Paraíso del Romance', 'Calle La Reina 6789 - La Reina', '220183947'),
('MOTEL018', 'La Guarida del Amor', 'Avenida San Bernardo 1234 - San Bernardo', '223890745'),
('MOTEL019', 'El Cielo en la Tierra', 'Pasaje Pudahuel 567 - Pudahuel', '221057634'),
('MOTEL020', 'La Estancia del Placer', 'Calle La Pintana 890 - La Pintana', '222306579');

INSERT INTO empleado (ID_EMPLEADO, NOMBRE, ID_MOTEL) VALUES
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