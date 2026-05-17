# Estructura

```text
Fase4_Dashboard/
├── dashboard_fase4_bdua_wos_curado.ipynb
├── README.md
├── bibliometrix_fase4_curado.R
├── fuentes/
│   ├── wos_curado_fase4.csv
│   ├── ReferenciasFase4_curadas.bib
│   ├── resumen_curacion.md
│   └── seleccion_referencias.csv
└── salidas/
    ├── metricas_modelo.csv
    ├── forecast_publicaciones.csv
    ├── top_keywords.csv
    ├── sentimiento_por_anio.csv
    └── figuras/
        ├── publicaciones_por_anio.png
        ├── top_fuentes.png
        ├── top_keywords.png
        ├── sentimiento_distribucion.png
        ├── sentimiento_por_anio.png
        ├── pdf_times_cited.png
        ├── forecast_publicaciones.png
        └── red_cocitacion_exploratoria.png
```

El notebook principal debe permanecer en la raíz. Los insumos se guardan en `fuentes/` y todo lo que genera el programa queda en `salidas/`.

# Fase 4 - Dashboard de inteligencia de negocios con BDUA y Web of Science

## Objetivo
Desarrollar un flujo analítico integrado para la Fase 4 del curso *Métodos Cuantitativos y Cualitativos para los Negocios*, usando una fuente de negocio independiente (BDUA por API SODA2) y una fuente bibliográfica independiente (Web of Science).

## Archivos incluidos
- `dashboard_fase4_bdua_wos_curado.ipynb`: notebook principal reproducible.
- `ReferenciasFase4_curadas.bib`: subconjunto curado de referencias de Web of Science.
- `wos_curado_fase4.csv`: versión tabular del subconjunto curado para el notebook.
- `seleccion_referencias.csv`: tabla resumen del subconjunto seleccionado.
- `forecast_publicaciones.csv`: proyección simple de publicaciones.
- `figuras/`: gráficos generados a partir del corpus curado.

## Lógica del proyecto
### Fuente 1. BDUA
Se utiliza el endpoint:
`https://www.datos.gov.co/resource/d7a5-cnra.json`

Esta fuente se consulta en vivo desde el notebook para:
- agregaciones territoriales,
- perfiles por género y grupo etario,
- KPIs de afiliación,
- insumos del dashboard de negocio.

### Fuente 2. Web of Science
Se trabaja con `ReferenciasFase4.bib` y se construye un subconjunto curado priorizando:
- salud y aseguramiento,
- cobertura y acceso,
- Colombia y América Latina,
- calidad metodológica y citación,
- pertinencia para inequidad y gestión del sistema.

## Cómo ejecutar
1. Abrir el notebook `dashboard_fase4_bdua_wos_curado.ipynb` en Jupyter.
2. Verificar que estén en la misma carpeta:
   - `wos_curado_fase4.csv`
   - `ReferenciasFase4_curadas.bib`
   - carpeta `figuras`
3. Ejecutar primero el bloque del corpus bibliográfico.
4. Si tienes conexión a internet, ejecutar luego las consultas BDUA desde la API.
5. Guardar las salidas en PDF o exportar las figuras para el dashboard final.

## Qué cubre frente a la guía
- análisis bibliométrico con base WoS,
- NLP para sentimiento sobre abstracts,
- probabilidad/densidad de citación,
- modelo predictivo de tendencia de publicaciones,
- interpretación estratégica,
- notebook documentado y listo para GitHub.

