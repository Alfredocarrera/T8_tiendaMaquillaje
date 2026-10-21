
-- DML: INSERCIÓN DE DATOS (20 REGISTROS POR TABLA)

-- PASO 1: Tablas Independientes

-- 1. Insertar en 'productos' (20 registros)
INSERT INTO productos (nombre_producto, categoria, precio, stock, descripcion_producto) VALUES
('Base Líquida Matte', 'cosméticos', 18.50, 50, 'Base de alta cobertura acabado matte'),
('Labial Líquido Indeleble', 'cosméticos', 12.00, 80, 'Labial de larga duración tono rojo intenso'),
('Sombra de Ojos Nude', 'cosméticos', 25.00, 30, 'Paleta con 12 tonos neutros'),
('Corrector de Ojeras', 'cosméticos', 10.50, 60, 'Corrector líquido iluminador'),
('Polvo Traslúcido', 'cosméticos', 15.00, 45, 'Polvo fijador control brillo'),
('Crema Hidratante Facial', 'cuidado_piel', 22.00, 40, 'Crema con ácido hialurónico para piel seca'),
('Sérum Facial Vitamina C', 'cuidado_piel', 28.50, 35, 'Sérum antioxidante iluminador'),
('Protector Solar FPS 50', 'cuidado_piel', 20.00, 70, 'Protector solar toque seco'),
('Mascarilla Exfoliante', 'cuidado_piel', 14.00, 50, 'Mascarilla limpiadora de carbón activado'),
('Contorno de Ojos', 'cuidado_piel', 19.00, 25, 'Gel reductor de bolsas y ojeras'),
('Perfume Floral Rose', 'perfumes', 45.00, 20, 'Fragancia con notas de rosa y jazmín'),
('Perfume Cítrico Fresh', 'perfumes', 42.00, 25, 'Fragancia fresca con notas de limón y bergamota'),
('Perfume Amaderado Night', 'perfumes', 55.00, 15, 'Fragancia elegante nocturna'),
('Loción Corporal Perfumada', 'perfumes', 18.00, 60, 'Crema corporal aroma vainilla'),
('Mini Perfume de Bolsillo', 'perfumes', 15.00, 90, 'Presentación portátil de viaje'),
('Set de Brochas Profesional', 'accesorios', 30.00, 40, 'Kit de 12 brochas pelo sintético'),
('Esponja de Maquillaje Beauty', 'accesorios', 6.50, 120, 'Esponja suave sin látex'),
('Rizador de Pestañas', 'accesorios', 8.00, 85, 'Rizador metálico con almohadilla de silicón'),
('Cosmetiquera de Viaje', 'accesorios', 16.00, 50, 'Bolso organizador impermeable'),
('Espejo con Luz LED', 'accesorios', 35.00, 30, 'Espejo portátil recargable');

-- 2. Insertar en 'proveedores' (20 registros)

