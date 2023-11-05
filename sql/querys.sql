-- Como ver que albums de los ranking siguen siendo populares hoy en dia 
select ar.Genre, a.Year, a.Artist, a.popularity

from artistas as ar
left join albums as a
on ar.Artist = a.Artist
order by a.popularity desc;

-- Que generos son los que mas se repiten en el top3 desde 1990 hasta 2021
select ar.Genre,count(*)as Generos

from artistas as ar
left join albums as a
on ar.Artist = a.Artist
group by ar.Genre
order by Generos desc;

-- Que albums y de que artistas recaudaron mas dinero mundialmente
select a.Year, c.Artist,a.Album,`Worldwide Sales` 

from albums as a
left join canciones as c
on a.album_id = c.album_id
order by `Worldwide Sales` desc;


-- Artistas que mas veces estuvieron en el top 3 
SELECT Artist, COUNT(*) AS Repeticiones
FROM albums
WHERE ranking <=3
GROUP BY Artist
ORDER BY Repeticiones DESC;

