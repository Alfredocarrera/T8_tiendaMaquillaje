-- 1. Listar todos los productos de cosméticos de un tipo específico
DELIMITER //
CREATE PROCEDURE SpListarCosmeticosPorTipo(IN p_tipo VARCHAR(45))
BEGIN
    SELECT p.id_producto, p.nombre_producto, p.categoria, p.precio, p.stock, d.tipo, d.tono_color
    FROM productos p
    INNER JOIN detalle_productos d ON p.id_producto = d.productos_id_producto
    WHERE p.categoria = 'cosméticos' AND d.tipo = p_tipo;
END //
DELIMITER ;

-- Para ejecutarlo:

CALL SpListarCosmeticosPorTipo('Labial');


-- 2.Obtener todos los productos en una categoría cuyo stock sea inferior a un valor dado

DELIMITER //
CREATE PROCEDURE SpProductosStockInferior(IN p_categoria VARCHAR(45), IN p_stock_limite INT)
BEGIN
    SELECT id_producto, nombre_producto, categoria, precio, stock
    FROM productos
    WHERE categoria = p_categoria AND stock < p_stock_limite;
END //
DELIMITER ;

-- Para ejecutarlo:
CALL SpProductosStockInferior('cuidado_piel', 40);

-- 3. Mostrar todas las ventas realizadas por un cliente específico en un rango de fechas
DELIMITER //
CREATE PROCEDURE SpVentasPorClienteYFecha(
    IN p_id_cliente INT, 
    IN p_fecha_inicio DATE, 
    IN p_fecha_fin DATE
)
BEGIN
    SELECT v.id_venta, v.fecba_venta, c.nombre_cliente, e.nombre_empleado, v.ventascol
    FROM ventas v
    INNER JOIN clientes c ON v.clientes_id_clientes = c.id_clientes
    INNER JOIN empleados e ON v.empleados_id_empleado = e.id_empleado
    WHERE c.id_clientes = p_id_cliente 
      AND v.fecba_venta BETWEEN p_fecha_inicio AND p_fecha_fin;
END //
DELIMITER ;

-- Para ejecutarlo:
CALL SpVentasPorClienteYFecha(1, '2026-05-01', '2026-05-31');


-- 4. Calcular el total de ventas realizadas por un empleado en un mes dado

DELIMITER //
CREATE PROCEDURE SpTotalVentasEmpleadoMes(
    IN p_id_empleado INT, 
    IN p_mes INT, 
    IN p_anio INT
)
BEGIN
    SELECT 
        e.nombre_empleado,
        COUNT(DISTINCT v.id_venta) AS total_facturas_atendidas,
        SUM(pv.cantidad_venta) AS total_unidades_vendidas
    FROM ventas v
    INNER JOIN empleados e ON v.empleados_id_empleado = e.id_empleado
    INNER JOIN productos_ventas pv ON v.id_venta = pv.ventas_id_venta
    WHERE e.id_empleado = p_id_empleado
      AND MONTH(v.fecba_venta) = p_mes
      AND YEAR(v.fecba_venta) = p_anio;
END //
DELIMITER ;

-- Para ejecutarlo:
CALL SpTotalVentasEmpleadoMes(1, 5, 2026);


-- 5. Listar los productos más vendidos en un período determinado

DELIMITER //
CREATE PROCEDURE SpProductosMasVendidosPeriodo(
    IN p_fecha_inicio DATE, 
    IN p_fecha_fin DATE
)
BEGIN
    SELECT 
        p.id_producto, 
        p.nombre_producto, 
        p.categoria, 
        SUM(pv.cantidad_venta) AS total_vendido
    FROM productos p
    INNER JOIN productos_ventas pv ON p.id_producto = pv.productos_id_producto
    INNER JOIN ventas v ON pv.ventas_id_venta = v.id_venta
    WHERE v.fecba_venta BETWEEN p_fecha_inicio AND p_fecha_fin
    GROUP BY p.id_producto, p.nombre_producto, p.categoria
    ORDER BY total_vendido DESC;
END //
DELIMITER ;

-- Para ejecutarlo:
CALL SpProductosMasVendidosPeriodo('2026-05-01', '2026-05-31');

SET GLOBAL log_bin_trust_function_creators = 1;


--6. Consultar el stock disponible de un producto por su nombre o identificador

DELIMITER //
CREATE FUNCTION FnConsultarStock(p_id_producto INT) 
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE v_stock INT;
    
    SELECT stock INTO v_stock
    FROM productos
    WHERE id_producto = p_id_producto;
    
    RETURN v_stock;
END //
DELIMITER ;

-- Para ejecutarla:
SELECT FnConsultarStock(1);


-- 7. Mostrar las órdenes de compra realizadas a un proveedor específico en el último año

DELIMITER //
CREATE FUNCTION FnTotalOrdenesUltimoAnio(p_id_proveedor INT) 
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE v_total INT;
    
    SELECT COUNT(*) INTO v_total
    FROM orden_compra
    WHERE proveedores_id_proveedor = p_id_proveedor
      AND fecha_recibida >= (NOW() - INTERVAL 1 YEAR);
      
    RETURN v_total;
END //
DELIMITER ;

-- Para ejecutarla:
SELECT FnTotalOrdenesUltimoAnio(1);


-- 8. Listar los empleados que han trabajado más de un año en la tienda

DELIMITER //
CREATE FUNCTION FnEmpleadosAntiguedadMayorUnAnio() 
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE v_cantidad INT;
    
    SELECT COUNT(*) INTO v_cantidad
    FROM empleados
    WHERE fecha_contratacion <= (NOW() - INTERVAL 1 YEAR);
    
    RETURN v_cantidad;
END //
DELIMITER ;

-- Para ejecutarla:
SELECT FnEmpleadosAntiguedadMayorUnAnio();


-- 9. Obtener la cantidad total de productos vendidos en un día específico

DELIMITER //
CREATE FUNCTION FnTotalProductosVendidosDia(p_fecha DATE) 
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE v_total_unidades INT;
    
    SELECT COALESCE(SUM(pv.cantidad_venta), 0) INTO v_total_unidades
    FROM productos_ventas pv
    INNER JOIN ventas v ON pv.ventas_id_venta = v.id_venta
    WHERE v.fecba_venta = p_fecha;
    
    RETURN v_total_unidades;
END //
DELIMITER ;

-- Para ejecutarla:
SELECT FnTotalProductosVendidosDia('2026-05-01');


-- 10. Consultar las ventas de un producto específico (por nombre o ID) y cuántas unidades se vendieron

DELIMITER //
CREATE FUNCTION FnUnidadesVendidasPorProducto(p_id_producto INT) 
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE v_total_vendido INT;
    
    SELECT COALESCE(SUM(cantidad_venta), 0) INTO v_total_vendido
    FROM productos_ventas
    WHERE productos_id_producto = p_id_producto;
    
    RETURN v_total_vendido;
END //
DELIMITER ;

-- Para ejecutarla:
SELECT FnUnidadesVendidasPorProducto(1);