INSERT INTO proveedores (nombre_empresa, nombre_contacto, telefono, direccion) VALUES
('Cosméticos Globales S.A.', 'María Gómez', '555-0101', 'Zona 1, Ciudad de Guatemala'),
('Belleza Natural S.A.', 'Carlos Ruiz', '555-0102', 'Zona 4, Ciudad de Guatemala'),
('Fragancias del Mundo', 'Ana López', '555-0103', 'Zona 10, Ciudad de Guatemala'),
('Accesorios Trendy', 'Jorge Pérez', '555-0104', 'Zona 9, Ciudad de Guatemala'),
('Skincare Pro S.A.', 'Lucía Torres', '555-0105', 'Zona 14, Ciudad de Guatemala'),
('Distribuidoraメイク (Make)', 'Kenji Sato', '555-0106', 'Zona 13, Ciudad de Guatemala'),
('Importadora Estética', 'Sofía Morales', '555-0107', 'Zona 5, Ciudad de Guatemala'),
('Laboratorios Dermica', 'Pedro Castillo', '555-0108', 'Zona 7, Ciudad de Guatemala'),
('Aromas y Estilo', 'Carmen Ortiz', '555-0109', 'Zona 11, Ciudad de Guatemala'),
('Proveedora de Lujo', 'Roberto Méndez', '555-0110', 'Zona 15, Ciudad de Guatemala'),
('Cosméticos Económicos S.A.', 'Elena Vargas', '555-0111', 'Zona 3, Ciudad de Guatemala'),
('Piel Sabe', 'Mario Castro', '555-0112', 'Zona 12, Ciudad de Guatemala'),
('Essence Labs', 'Claudia Silva', '555-0113', 'Zona 6, Ciudad de Guatemala'),
('Glamour Supply', 'Fernando Ramos', '555-0114', 'Zona 2, Ciudad de Guatemala'),
('Todo Makeup', 'Gabriela Herrera', '555-0115', 'Zona 16, Ciudad de Guatemala'),
('Innovación Cosmética', 'Ricardo Navarro', '555-0116', 'Carretera a El Salvador'),
('Belleza Exprés', 'Patricia Vega', '555-0117', 'Mixco, Guatemala'),
('Golden Glow S.A.', 'Héctor Jiménez', '555-0118', 'Villa Nueva, Guatemala'),
('Natural Care Corp', 'Daniela Cruz', '555-0119', 'San José Pinula'),
('Excellence Brands', 'Esteban Rojas', '555-0120', 'Zona 4 de Mixco');

-- 3. Insertar en 'empleados' (20 registros)

INSERT INTO empleados (nombre_empleado, fecha_contratacion, puesto_trabajo, area) VALUES
('Andrea Castillo', '2023-01-15 08:00:00', 'Vendedora', 'venta'),
('Luis Fernando', '2023-02-20 08:00:00', 'Encargado de Bodega', 'bodega'),
('Mónica Sosa', '2023-03-10 09:00:00', 'Administradora', 'administración'),
('Diego Armas', '2023-04-05 08:00:00', 'Vendedor', 'venta'),
('Valeria Juárez', '2023-05-12 08:00:00', 'Cajera', 'venta'),
('Estuardo Morales', '2023-06-01 08:00:00', 'Auxiliar de Bodega', 'bodega'),
('Katerin Pineda', '2023-07-18 09:00:00', 'Supervisora', 'administración'),
('Kevin Orellana', '2023-08-22 08:00:00', 'Vendedor', 'venta'),
('Brenda Mendoza', '2023-09-14 08:00:00', 'Vendedora', 'venta'),
('Sergio Ramírez', '2023-10-10 08:00:00', 'Bodeguero', 'bodega'),
('Daniela Flores', '2023-11-05 09:00:00', 'Contadora', 'administración'),
('Mauricio Cifuentes', '2024-01-10 08:00:00', 'Vendedor', 'venta'),
('Paola Estrada', '2024-01-15 08:00:00', 'Vendedora', 'venta'),
('Alejandro Tzi', '2024-02-01 08:00:00', 'Auxiliar', 'bodega'),
('Fabiola Reyes', '2024-02-20 09:00:00', 'Gerente', 'administración'),
('Josué Lémus', '2024-03-01 08:00:00', 'Vendedor', 'venta'),
('Karen Escobar', '2024-03-15 08:00:00', 'Cajera', 'venta'),
('Manuel Choc', '2024-04-01 08:00:00', 'Bodeguero', 'bodega'),
('Saraí Acuña', '2024-04-10 08:00:00', 'Asistente', 'administración'),
('Cristian Barrientos', '2024-05-02 08:00:00', 'Vendedor', 'venta');

-- 4. Insertar en 'clientes' (20 registros)

