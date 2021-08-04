--1. Crear base de datos llamada películas.

CREATE DATABASE peliculas;

CREATE TABLE peliculas(
    id INT,
    pelicula VARCHAR(100),
    ano_estreno INT, 
    director VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE reparto(
    id_reparto SERIAL,
    id INT,
    nombre_actor VARCHAR(50),
    PRIMARY KEY (id_reparto),
    FOREIGN KEY (id) REFERENCES peliculas(id)
);

--2. Cargar ambos archivos a su tabla correspondiente.

\copy peliculas FROM 'C:\Users\Mario\Desktop\Desafios-Ecamp\Desafio_Top_100\peliculas.csv' csv header;
\copy reparto FROM 'C:\Users\Mario\Desktop\Desafios-Ecamp\Desafio_Top_100\reparto.csv' csv;


--3. Obtener el ID de la película “Titanic”.

SELECT id 
AS id_titanic
FROM peliculas 
WHERE pelicula='Titanic';

--4. Listar a todos los actores que aparecen en la película "Titanic".

SELECT nombre_actor 
AS reparto_titanic
FROM reparto 
WHERE id=2;

--5. Consultar en cuántas películas del top 100 participa Harrison Ford.

SELECT COUNT(id) 
AS Harrison_Ford_participaciones
FROM reparto 
WHERE nombre_actor='Harrison Ford';

--6. Indicar las películas estrenadas entre los años 1990 y 1999 ordenadas por título de
--manera ascendente.

SELECT pelicula, ano_estreno 
FROM peliculas 
WHERE ano_estreno 
BETWEEN 1990 AND 1999 
GROUP BY pelicula, ano_estreno 
ORDER BY pelicula 
ASC;

--7. Hacer una consulta SQL que muestre los títulos con su longitud, la longitud debe ser
--nombrado para la consulta como “longitud_titulo”.

SELECT pelicula, LENGTH(pelicula) 
AS longitud_titulo 
FROM peliculas 
ORDER BY longitud_titulo;
 
--8. Consultar cual es la longitud más grande entre todos los títulos de las películas.

SELECT pelicula, MAX(LENGTH(pelicula)) 
AS longitud_titulo 
FROM peliculas 
WHERE LENGTH(pelicula) = (SELECT MAX(LENGTH(pelicula))  FROM peliculas) GROUP BY pelicula;