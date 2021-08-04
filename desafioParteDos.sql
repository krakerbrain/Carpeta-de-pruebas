--Parte 2

--1. Crear una nueva tabla llamada “comentarios”, con los atributos id, fecha, 
--hora de creación y contenido, que se relacione con la tabla posts.

CREATE TABLE comentarios (
ID_coment SERIAL,
ID_post INT,
fecha DATE,
hora_creacion TIME,
contenido VARCHAR(300),
PRIMARY KEY (ID_coment),
FOREIGN KEY (ID_post) REFERENCES posts (ID));

--2. Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos".

INSERT INTO comentarios 
(ID_post, fecha, hora_creacion, contenido) VALUES
(1, '2021-08-01', ' 15:25:02', 'te estaba escribiendo un MP para enviarte el enlace. Qué rápida eres');

INSERT INTO comentarios 
(ID_post, fecha, hora_creacion, contenido) VALUES
(1, '2021-08-02', ' 18:15:22', 'entonces estas de acuerdo conmigo? no crees q me he rallado demasiado?jejeje, bueno tengo ganas de saber la respuesta.');

--3. Crear un nuevo post para "Margarita".

INSERT INTO posts 
(nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES
('Margarita', '2021-08-02', 'Citas al comienzo de libros', 'Yo quiero que aquí pongamos aquellas citas al principio del libro que nos meten en ambiente', 'Citas');

--4. Ingresar 5 comentarios para el post de Margarita.

INSERT INTO comentarios 
(ID_post, fecha, hora_creacion, contenido) VALUES
(7, '2021-08-03', ' 21:27:02', 'Me gusta el hilo, siempre me ha preguntado qué que el escritor se decida por esta o aquella cita...
luego miro');

INSERT INTO comentarios 
(ID_post, fecha, hora_creacion, contenido) VALUES
(7, '2021-08-03', ' 11:13:02', 'Quiero hablarte de la obra que me ocupa actualmente.
Apenas si me atrevo a confesar mi osadía pero la he ubicado en América del Sur');

INSERT INTO comentarios 
(ID_post, fecha, hora_creacion, contenido) VALUES
(7, '2021-08-04', ' 08:21:02', 'Las palmeras de cartón, Antonio Mingote "La noche, el día, el día, la noche, las nubes y los peces voladores" Jules Supervielle');

INSERT INTO comentarios 
(ID_post, fecha, hora_creacion, contenido) VALUES
(7, '2021-08-05', ' 06:08:02', 'Yo creo que madison había abierto un hilo similar a este. Lo he buscado pero no lo he encontrado.');

INSERT INTO comentarios 
(ID_post, fecha, hora_creacion, contenido) VALUES
(7, '2021-08-05', ' 04:04:02', 'Como he estado unos días fuera, pues estoy viendo las novedades del subforo y automáticamente pensé en ese');

