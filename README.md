# Projecto ETL

![Portada](/img/portada.jpg)

# Objetivo 🎶🌎

Para este proyecto, mi objetivo se baso en ver como varian los distintos gustos musicales con el correr de los anos. Para esto decidi analizar los albums que estuvieron en el ranking desde los 90 hasta la actualidad.

# Extraccion y transformacion 🔍

En la extraccion de datos utilice los tres metodos posibles: scrapeo, utlizacion de la api de spotify y descarga de database en kaggle.

Primero descargue una base de datos que me proporcione los albums que estuvieron en el top de mas escuchados desde 1990 hasta 2021. La ordene segun mis preferencias y necesidades.

Luego con la api de spotify extrai aquella informacion relevante para analizar mi objetivo. Desde la api, consegui los id de los albums que importe de mi database y a partir de ahi extraje desde la api datos relevantes sobre los albums. Con la extraccion desde la api genere dos tablas, albums y canciones. Siendo canciones todas las canciones que contiene cada album del top.

Por ultimo realice un scrapeo de wikipedia para obtener informacion sobre todos los artistas generando una nueva tabla con informacion relevante sobre cada artista.

# Guardado en SQL 🐬

Con las tablas de la extraccion, cargamos las tablas en MySQL donde determinamos las relaciones entre ellas y corriendo querys que reflejen nuestro objetivo.

# Informacion y links  📂 🔗

[Database Kaggle](https://www.kaggle.com/datasets/nickadair44/top-10-annual-best-selling-albums-by-length)

[Pandas](https://pandas.pydata.org/)

[MySQL Workbench](https://www.mysql.com/products/workbench/)

[Spotify Api](https://developer.spotify.com/documentation/web-api)



