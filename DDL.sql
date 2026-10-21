
-- PASO 1: Crear las tablas independientes (Sin dependencias de FK)


CREATE TABLE productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre_producto VARCHAR(45) NOT NULL,
    categoria VARCHAR(45) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    descripcion_producto VARCHAR(255)
);

CREATE TABLE proveedores (
    id_proveedor INT AUTO_INCREMENT PRIMARY KEY,
    nombre_empresa VARCHAR(100) NOT NULL,
    nombre_contacto VARCHAR(100),
    telefono VARCHAR(100),
    direccion VARCHAR(100)
);

CREATE TABLE empleados (
    id_empleado INT AUTO_INCREMENT PRIMARY KEY,
    nombre_empleado VARCHAR(100) NOT NULL,
    fecha_contratacion DATETIME,
    puesto_trabajo VARCHAR(45),
    area VARCHAR(45)
);

CREATE TABLE clientes (
    id_clientes INT AUTO_INCREMENT PRIMARY KEY,
    nombre_cliente VARCHAR(100) NOT NULL,
    correo_electronico VARCHAR(100),
    direccion_cliente VARCHAR(100),
    numero_telefono VARCHAR(100)
);



-- PASO 2: Crear las tablas dependientes 


CREATE TABLE detalle_productos (
    id_detalleProducto INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(45),
    tono_color VARCHAR(45),
    tipo_piel VARCHAR(45),
    tipo_aroma VARCHAR(45),
    tamaño_producto VARCHAR(45),
    componentes_principales VARCHAR(100),
    materiales VARCHAR(100),
    fecha_caducidad DATE,
    productos_id_producto INT NOT NULL UNIQUE,
    
    FOREIGN KEY (productos_id_producto) 
    REFERENCES productos(id_producto) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE
);

CREATE TABLE orden_compra (
    id_ordenCompra INT AUTO_INCREMENT PRIMARY KEY,
    fecha_recibida DATETIME,
    proveedores_id_proveedor INT NOT NULL,
    
    FOREIGN KEY (proveedores_id_proveedor) 
    REFERENCES proveedores(id_proveedor) 
    ON DELETE RESTRICT 
    ON UPDATE CASCADE
);

CREATE TABLE ventas (
    id_venta INT AUTO_INCREMENT PRIMARY KEY,
    fecba_venta DATE NOT NULL,
    ventascol VARCHAR(45),
    clientes_id_clientes INT NOT NULL,
    empleados_id_empleado INT NOT NULL,
    
    FOREIGN KEY (clientes_id_clientes) 
    REFERENCES clientes(id_clientes) 
    ON DELETE RESTRICT 
    ON UPDATE CASCADE,
    
    FOREIGN KEY (empleados_id_empleado) 
    REFERENCES empleados(id_empleado) 
    ON DELETE RESTRICT 
    ON UPDATE CASCADE
);



-- PASO 3: Crear las tablas intermedias (Muchos a Muchos)


CREATE TABLE detalle_orden_compra (
    id_detalle_orden_compra INT AUTO_INCREMENT PRIMARY KEY,
    productos_id_producto INT NOT NULL,
    orden_compra_id_ordenCompra INT NOT NULL,
    
    FOREIGN KEY (productos_id_producto) 
    REFERENCES productos(id_producto) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE,
    
    FOREIGN KEY (orden_compra_id_ordenCompra) 
    REFERENCES orden_compra(id_ordenCompra) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE
);

CREATE TABLE productos_ventas (
    id_productos_ventas INT AUTO_INCREMENT PRIMARY KEY,
    productos_id_producto INT NOT NULL,
    ventas_id_venta INT NOT NULL,
    cantidad_venta INT NOT NULL,
    
    FOREIGN KEY (productos_id_producto) 
    REFERENCES productos(id_producto) 
    ON DELETE RESTRICT 
    ON UPDATE CASCADE,
    
    FOREIGN KEY (ventas_id_venta) 
    REFERENCES ventas(id_venta) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE
);