-- Módulo 4 consultas--

-- Alumna: Iara Degregorio-- 

USE Venta_tech_db;

-- CONSULTA 1: Resumen ejecutivo mensual--
SELECT
    MONTH(fecha_venta) AS mes,
    SUM(cantidad * precio_unitario) AS total_facturado,
    COUNT(*) AS cantidad_pedidos,
    AVG(cantidad * precio_unitario) AS ticket_promedio
FROM ventas
GROUP BY MONTH(fecha_venta)
ORDER BY MONTH(fecha_venta);

-- CONSULTA 2: Ranking de productos Top 5--

SELECT
    id_producto,
    SUM(cantidad) AS unidades_vendidas,
    SUM(cantidad * precio_unitario) AS total_facturado
FROM ventas
GROUP BY id_producto
ORDER BY total_facturado DESC
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;

-- CONSULTA 3: Clientes recurrentes--

SELECT
    id_cliente,
    COUNT(*) AS cantidad_pedidos,
    SUM(cantidad * precio_unitario) AS total_gastado
FROM ventas
GROUP BY id_cliente
HAVING COUNT(*) > 1
ORDER BY cantidad_pedidos DESC;

-- CONSULTA 4: Meses por encima / por debajo del promedio--

WITH ventas_mensuales AS (
    SELECT
        MONTH(fecha_venta) AS mes,
        SUM(cantidad * precio_unitario) AS total_facturado
    FROM ventas
    GROUP BY MONTH(fecha_venta)
)
SELECT
    mes,
    total_facturado,
    CASE
        WHEN total_facturado > (SELECT AVG(total_facturado) FROM ventas_mensuales)
            THEN 'Por encima'
        ELSE 'Por debajo'
    END AS comparacion_promedio
FROM ventas_mensuales
ORDER BY mes;

-- CONSULTA 4: Meses por encima / por debajo del promedio

WITH ventas_mensuales AS (
    SELECT
        MONTH(fecha_venta) AS mes,
        SUM(cantidad * precio_unitario) AS total_facturado
    FROM ventas
    GROUP BY MONTH(fecha_venta)
)
SELECT
    mes,
    total_facturado,
    CASE
        WHEN total_facturado > (SELECT AVG(total_facturado) FROM ventas_mensuales)
            THEN 'Por encima'
        ELSE 'Por debajo'
    END AS comparacion_promedio
FROM ventas_mensuales
ORDER BY mes;

-- HALLAZGOS DEL ANÁLISIS
--
-- 1. El producto 1 fue el principal generador de facturación durante el período
-- analizado, con un total de $3600 sobre los $6444 facturados. Esto demuestra
-- que concentra una parte importante de los ingresos y podría ser un producto
-- estratégico para el negocio.
--
-- 2. El cliente 1 realizó 2 pedidos y acumuló un gasto total de $2640,
-- siendo el cliente con mayor facturación dentro del período analizado.
--
-- 3. El producto 2 alcanzó el mayor volumen de unidades vendidas, con 13 unidades,
-- aunque su facturación total ($364) se encuentra por debajo de la de otros
-- productos de mayor precio. Esto muestra que un mayor volumen de ventas
-- no necesariamente se traduce en una mayor facturación.