INSERT INTO clientes (nombre_cliente, correo_electronico, direccion_cliente, numero_telefono) VALUES
('Mariana López', 'mariana@gmail.com', 'Zona 1, Ciudad', '5012-3456'),
('Carlos Mendoza', 'carlos@yahoo.com', 'Zona 4, Ciudad', '5123-4567'),
('Sofía Ramírez', 'sofia@hotmail.com', 'Zona 10, Ciudad', '5234-5678'),
('Alejandro Pérez', 'alejandro@gmail.com', 'Zona 9, Ciudad', '5345-6789'),
('Lucía González', 'lucia@gmail.com', 'Zona 14, Ciudad', '5456-7890'),
('David Morales', 'david@outlook.com', 'Zona 5, Ciudad', '5567-8901'),
('Gabriela Castillo', 'gaby@gmail.com', 'Zona 7, Ciudad', '5678-9012'),
('Fernando Ruiz', 'fernando@yahoo.com', 'Zona 11, Ciudad', '5789-0123'),
('Carmen Herrera', 'carmen@gmail.com', 'Zona 15, Ciudad', '5890-1234'),
('Jorge Vargas', 'jorge@hotmail.com', 'Mixco', '5901-2345'),
('Ana Sofía Cruz', 'anasofia@gmail.com', 'Villa Nueva', '5011-2233'),
('Héctor Navas', 'hector@gmail.com', 'Carretera al Salvador', '5122-3344'),
('Claudia Meléndez', 'claudia@yahoo.com', 'Zona 13', '5233-4455'),
('Roberto Sosa', 'roberto@outlook.com', 'Zona 12', '5344-5566'),
('Paola Monzón', 'paola@gmail.com', 'Zona 6', '5455-6677'),
('Esteban Fuentes', 'esteban@gmail.com', 'Zona 2', '5566-7788'),
('Natalia Rivas', 'natalia@hotmail.com', 'San José Pinula', '5677-8899'),
('Ricardo Beltrán', 'ricardo@yahoo.com', 'Mixco', '5788-9900'),
('Valeria Duarte', 'valeria@gmail.com', 'Zona 10', '5899-0011'),
('Manuel Arriaza', 'manuel@gmail.com', 'Zona 9', '5900-1122');


-- PASO 2: Tablas Dependientes 

-- 5. Insertar en 'detalle_productos' (20 registros asociados del 1 al 20)

INSERT INTO detalle_productos (tipo, tono_color, tipo_piel, tipo_aroma, tamaño_producto, componentes_principales, materiales, fecha_caducidad, productos_id_producto) VALUES
('Base', 'Beige Claro', 'Mixta', NULL, '30ml', 'Ácido Hialurónico, Agua', NULL, '2027-12-31', 1),
('Labial', 'Rojo Pasión', NULL, NULL, '5ml', 'Cera de abeja, Pigmentos', NULL, '2028-06-30', 2),
('Sombra', 'Tonos Tierra', NULL, NULL, '15g', 'Talco, Mica', NULL, '2027-09-15', 3),
('Corrector', 'Medio', 'Todo tipo', NULL, '8ml', 'Vitamina E', NULL, '2028-01-20', 4),
('Polvo', 'Translúcido', 'Grasa', NULL, '20g', 'Sílice', NULL, '2029-03-10', 5),
(NULL, NULL, 'Seca', NULL, '50ml', 'Ácido Hialurónico, Glicerina', NULL, '2027-11-01', 6),
(NULL, NULL, 'Todo tipo', NULL, '30ml', 'Vitamina C pura', NULL, '2027-05-15', 7),
(NULL, NULL, 'Sensible', NULL, '60ml', 'Óxido de Zinc', NULL, '2028-08-12', 8),
(NULL, NULL, 'Grasa', NULL, '100g', 'Carbón activado, Arcilla', NULL, '2028-10-05', 9),
(NULL, NULL, 'Todo tipo', NULL, '15ml', 'Cafeína, Péptidos', NULL, '2027-12-01', 10),
(NULL, NULL, NULL, 'Floral', '100ml', NULL, NULL, '2029-01-01', 11),
(NULL, NULL, NULL, 'Cítrico', '50ml', NULL, NULL, '2029-02-15', 12),
(NULL, NULL, NULL, 'Amaderado', '90ml', NULL, NULL, '2029-06-20', 13),
(NULL, NULL, NULL, 'Vainilla', '200ml', 'Extracto de vainilla, Karité', NULL, '2028-04-10', 14),
(NULL, NULL, NULL, 'Floral Suave', '15ml', NULL, NULL, '2030-01-01', 15),
(NULL, NULL, NULL, NULL, 'Kit 12 piezas', NULL, 'Cerdas sintéticas, Aluminio', NULL, NULL, 16),
(NULL, NULL, NULL, NULL, 'Mediano', NULL, 'Poliuretano hidrófilo', NULL, NULL, 17),
(NULL, NULL, NULL, NULL, 'Estándar', NULL, 'Acero al carbono, Silicón', NULL, NULL, 18),
(NULL, NULL, NULL, NULL, 'Grande', NULL, 'Lona impermeable, Cierre metálico', NULL, NULL, 19),
(NULL, NULL, NULL, NULL, 'Portátil', NULL, 'Plástico ABS, Vidrio', NULL, NULL, 20);


