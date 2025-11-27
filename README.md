# p3-consultas-sql-Jaime_Amuedo
Durante este proyecto, se trabajará con la base de datos Sakila, generando tres dataframes exportados desde SQL, para posteriormente seleccionar uno de ellos y aplicar una limpieza preliminar en SQL. Luego, el dataframe limpio será procesado y documentado en un notebook, donde se realizará un procesamiento y limpieza final de los datos.

# 🎯 Objetivos concretos
Comprender la estructura de la base de datos Sakila y cómo conectar múltiples tablas.
Exportar tres dataframes construidos mediante joins SQL.
Aplicar reglas de limpieza y estandarización directamente en SQL.
Crear un notebook ordenado y reproducible que documente los pasos ejecutados.
Exportar un dataset limpio (CSV o Parquet) para futuras etapas del priyecto.

# 📊 Dataframes a generar desde SQL

## 📁 Dataframe 1: actividad_clientes.csv

Para el proceso de limpieza del Dataframe 1, hemos empezado eliminando los registros cuyos payment_id o
rental_id sean nulos. No se han encontrado tuplas con valor nulo, por lo que no ha modificado nada.

El siguiente paso ha sido buscar los campos de la tabla payment cuya valor para la columna amount
sea negativo. Este proceso ha afectado a 24 filas de nuestra tabla.

Por último he realizado la consulta SELECT necesaria para filtrar los datos que pueden ser de utilidad
a la hora de realizar un estudio acerca de la actividad y comportamiento de los alquileres y pagos
a clientes.

## 📁 Dataframe 2: catalogo_peliculas.csv

Para el proceso de limpieza del Dataframe 2, he decidido mantener los registros de la tabla sin eliminar
y realizar todo el procedimiento a través de la consulta SELECT.

En primer lugar hemos decidido que columnas utilizar para mostrar los datos necesarios.

Una vez hecho esto aplicamos la limpieza de datos con distintos metodos y alias para nuestras columnas,
como son el uso de los métodos trim y lower para normalizar las cadenas de texto.

Además de lo anterior he decidido añadir dos nuevas columnas, la primera llamada "is_long_film", para mostrar a través de un valor booleano si la película tiene una duración mayor a 120 min o su duración es inferior, para ello hemos utilizado la sentencia CASE para mostrar una condición y en función de si se cumple o no
el valor del campo será 'yes' o 'no'.
La segunda columna se llama total_copies y recoge el numero total de copias que hay disponible de la película.

Una vez aplicado todos los filtros y agregados todos los datos necesarios, aplicamos la claúsula WHERE para 
eliminar los datos de películas cuyo valor de duración (length) sea inferior a 0 y la claúsula GROUP BY 
para agrupar los datos de forma mas ordenada.

## 📁 Dataframe 3: elenco.csv & popularidad.csv

Para el Dataframe 3, he decidido dividir en dos las columnas de datos, ya que al aplicar ciertos filtros
sobre los registros se generaban duplicidades innecesarias.

En primer lugar elegimos filtrar a través de la tabla film, donde elegiremos los campos id, nombre y como
última columna para nuestra tabla total_actors que representarán el elenco de la película.

Una vez elegidos los datos a mostrar, aplicamos los filtros de limpieza de datos para la columna title, 
agregandole los métodos lower y trim.

Para la columna total_actors hemos aplicado el método count para contar cuantas personas esta asociadas 
a la película mostrada.

En segundo lugar elegimos filtrar a través de la tabla actor, donde eligemos los campos id, first_name y 
last_name y una última llamada film_participations.

Para la columna full_name hemos utilizado el método concat que nos unirá varias cadenas de texto, en este caso
hemos concatenada las columnas first_name y last_name para mostrar el nombre completo. Y para la columna 
film_participations hemos utilizado el método count para contar el número de películas en las que 
el actor ha participado en su carrera.

# 🧰 Tecnologías y librerías

## 📊 Análisis de datos
- ![SQL Workbench](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white&size=auto)
- ![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54&size=auto)
- ![Jupyter Notebook](https://img.shields.io/badge/Jupyter%20Notebook-F37626?style=flat-square&logo=jupyter&logoColor=white&size=auto)

## 🛠️ Principales librerías

- ![pandas](https://img.shields.io/badge/pandas-%23150458?style=flat&logo=pandas&logoColor=white&size=auto)
- ![numpy](https://img.shields.io/badge/Numpy-013243?style=plastic&logo=numpy&logoColor=white&size=auto)
- ![plotly](https://img.shields.io/badge/-Plotly-3F4F75?style=flat&logo=plotly&logoColor=white&size=auto)
- ![matplotlib](https://img.shields.io/badge/-Matplotlib-000000?style=flat&logo=python&size=auto)
- ![seaborn](https://img.shields.io/badge/-Seaborn-3776AB?style=flat&logo=python&logoColor=white&size=auto)


# ✅ Checklist de Python

- ✅ Comprobar y corregir tipos de datos.
- ✅ Detectar outliers
- ✅ Crear columnas derivadas
- ✅ Generar visualizaciones gráficas
- Exportar dataset final