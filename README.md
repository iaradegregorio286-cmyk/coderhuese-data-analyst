# 🛒 RetailPro — Proyecto de Análisis de Datos

Proyecto de análisis de ventas de una tienda tecnológica desarrollado durante la cursada de **Data Analytics en Coderhouse**, utilizando SQL Server y Power BI.

## 📌 Objetivo del proyecto

El objetivo de RetailPro es analizar el desempeño comercial de una tienda tecnológica a partir de la base de datos `Venta_tech_db`, utilizando herramientas de análisis y visualización de datos.

Durante el desarrollo del proyecto se trabajó en:

- Exploración y consulta de datos mediante SQL.
- Integración de tablas utilizando `JOIN`.
- Análisis de ventas por cliente, producto y negocio.
- Desarrollo de visualizaciones e indicadores en Power BI.
- Organización y documentación de los archivos del proyecto mediante GitHub.

## 🛠️ Herramientas utilizadas

- **SQL Server Management Studio (SSMS):** desarrollo y ejecución de consultas SQL.
- **Power BI:** análisis, creación de métricas y visualización de información.
- **GitHub:** almacenamiento y organización de los archivos del proyecto.

## 📁 Estructura del repositorio

El repositorio contiene los siguientes archivos y recursos:

```text
RetailPro/
│
├── Módulo 3/
│   ├── Módulo 3 database.sql
│   ├── m4_consultas_negocio.sql
│   └── m5_consultas_joins.sql
│
├── Iara_Degregorio_Checkpoint2.pbix.pbix
├── Modulo 7.pdf
└── README.md
```

### Descripción de los archivos

- **`Módulo 3 database.sql`:** archivo SQL correspondiente al trabajo realizado en el módulo 3.
- **`m4_consultas_negocio.sql`:** contiene consultas SQL desarrolladas para analizar información del negocio.
- **`m5_consultas_joins.sql`:** contiene consultas SQL que utilizan `JOIN` para relacionar información de distintas tablas.
- **`Iara_Degregorio_Checkpoint2.pbix.pbix`:** archivo de Power BI correspondiente al checkpoint del módulo 8.
- **`Modulo 7.pdf`:** documento de entrega correspondiente al módulo 7.

Los archivos SQL contienen el código de las consultas. Los resultados de su ejecución no están almacenados en estos archivos como salidas automáticas: para obtenerlos es necesario ejecutar las consultas en SQL Server Management Studio.

## 🗄️ Base de datos

Las consultas se desarrollaron utilizando SQL Server y la base de datos `Venta_tech_db`.

Para ejecutar los scripts es necesario contar con SQL Server, tener acceso a la base de datos correspondiente y verificar que las tablas y columnas requeridas estén disponibles.

## ▶️ Cómo ejecutar las consultas SQL

1. Abrir SQL Server Management Studio (SSMS).
2. Conectarse al servidor de SQL Server donde se encuentra la base de datos.
3. Abrir el archivo `.sql` que se desea ejecutar.
4. Seleccionar la base de datos `Venta_tech_db`, si corresponde al script.
5. Revisar la consulta y ejecutarla mediante el botón **Execute** o la tecla **F5**.
6. Consultar los resultados en la ventana de resultados de SSMS.

**Importante:** la ejecución puede requerir configurar correctamente la conexión y disponer de las tablas y los datos necesarios. GitHub permite consultar el código SQL publicado, pero no ejecuta las consultas.

## 📊 Análisis y visualización

El proyecto incluye trabajo de análisis mediante consultas SQL y un archivo de Power BI para explorar y visualizar información comercial.

Estas herramientas permiten trabajar con los datos desde dos perspectivas complementarias: la consulta y transformación de información mediante SQL, y la presentación visual de indicadores para facilitar su interpretación.

