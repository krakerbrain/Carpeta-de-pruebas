
--Parte 1
--1. Crear una base de datos con nombre “Posts”.

CREATE DATABASE Posts;

--2. Crear una tabla “post”, con los atributos id, nombre de usuario, 
--fecha de creación, contenido y descripción.

CREATE TABLE posts (
ID SERIAL,
nombre_usuario VARCHAR(25),
fecha_creacion DATE,
contenido VARCHAR(255),
descripcion VARCHAR(255),
PRIMARY KEY (id));

--3. Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos".

INSERT INTO posts 
(nombre_usuario, fecha_creacion, contenido, descripcion) VALUES
('Pamela', '2021-07-27', 'Miniclub trimestral sobre FEMINISMO', 'Entre mis retos de 2019 está leer más sobre feminismo, y propongo que sea una lectura compartida, para generar debate, intercambiar opiniones, aprender... Abierto a todos y todas cuntos quieran).');
INSERT INTO posts 
(nombre_usuario, fecha_creacion, contenido, descripcion) VALUES
('Pamela', '2021-07-28', 'Información y recomendación sobre libros y autores', 'Hola resulta q tengo una asignatura en la universidad que me pide una pregunta imposible');
INSERT INTO posts 
(nombre_usuario, fecha_creacion, contenido, descripcion) VALUES
('Carlos', '2021-07-29', 'Juego. El ahorcado de libros (IX)', 'Seguimos aquí. El juego es el tradicional del ahorcado');

--4. Modificar la tabla post, agregando la columna título.

ALTER TABLE posts ADD titulo VARCHAR(100);

--5. Agregar título a las publicaciones ya ingresadas.

UPDATE posts 
SET titulo = 'Feminismo'
WHERE id = '1';

UPDATE posts 
SET titulo = 'Recomendaciones'
WHERE id = '2';

UPDATE posts 
SET titulo = 'Juego'
WHERE id = '3';

--6. Insertar 2 post para el usuario "Pedro".

INSERT INTO posts 
(nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES
('Pedro', '2021-07-30', 'Podcasts de literatura', 'No he encontrado en el índice ningún tema dedicado a los "Podcasts", sí sobre programas de televisión.', 'Podcast');
INSERT INTO posts 
(nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES
('Pedro', '2021-07-31', 'Noticias sobre premios literarios', 'Los de La casa del libro ya andan vendiendo este libro, con envío gratis comprándolo desde internet.', 'Premios');


--7. Eliminar el post de Carlos.

DELETE FROM posts WHERE nombre_usuario='Carlos';

--8. Ingresar un nuevo post para el usuario "Carlos".

INSERT INTO posts 
(nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES
('Carlos', '2021-08-01', 'Librerías del mundo', 'Como tenemos un hilo dedicado a las bibliotecas del mundo, decidi abrir uno de librerias', 'Librerias');

C:\Users\Mario\Desktop\Desafios-Ecamp\Apoyo Lectura - Base de datos relacionales