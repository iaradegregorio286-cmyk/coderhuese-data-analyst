USE Venta_tech_db;
-- MÓDULO 5: CONSULTAS CON JOINS--
-- Alumna: Iara Degregorio 

--Consulta 1 — Vista base del proyecto--

    SELECT
    ventas.fecha_venta,
    clientes.nombre,
    clientes.segmento,
    clientes.ciudad,
    productos.nombre_producto,
    ventas.cantidad,
    ventas.precio_unitario,
    ventas.cantidad * ventas.precio_unitario AS total_venta
    FROM ventas 
    INNER JOIN clientes
    ON ventas.id_cliente = clientes.id_cliente
    INNER JOIN productos
    ON ventas.id_producto = productos.id_producto;

 --Consulta 2 — Clientes sin ventas--

    SELECT
    clientes.nombre,
    clientes.email,
    clientes.fecha_registro
    FROM clientes
    LEFT JOIN ventas
    ON clientes.id_cliente = ventas.id_cliente
    WHERE ventas.id_cliente IS NULL;

--Consulta 3 — Productos sin ventas--

    SELECT
    productos.nombre_producto,
    categoria.nombre_categoria,
    productos.precio
    FROM productos
    LEFT JOIN categoria
    ON productos.id_categoria = categoria.id_categoria
    LEFT JOIN ventas
    ON productos.id_producto = ventas.id_producto
    WHERE ventas.id_producto IS NULL;

-- Consulta 4: Consolidado por canal--

   -- Consulta 4: Consolidado por canal

    SELECT
    canal,
    SUM(total) AS total_facturado
    FROM (
    SELECT
    fecha_venta,
    cantidad * precio_unitario AS total,
    'Online' AS canal
    FROM ventas
    WHERE id_venta <= 5

    UNION ALL

    SELECT
    fecha_venta,
    cantidad * precio_unitario AS total,
    'Presencial' AS canal
    FROM ventas
    WHERE id_venta > 5
    ) AS ventas_por_canal
    GROUP BY canal;