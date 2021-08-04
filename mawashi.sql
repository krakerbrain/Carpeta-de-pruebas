CREATE TABLE autos(
  id SERIAL,
  marca VARCHAR(30),
  modelo VARCHAR(30),
  año INT,
  color VARCHAR(30),
PRIMARY KEY (id)
);

CREATE TABLE ventas(
    id_venta SERIAL,
    fecha DATE,
    id_auto INT,
    cliente VARCHAR (50),
    referencia VARCHAR (50),
    cantidad INT,
    PRIMARY KEY (id_venta),
    FOREIGN KEY (id_auto) REFERENCES 
    autos(id)
);

\copy Autos FROM 'C:\Users\Mario\Desktop\Desafios-Ecamp\Apoyo Lectura - Base de datos relacionales\autos.csv' csv [header];

SELECT * FROM autos;

SELECT
aut.marca as m,
aut.año as anio
FROM autos as aut;

INSERT INTO ventas
(fecha, id_auto, cliente, referencia, cantidad)
VALUES
('2021-11-01', 1, 'Juan Perez', 'A244', 1);

INSERT INTO ventas
(fecha, id_auto, cliente, referencia, cantidad)
VALUES
('2021-11-02', 2, 'Rogelio Perez', 'A243', 2);




