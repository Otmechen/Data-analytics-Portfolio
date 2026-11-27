-- Antes de ejecutar el INSERT de ventas: importar data/datos_limpios.csv
-- como tabla "ventas_raw" (File > Import > Table from CSV file, UTF-8, coma).

INSERT INTO categorias (nombre) VALUES
    ('Informática'),
    ('Accesorios'),
    ('Audio');
	
INSERT INTO sucursales (nombre) VALUES
	('Adrogué'),
	('Burzaco'),
	('Centro'),
	('Lomas');
	
INSERT INTO vendedores (nombre) VALUES
	('Ana'),
	('Bruno'),
	('Carla'),
	('Diego'),
	('Elena');

INSERT INTO productos (nombre, categoria_id) VALUES
    ('Disco SSD 480GB', 1),
	('Monitor 24 pulgadas', 1),
	('Webcam HD', 1),
	('Mouse óptico', 2),
	('Teclado inalámbrico', 2),
	('Cable USB-C', 2),
	('Auriculares', 3),
	('Parlante Bluetooth', 3);

INSERT INTO ventas (id_venta_origen, fecha, producto_id, cantidad, precio_unitario,
                    sucursal_id, vendedor_id, estado_calidad, observaciones)
SELECT
    r.ID_Venta,
    CASE WHEN NULLIF(TRIM(r.Fecha), '') IS NOT NULL
         THEN substr(r.Fecha, 7, 4) || '-' || substr(r.Fecha, 4, 2) || '-' || substr(r.Fecha, 1, 2)
    END,
    p.producto_id,
    r.Cantidad,
    r.Precio_Unitario,
    s.sucursal_id,
    v.vendedor_id,
    CASE
        WHEN r.ID_Venta = 'V0041' AND r.Fecha = '05/04/2026' THEN 'DUPLICADO'
        WHEN r.Cantidad IS NULL OR r.Precio_Unitario IS NULL THEN 'SIN FACTURACIÓN'
        ELSE 'INCLUIDA'
    END,
    NULLIF(TRIM(r.Observaciones_revision), '')
FROM ventas_raw AS r
JOIN productos AS p ON p.nombre = r.Producto
LEFT JOIN sucursales AS s ON s.nombre = r.Sucursal
LEFT JOIN vendedores AS v ON v.nombre = r.Vendedor
ORDER BY r.rowid;