-- 6. Insertar en 'orden_compra' (20 registros vinculados a proveedores del 1 al 20)

INSERT INTO orden_compra (fecha_recibida, proveedores_id_proveedor) VALUES
('2026-01-10 10:00:00', 1),
('2026-01-12 11:30:00', 2),
('2026-01-15 09:15:00', 3),
('2026-01-18 14:20:00', 4),
('2026-01-20 16:00:00', 5),
('2026-02-02 10:00:00', 6),
('2026-02-05 11:00:00', 7),
('2026-02-10 15:30:00', 8),
('2026-02-15 08:45:00', 9),
('2026-02-20 13:10:00', 10),
('2026-03-01 10:00:00', 11),
('2026-03-04 12:00:00', 12),
('2026-03-08 09:30:00', 13),
('2026-03-12 14:00:00', 14),
('2026-03-15 16:45:00', 15),
('2026-04-01 11:15:00', 16),
('2026-04-05 09:00:00', 17),
('2026-04-10 15:20:00', 18),
('2026-04-14 10:30:00', 19),
('2026-04-18 13:00:00', 20);


-- 7. Insertar en 'ventas' (20 registros vinculados a clientes y empleados del 1 al 20)

INSERT INTO ventas (fecba_venta, ventascol, clientes_id_clientes, empleados_id_empleado) VALUES
('2026-05-01', 'Factura A', 1, 1),
('2026-05-02', 'Factura A', 2, 4),
('2026-05-03', 'Factura A', 3, 5),
('2026-05-04', 'Factura A', 4, 8),
('2026-05-05', 'Factura A', 5, 9),
('2026-05-06', 'Factura A', 6, 12),
('2026-05-07', 'Factura A', 7, 13),
('2026-05-08', 'Factura A', 8, 16),
('2026-05-09', 'Factura A', 9, 17),
('2026-05-10', 'Factura A', 10, 20),
('2026-05-11', 'Factura A', 11, 1),
('2026-05-12', 'Factura A', 12, 4),
('2026-05-13', 'Factura A', 13, 5),
('2026-05-14', 'Factura A', 14, 8),
('2026-05-15', 'Factura A', 15, 9),
('2026-05-16', 'Factura A', 16, 12),
('2026-05-17', 'Factura A', 17, 13),
('2026-05-18', 'Factura A', 18, 16),
('2026-05-19', 'Factura A', 19, 17),
('2026-05-20', 'Factura A', 20, 20);


-- PASO 3: Tablas Intermedias (Muchos a Muchos)

-- 8. Insertar en 'detalle_orden_compra' (20 registros relacionando productos y órdenes de compra)

INSERT INTO detalle_orden_compra (productos_id_producto, orden_compra_id_ordenCompra) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);


-- 9. Insertar en 'productos_ventas' (20 registros relacionando productos, ventas y cantidad)

INSERT INTO productos_ventas (productos_id_producto, ventas_id_venta, cantidad_venta) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 3),
(4, 4, 1),
(5, 5, 2),
(6, 6, 1),
(7, 7, 2),
(8, 8, 4),
(9, 9, 1),
(10, 10, 2),
(11, 11, 1),
(12, 12, 1),
(13, 13, 2),
(14, 14, 3),
(15, 15, 1),
(16, 16, 1),
(17, 17, 5),
(18, 18, 2),
(19, 19, 1),
(20, 20, 1);