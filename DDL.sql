Create schema riwi_ventas;
set search_path to riwi_ventas;


CREATE TABLE ciudad (
    ciudad_id SERIAL PRIMARY KEY,
    nombre_ciudad VARCHAR(100) UNIQUE
);

CREATE TABLE tipo_producto (
    tipo_producto_id SERIAL PRIMARY KEY,
    tipo_producto VARCHAR(100) UNIQUE
);

CREATE TABLE producto (
    producto_id SERIAL PRIMARY KEY,
    nombre_producto VARCHAR(100),
    tipo_producto_id INT REFERENCES tipo_producto(tipo_producto_id)
);

CREATE TABLE tipo_venta (
    tipo_venta_id SERIAL PRIMARY KEY,
    tipo_venta VARCHAR(100) UNIQUE
);

CREATE TABLE tipo_cliente (
    tipo_cliente_id SERIAL PRIMARY KEY,
    tipo_cliente VARCHAR(100) UNIQUE
);

CREATE TABLE factura_ventas (
    venta_id SERIAL PRIMARY KEY,
    fecha DATE,
    ciudad_id INT REFERENCES ciudad(ciudad_id),
    producto_id INT REFERENCES producto(producto_id),
    tipo_venta_id INT REFERENCES tipo_venta(tipo_venta_id),
    tipo_cliente_id INT REFERENCES tipo_cliente(tipo_cliente_id),
    cantidad NUMERIC,
    precio_unitario NUMERIC,
    descuento NUMERIC,
    costo_envio NUMERIC,
    total NUMERIC
);



select * from factura_ventas;
