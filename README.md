# Projecto ETL

![Portada](/img/portada.jpg)

## Index 🤘

1. [Objetivo](#obj)
2. [Extraccion y transformacion](#trans)
3. [Guardado en SQL](#sql)
4. [Informacion y links](#info)

<a name="obj"/>

# Objetivo 🎶🌎

Para este proyecto, mi objetivo se basó en ver como varían los distintos gustos musicales con el correr de los años. Para esto decidí analizar los albums que estuvieron en el ranking desde los 90 hasta la actualidad.

<a name="trans"/>

# Extracción y transformación 🔍

En la extracción de datos utilice los tres métodos posibles: scrapeo utilización de la api de Spotify y descarga de database en kaggle.

Primero descargue una base de datos que me proporcione los albums que estuvieron en el top de más escuchados desde 1990 hasta 2021. La ordene según mis preferencias y necesidades.

Luego con la api de spotify extraje aquella información relevante para analizar mi objetivo. Desde la api, conseguí los id de los albums que importe de mi database y a partir de ahí extraje desde la api datos relevantes sobre los albums. Con la extracción desde la api genere dos tablas, albums y canciones. Siendo canciones todas las canciones que contiene cada album del top.

Por último realice un scrapeo de Wikipedia para obtener información sobre todos los artistas generando una nueva tabla con información relevante sobre cada artista.

<a name="sql"/>

# Guardado en SQL 🐬

Con las tablas de la extraccion, cargamos las tablas en MySQL donde determinamos las relaciones entre ellas y corriendo querys que reflejen nuestro objetivo.

<a name="info"/>

# Informacion y links  📂 🔗

[Database Kaggle](https://www.kaggle.com/datasets/nickadair44/top-10-annual-best-selling-albums-by-length)

[Pandas](https://pandas.pydata.org/)

[MySQL Workbench](https://www.mysql.com/products/workbench/)

[Spotify Api](https://developer.spotify.com/documentation/web-api)



