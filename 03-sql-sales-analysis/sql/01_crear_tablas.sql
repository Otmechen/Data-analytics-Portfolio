CREATE TABLE categorias (
	categoria_id INTEGER PRIMARY KEY,
	nombre TEXT NOT NULL
);

CREATE TABLE productos (
	producto_id INTEGER PRIMARY KEY,
	nombre TEXT NOT NULL,
	categoria_id INTEGER NOT NULL,
	FOREIGN KEY (categoria_id) REFERENCES categorias(categoria_id)
);

CREATE TABLE sucursales (
	sucursal_id INTEGER PRIMARY KEY,
	nombre TEXT NOT NULL
);

CREATE TABLE vendedores (
	vendedor_id INTEGER PRIMARY KEY,
	nombre TEXT NOT NULL
);

CREATE TABLE ventas (
    venta_id INTEGER PRIMARY KEY,
    id_venta_origen TEXT NOT NULL,
    fecha TEXT,
    producto_id INTEGER NOT NULL,
    cantidad INTEGER,
    precio_unitario INTEGER,
    sucursal_id INTEGER,
    vendedor_id INTEGER,
    estado_calidad TEXT NOT NULL,
    observaciones TEXT,
    FOREIGN KEY (producto_id) REFERENCES productos(producto_id),
    FOREIGN KEY (sucursal_id) REFERENCES sucursales(sucursal_id),
    FOREIGN KEY (vendedor_id) REFERENCES vendedores(vendedor_id)
);