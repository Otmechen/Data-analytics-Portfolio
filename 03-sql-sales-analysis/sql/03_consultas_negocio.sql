-- 1. Unidades y facturación por producto (ventas INCLUIDA)

SELECT
    producto_id,
    SUM(cantidad) AS unidades,
    SUM(cantidad * precio_unitario) AS facturacion
FROM ventas
WHERE estado_calidad = 'INCLUIDA'
GROUP BY producto_id
ORDER BY facturacion DESC;

-- 2. Unidades y facturación por producto, con nombre y categoría

SELECT
    p.nombre AS producto,
    c.nombre AS categoria,
    SUM(v.cantidad) AS unidades,
    SUM(v.cantidad * v.precio_unitario) AS facturacion
FROM ventas AS v
JOIN productos AS p ON p.producto_id = v.producto_id
JOIN categorias AS c ON c.categoria_id = p.categoria_id
WHERE v.estado_calidad = 'INCLUIDA'
GROUP BY p.producto_id
ORDER BY facturacion DESC;

-- 3. Facturación por sucursal (ventas INCLUIDA)

SELECT
    COALESCE(s.nombre, 'Sin sucursal') AS sucursal,
    COUNT(*) AS ventas,
    SUM(v.cantidad) AS unidades,
    SUM(v.cantidad * v.precio_unitario) AS facturacion
FROM ventas AS v
LEFT JOIN sucursales AS s ON s.sucursal_id = v.sucursal_id
WHERE v.estado_calidad = 'INCLUIDA'
GROUP BY s.sucursal_id
ORDER BY facturacion DESC;

-- 4. Facturación por vendedor (ventas INCLUIDA)

SELECT
    COALESCE(vd.nombre, 'Sin vendedor') AS vendedor,
    COUNT(*) AS ventas,
    SUM(vt.cantidad) AS unidades,
    SUM(vt.cantidad * vt.precio_unitario) AS facturacion
FROM ventas AS vt
LEFT JOIN vendedores AS vd ON vd.vendedor_id = vt.vendedor_id
WHERE vt.estado_calidad = 'INCLUIDA'
GROUP BY vd.vendedor_id
ORDER BY facturacion DESC;

-- 5. Facturación por mes (ventas INCLUIDA)

SELECT
    COALESCE(strftime('%Y-%m', fecha), 'Sin fecha') AS mes,
    COUNT(*) AS ventas,
    SUM(cantidad) AS unidades,
    SUM(cantidad * precio_unitario) AS facturacion
FROM ventas
WHERE estado_calidad = 'INCLUIDA'
GROUP BY mes
ORDER BY mes;

-- 6. Participación de cada producto en la facturación total (ventas INCLUIDA)

SELECT
    p.nombre AS producto,
    SUM(v.cantidad * v.precio_unitario) AS facturacion,
    ROUND(
        100.0 * SUM(v.cantidad * v.precio_unitario)
        / (SELECT SUM(cantidad * precio_unitario) FROM ventas WHERE estado_calidad = 'INCLUIDA'),
        1
    ) AS porcentaje
FROM ventas AS v
JOIN productos AS p ON p.producto_id = v.producto_id
WHERE v.estado_calidad = 'INCLUIDA'
GROUP BY p.producto_id
ORDER BY facturacion DESC;

-- 7. Ranking de productos por facturación dentro de su categoría (ventas INCLUIDA)

SELECT
    c.nombre AS categoria,
    p.nombre AS producto,
    SUM(v.cantidad * v.precio_unitario) AS facturacion,
    RANK() OVER (
        PARTITION BY c.nombre
        ORDER BY SUM(v.cantidad * v.precio_unitario) DESC
    ) AS posicion
FROM ventas AS v
JOIN productos AS p ON p.producto_id = v.producto_id
JOIN categorias AS c ON c.categoria_id = p.categoria_id
WHERE v.estado_calidad = 'INCLUIDA'
GROUP BY p.producto_id
ORDER BY c.nombre, posicion;

-- 8. Facturación acumulada mes a mes (ventas INCLUIDA con fecha)

WITH mensual AS (
    SELECT
        strftime('%Y-%m', fecha) AS mes,
        SUM(cantidad * precio_unitario) AS facturacion
    FROM ventas
    WHERE estado_calidad = 'INCLUIDA'
      AND fecha IS NOT NULL
    GROUP BY mes
)
SELECT
    mes,
    facturacion,
    SUM(facturacion) OVER (ORDER BY mes) AS acumulado
FROM mensual
ORDER BY mes;