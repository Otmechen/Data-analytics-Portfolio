# Data Analyst Portfolio

*Versión en español más abajo / Spanish version below → [Ir a la versión en español](#portfolio-de-análisis-de-datos)*

---

## 🇬🇧 English

### About this portfolio

Five hands-on projects, ordered **from the simplest to the most complex**, that take a raw dataset all the way to business insight. Each one is treated like a real assignment from a company: a business scenario, a clear method, documented decisions, and a result that someone else could pick up and use.

The projects build on each other. Project 1 prepares a reliable dataset, and the following projects analyze, query, model and present it with increasingly powerful tools.

> All datasets are fictional and were created for practice. They do not represent any real company.

### Roadmap

| # | Project | Level | Main tools | Status |
|---|---|---|---|---|
| 1 | [Sales Data Cleaning in Excel](01-excel-data-cleaning/) | Beginner | Excel | ✅ Done |
| 2 | Sales Analysis and Dashboard in Excel | Beginner–Intermediate | Excel (PivotTables, charts) | 🔜 Planned |
| 3 | Sales Analysis with SQL | Intermediate | SQL | 🔜 Planned |
| 4 | Exploratory Data Analysis with Python | Intermediate–Advanced | Python (pandas, visualization) | 🔜 Planned |
| 5 | End-to-End Analytics Project | Advanced | SQL + Python + BI dashboard | 🔜 Planned |

The scope of the planned projects may be adjusted as I learn.

### What each project covers

#### 1. Sales Data Cleaning in Excel — ✅ Done
**Scenario:** a company hands over a sales spreadsheet with duplicates, inconsistent names, wrong dates, blanks and invalid numbers, and it must be ready for someone else to analyze.
**What was done:** detected and classified duplicates with a two-level criterion, normalized product and category names with a lookup table, rebuilt text dates as real dates (flagging impossible ones), found and handled blanks and invalid quantities and prices, built a validation sheet, and documented every change in a change log.
**Key principle:** never invent missing data. What cannot be determined with certainty is left empty and flagged for review.
**Result:** 157 rows reduced to 151 clean rows, 6 exact duplicates removed, 14 rows flagged for review.
**Skills:** data quality diagnosis, Excel formulas and tables, documentation, validation mindset.

#### 2. Sales Analysis and Dashboard in Excel — 🔜 Planned
**Scenario:** management wants to understand how the business is performing using the clean sales base from Project 1.
**What will be done:** define the key metrics (total revenue, units, average ticket), summarize sales by month, product, category, branch and seller with PivotTables, build charts, and assemble a one-page dashboard with filters.
**Skills:** PivotTables, calculated fields, charts, slicers, turning a question into a metric, communicating results.

#### 3. Sales Analysis with SQL — 🔜 Planned
**Scenario:** the sales data now lives in a database, and the team needs answers to business questions through queries.
**What will be done:** load the data into a relational database, split it into related tables (sales, products, branches, sellers), and answer business questions with queries.
**Skills:** `SELECT`, filtering, `GROUP BY`, `JOIN`, subqueries, window functions, data modeling basics.

#### 4. Exploratory Data Analysis with Python — 🔜 Planned
**Scenario:** a larger and messier dataset needs to be cleaned, explored and understood programmatically.
**What will be done:** load and clean the data with pandas, explore distributions, trends and relationships, detect outliers, and produce clear visualizations with written conclusions in a notebook.
**Skills:** pandas, data cleaning at scale, statistics fundamentals, visualization, reproducible notebooks.

#### 5. End-to-End Analytics Project — 🔜 Planned
**Scenario:** a complete assignment from raw data to a decision-ready deliverable.
**What will be done:** combine everything learned: extract data with SQL, clean and analyze it with Python, build an interactive BI dashboard, and write a short report with findings and recommendations for a non-technical audience.
**Skills:** integrating several tools, data storytelling, business recommendations, project documentation.

### How every project is approached

1. **A business scenario**, not an isolated exercise.
2. **Explicit rules**, written down before touching the data.
3. **Reproducible work**: every result can be traced back to a formula, a query or a script.
4. **Documented decisions**: what was found, how many cases, what was done and why.
5. **Validation**: checks that prove the result is consistent.
6. **A README** explaining the problem, the method, the decisions and the results.

### Repository structure

```
Projects---Data-Analysist/
├── README.md                    ← this file
├── 01-excel-data-cleaning/      ← Project 1 (done)
│   ├── README.md
│   ├── data/
│   └── img/
├── 02-excel-analysis-dashboard/ ← planned
├── 03-sql-sales-analysis/       ← planned
├── 04-python-eda/               ← planned
└── 05-end-to-end-analytics/     ← planned
```

---

## 🇪🇸 Español

# Portfolio de análisis de datos

### Sobre este portfolio

Cinco proyectos prácticos, ordenados **del más simple al más complejo**, que llevan un conjunto de datos en bruto hasta conclusiones útiles para el negocio. Cada uno se trabaja como un encargo real de una empresa: un escenario de negocio, un método claro, decisiones documentadas y un resultado que otra persona pueda retomar y usar.

Los proyectos se apoyan entre sí. El Proyecto 1 prepara un conjunto de datos confiable, y los siguientes lo analizan, consultan, modelan y presentan con herramientas cada vez más potentes.

> Todos los datasets son ficticios y fueron creados para practicar. No representan a ninguna empresa real.

### Hoja de ruta

| # | Proyecto | Nivel | Herramientas principales | Estado |
|---|---|---|---|---|
| 1 | [Limpieza de datos de ventas en Excel](01-excel-data-cleaning/) | Principiante | Excel | ✅ Terminado |
| 2 | Análisis de ventas y dashboard en Excel | Principiante–Intermedio | Excel (tablas dinámicas, gráficos) | 🔜 Planificado |
| 3 | Análisis de ventas con SQL | Intermedio | SQL | 🔜 Planificado |
| 4 | Análisis exploratorio de datos con Python | Intermedio–Avanzado | Python (pandas, visualización) | 🔜 Planificado |
| 5 | Proyecto de analítica de punta a punta | Avanzado | SQL + Python + dashboard de BI | 🔜 Planificado |

El alcance de los proyectos planificados puede ajustarse a medida que aprenda.

### Qué abarca cada proyecto

#### 1. Limpieza de datos de ventas en Excel — ✅ Terminado
**Escenario:** una empresa entrega una planilla de ventas con duplicados, nombres inconsistentes, fechas incorrectas, vacíos y números inválidos, y debe quedar lista para que otra persona la analice.
**Qué se hizo:** se detectaron y clasificaron los duplicados con un criterio en dos niveles, se normalizaron productos y categorías con una tabla de equivalencias, se reconstruyeron como fechas reales las que estaban como texto (marcando las imposibles), se encontraron y trataron los vacíos y las cantidades y precios inválidos, se armó una hoja de validación y se documentó cada cambio en un registro.
**Principio clave:** no inventar datos faltantes. Lo que no se puede determinar con certeza se deja vacío y se marca para revisión.
**Resultado:** de 157 filas se pasó a 151 filas limpias, con 6 duplicados exactos eliminados y 14 filas marcadas para revisión.
**Habilidades:** diagnóstico de calidad de datos, fórmulas y tablas de Excel, documentación, mentalidad de validación.

#### 2. Análisis de ventas y dashboard en Excel — 🔜 Planificado
**Escenario:** la dirección quiere entender cómo le va al negocio, usando la base de ventas limpia del Proyecto 1.
**Qué se hará:** definir las métricas clave (facturación total, unidades, ticket promedio), resumir las ventas por mes, producto, categoría, sucursal y vendedor con tablas dinámicas, armar gráficos y construir un dashboard de una página con filtros.
**Habilidades:** tablas dinámicas, campos calculados, gráficos, segmentaciones, traducir una pregunta a una métrica, comunicar resultados.

#### 3. Análisis de ventas con SQL — 🔜 Planificado
**Escenario:** los datos de ventas ahora están en una base de datos, y el equipo necesita responder preguntas de negocio mediante consultas.
**Qué se hará:** cargar los datos en una base relacional, separarlos en tablas relacionadas (ventas, productos, sucursales, vendedores) y responder preguntas de negocio con consultas.
**Habilidades:** `SELECT`, filtros, `GROUP BY`, `JOIN`, subconsultas, funciones de ventana, nociones de modelado de datos.

#### 4. Análisis exploratorio de datos con Python — 🔜 Planificado
**Escenario:** un conjunto de datos más grande y más desordenado debe limpiarse, explorarse y entenderse de forma programática.
**Qué se hará:** cargar y limpiar los datos con pandas, explorar distribuciones, tendencias y relaciones, detectar valores atípicos y producir visualizaciones claras con conclusiones escritas en un notebook.
**Habilidades:** pandas, limpieza de datos a mayor escala, fundamentos de estadística, visualización, notebooks reproducibles.

#### 5. Proyecto de analítica de punta a punta — 🔜 Planificado
**Escenario:** un encargo completo, desde los datos en bruto hasta un entregable listo para tomar decisiones.
**Qué se hará:** combinar todo lo aprendido: extraer datos con SQL, limpiarlos y analizarlos con Python, construir un dashboard interactivo de BI y escribir un informe breve con hallazgos y recomendaciones para un público no técnico.
**Habilidades:** integrar varias herramientas, narrativa con datos, recomendaciones de negocio, documentación de proyectos.

### Cómo se encara cada proyecto

1. **Un escenario de negocio**, no un ejercicio aislado.
2. **Reglas explícitas**, escritas antes de tocar los datos.
3. **Trabajo reproducible**: cada resultado se puede rastrear hasta una fórmula, una consulta o un script.
4. **Decisiones documentadas**: qué se encontró, cuántos casos, qué se hizo y por qué.
5. **Validación**: controles que demuestran que el resultado es consistente.
6. **Un README** que explica el problema, el método, las decisiones y los resultados.

### Estructura del repositorio

```
Projects---Data-Analysist/
├── README.md                    ← este archivo
├── 01-excel-data-cleaning/      ← Proyecto 1 (terminado)
│   ├── README.md
│   ├── data/
│   └── img/
├── 02-excel-analysis-dashboard/ ← planificado
├── 03-sql-sales-analysis/       ← planificado
├── 04-python-eda/               ← planificado
└── 05-end-to-end-analytics/     ← planificado
```
