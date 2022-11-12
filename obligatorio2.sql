
-- script de algunas tablas
CREATE TABLE Equipo (
Id INTEGER PRIMARY KEY,
Nombre VARCHAR(20),
Estado ENUM('Producción', 'Service', 'Reparación', 'Desafectado'), 
FechaAdquirido timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP, 
Categoria ENUM('Vial', 'Construcción', 'Hidráulica', 'Terreno')
)

CREATE TABLE Obligatorio.Alquila (
Id INTEGER,
Documento INTEGER,
FInicio timestamp,
FFin timestamp,
PRIMARY KEY (Id, Documento, FInicio)
)

-- casos de prueba
INSERT INTO Obligatorio.Equipo (Id, Nombre, Estado, FechaAdquirido, Categoria) VALUES (0, 'equipo0', 'Producción', now(), 'Vial');
INSERT INTO Obligatorio.Equipo (Id, Nombre, Estado, FechaAdquirido, Categoria) VALUES (1, 'equipo1', 'Producción', now() - interval 1 month, 'Vial');
INSERT INTO Obligatorio.Equipo (Id, Nombre, Estado, FechaAdquirido, Categoria) VALUES (2, 'equipo2', 'Service', now() - interval 2 month, 'Construccion');
INSERT INTO Obligatorio.Equipo (Id, Nombre, Estado, FechaAdquirido, Categoria) VALUES (3, 'equipo3', 'Service', now() - interval 1 month, 'Construccion');
INSERT INTO Obligatorio.Equipo (Id, Nombre, Estado, FechaAdquirido, Categoria) VALUES (4, 'equipo4', 'Service', now() - interval 3 month, 'Hidraulica');
INSERT INTO Obligatorio.Equipo (Id, Nombre, Estado, FechaAdquirido, Categoria) VALUES (5, 'equipo5', 'Reparacion', now() - interval 4 month, 'Vial');
INSERT INTO Obligatorio.Equipo (Id, Nombre, Estado, FechaAdquirido, Categoria) VALUES (6, 'equipo6', 'Reparacion', now() - interval 5 month, 'Hidraulica');
INSERT INTO Obligatorio.Equipo (Id, Nombre, Estado, FechaAdquirido, Categoria) VALUES (7, 'equipo7', 'Desafectado', now() - interval 5 month, 'Terreno');
INSERT INTO Obligatorio.Equipo (Id, Nombre, Estado, FechaAdquirido, Categoria) VALUES (8, 'equipo8', 'Desafectado', now() - interval 12 month, 'Construccion');
INSERT INTO Obligatorio.Equipo (Id, Nombre, Estado, FechaAdquirido, Categoria) VALUES (9, 'equipo9', 'Desafectado', now() - interval 6 month, 'Terreno');

INSERT INTO Obligatorio.Contacto (Documento, Email, Nombre, Telefono, Tipo) VALUES (0, 'Contacto0@gmail', 'Contacto0', '00000','Tecnico');
INSERT INTO Obligatorio.Contacto (Documento, Email, Nombre, Telefono, Tipo) VALUES (1, 'Contacto1@gmail', 'Contacto1','11111', 'Cliente');
INSERT INTO Obligatorio.Contacto (Documento, Email, Nombre, Telefono, Tipo) VALUES (2, 'Contacto2@gmail', 'Contacto2','22222', 'Cliente');
INSERT INTO Obligatorio.Contacto (Documento, Email, Nombre, Telefono, Tipo) VALUES (3, 'Contacto3@gmail', 'Contacto3','33333', 'Cliente');
INSERT INTO Obligatorio.Contacto (Documento, Email, Nombre, Telefono, Tipo) VALUES (4, 'Contacto4@gmail', 'Contacto4','44444', 'Tecnico');
INSERT INTO Obligatorio.Contacto (Documento, Email, Nombre, Telefono, Tipo) VALUES (5, 'Contacto5@gmail', 'Contacto5','55555', 'Tecnico');
INSERT INTO Obligatorio.Contacto (Documento, Email, Nombre, Telefono, Tipo) VALUES (6, 'Contacto6@gmail', 'Contacto6','66666', 'Ingeniero');
INSERT INTO Obligatorio.Contacto (Documento, Email, Nombre, Telefono, Tipo) VALUES (7, 'Contacto7@gmail', 'Contacto7','77777', 'Ingeniero');
INSERT INTO Obligatorio.Contacto (Documento, Email, Nombre, Telefono, Tipo) VALUES (8, 'Contacto8@gmail', 'Contacto8','88888', 'Ingeniero');
INSERT INTO Obligatorio.Contacto (Documento, Email, Nombre, Telefono, Tipo) VALUES (9, 'Contacto9@gmail', 'Contacto9','99999', 'Tecnico');

INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (0, 0, now() - interval 6 month, now() - interval 1 month);
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (1, 1, now() - interval 7 month, now() - interval 1 month);
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (2, 2, now() - interval 8 month, now() - interval 1 month);
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (3, 3, now() - interval 9 month, now() - interval 2 month);
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (4, 4, now() - interval 10 month, now() - interval 3 month);
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (5, 5, now() - interval 11 month, now() - interval 4 month);
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (6, 6, now() - interval 12 month, now() - interval 6 month);
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (7, 7, now() - interval 2 month, now() - interval 1 month);
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (8, 8, now() - interval 3 month, now() - interval 1 month);
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (9, 9, now() - interval 4 month, now() - interval 1 month);

INSERT INTO Obligatorio.Proyecto (NroProy, Nombre, Descripcion, FFinalizacion) VALUES (0, 'proy0', 'proy0proy0proy0', now() - interval 6 month);
INSERT INTO Obligatorio.Proyecto (NroProy, Nombre, Descripcion, FFinalizacion) VALUES (1, 'proy1', 'proy1proy1proy1', now() - interval 5 month);
INSERT INTO Obligatorio.Proyecto (NroProy, Nombre, Descripcion, FFinalizacion) VALUES (2, 'proy2', 'proy2proy2proy2', now() - interval 4 month);
INSERT INTO Obligatorio.Proyecto (NroProy, Nombre, Descripcion, FFinalizacion) VALUES (3, 'proy3', 'proy3proy3proy3', now() - interval 3 month);
INSERT INTO Obligatorio.Proyecto (NroProy, Nombre, Descripcion, FFinalizacion) VALUES (4, 'proy4', 'proy4proy4proy4', now() - interval 2 month);
INSERT INTO Obligatorio.Proyecto (NroProy, Nombre, Descripcion, FFinalizacion) VALUES (5, 'proy5', 'proy5proy5proy5', now() - interval 1 month);
INSERT INTO Obligatorio.Proyecto (NroProy, Nombre, Descripcion, FFinalizacion) VALUES (6, 'proy6', 'proy6proy6proy6', now() - interval 4 month);
INSERT INTO Obligatorio.Proyecto (NroProy, Nombre, Descripcion, FFinalizacion) VALUES (7, 'proy7', 'proy7proy7proy7', now() - interval 5 month);
INSERT INTO Obligatorio.Proyecto (NroProy, Nombre, Descripcion, FFinalizacion) VALUES (8, 'proy8', 'proy8proy8proy8', now() - interval 2 month);
INSERT INTO Obligatorio.Proyecto (NroProy, Nombre, Descripcion, FFinalizacion) VALUES (9, 'proy9', 'proy9proy9proy9', now() - interval 1 month);

INSERT INTO Obligatorio.Contrata (NroProy, Documento) VALUES (0, 0);
INSERT INTO Obligatorio.Contrata (NroProy, Documento) VALUES (1, 1);
INSERT INTO Obligatorio.Contrata (NroProy, Documento) VALUES (2, 2);
INSERT INTO Obligatorio.Contrata (NroProy, Documento) VALUES (3, 3);
INSERT INTO Obligatorio.Contrata (NroProy, Documento) VALUES (4, 4);
INSERT INTO Obligatorio.Contrata (NroProy, Documento) VALUES (5, 5);
INSERT INTO Obligatorio.Contrata (NroProy, Documento) VALUES (6, 6);
INSERT INTO Obligatorio.Contrata (NroProy, Documento) VALUES (7, 7);
INSERT INTO Obligatorio.Contrata (NroProy, Documento) VALUES (8, 8);
INSERT INTO Obligatorio.Contrata (NroProy, Documento) VALUES (9, 9);

INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (0, 0, 'tarea0', now() - interval 1 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (2, 2, 'tarea2', now() - interval 2 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (3, 3, 'tarea3', now() - interval 3 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (4, 4, 'tarea4', now() - interval 3 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (5, 5, 'tarea5', now() - interval 1 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (6, 6, 'tarea6', now() - interval 1 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (7, 7, 'tarea7', now() - interval 3 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (8, 8, 'tarea8', now() - interval 2 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (9, 9, 'tarea9', now() - interval 2 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (1, 1, 'tarea1', now() - interval 6 month);


-- 1)
-- Obtener para los equipos que sean de categoría vial, el nombre de los contactos que los
--alquilaron. Considerar aquellos equipos que fueron alquilados al menos una vez y dicho
--alquiler haya iniciado en junio de 2022.
SELECT C.Nombre
FROM Contacto C 
INNER JOIN Alquila A ON A.Documento = C.Documento
INNER JOIN Equipo E ON E.Id = A.Id 
WHERE E.Categoria = 'Vial' 
AND MONTH(A.FInicio) = 6 AND YEAR(A.FInicio) = 2022

-- casos de prueba
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (0, 8, now() - interval 4 month, now() - interval 1 month);
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (0, 7, now() - interval 4 month, now() - interval 1 month);
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (0, 9, now() - interval 4 month, now() - interval 1 month);

-- 2)
--  Obtener el nombre, teléfono y tipo de contacto para aquellos contactos que hayan alquilado
-- equipos de construcción o vial pero no de ambas categorías. Considerar solo los alquileres de
-- la primera quincena de setiembre de 2022.

SELECT C.Nombre, C.Telefono, C.Tipo
FROM Contacto C
INNER JOIN Alquila A ON A.Documento = C.Documento
INNER JOIN Equipo E ON E.Id = A.Id 
WHERE (E.Categoria = 'Construccion' OR E.Categoria = 'Vial')
AND MONTH(A.FInicio) = 9 AND YEAR(A.FInicio) = 2022 AND DAY(A.FInicio) <= 15
-- TODO: Preguntar si solo importa la fecha de inicio o tmb la fecha de finalizacion tiene q ser dentro de la primera quincena de 2022
AND MONTH(A.FFin) = 9 AND YEAR(A.FFin) = 2022 AND DAY(A.FFin) <= 15

-- casos de prueba
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (0, 6, now() - interval 1 month, now());
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (2, 5, now() - interval 1 month, now());
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (2, 4, now() - interval 1 month, now());

-- 3)
-- Obtener la descripción y la fecha de realización de la tarea que se realizó primero dentro del
-- proyecto “Renovación hidráulica”. Si hay más de una tarea con esta condición, mostrarlas todas.


-- TODO: PREGUNTARLE, MOSTRARLE LAS DOS OPCIONES Y VER SI DE LA SEGUNDA HAY UNA MEJOR MANERA.
-- RARO PORQ SI HAY MAS DE UNA SOLO VA A TRAER 1 POR EL LIMIT 1, PREGUNTA: no entiendo como mostrar la primera tarea pero si hay mas de una mostrarlas todas?
-- SELECT T.Descripcion, T.FRealizacion, DAY(T.FRealizacion) as dia, MONTH(T.FRealizacion) as mes
-- FROM Tarea T
-- INNER JOIN Proyecto P ON P.NroProy = T.NroProy
-- WHERE P.Nombre = 'Renovacion hidraulica'
-- ORDER BY T.FRealizacion ASC LIMIT 1

SELECT T.Descripcion, T.FRealizacion
FROM Tarea T
INNER JOIN Proyecto P ON P.NroProy = T.NroProy
WHERE P.Nombre = 'Renovacion hidraulica'
AND T.FRealizacion = (
    SELECT T.FRealizacion 
    FROM Tarea T
    INNER JOIN Proyecto P ON P.NroProy = T.NroProy
    WHERE P.Nombre = 'Renovacion hidraulica'
    ORDER BY T.FRealizacion ASC LIMIT 1)


--datos de prueba
INSERT INTO Obligatorio.Proyecto (NroProy, Nombre, Descripcion, FFinalizacion) VALUES (10, 'Renovacion hidraulica', 'proy9proy9proy9', now() - interval 1 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (10, 10, 'tarea10', now() - interval 6 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (10, 11, 'tarea11', now() - interval 6 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (10, 12, 'tarea12', now() - interval 6 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (10, 13, 'tarea13', now() - interval 6 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (10, 14, 'tarea14', now() - interval 10 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (10, 15, 'tarea15', now() - interval 2 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (10, 16, 'tarea16', now() - interval 10 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (10, 17, 'tarea17', now() - interval 12 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (10, 18, 'tarea18', now() - interval 12 month);


-- 4)
-- Obtener el documento y nombre de los contactos que hayan contratado más de un proyecto,
-- así como también los números de los proyectos que contrató. Considerar aquellos proyectos
-- que aún no estén terminados.

-- PREGUNTA: como mostramos los nros de proyectos de cada uno?
SELECT C.Documento, C.Nombre
FROM Obligatorio.Contacto C
INNER JOIN Obligatorio.Contrata CC ON CC.Documento = C.Documento
INNER JOIN Obligatorio.Proyecto P ON P.NroProy = CC.NroProy
WHERE P.FFinalizacion IS NULL
GROUP BY C.Documento, C.Nombre
HAVING COUNT(CC.NroProy) > 1

--datos de prueba
INSERT INTO Obligatorio.Proyecto (NroProy, Nombre, Descripcion, FFinalizacion) VALUES (11, 'Unfinished', 'UnfinishedUnfinished', NULL);
INSERT INTO Obligatorio.Proyecto (NroProy, Nombre, Descripcion, FFinalizacion) VALUES (12, 'Unfinished', 'UnfinishedUnfinished', NULL);
INSERT INTO Obligatorio.Proyecto (NroProy, Nombre, Descripcion, FFinalizacion) VALUES (13, 'Unfinished', 'UnfinishedUnfinished', NULL);
INSERT INTO Obligatorio.Contrata (NroProy, Documento) VALUES (11, 0);
INSERT INTO Obligatorio.Contrata (NroProy, Documento) VALUES (12, 0);
INSERT INTO Obligatorio.Contrata (NroProy, Documento) VALUES (13, 0);
INSERT INTO Obligatorio.Contrata (NroProy, Documento) VALUES (11, 2);
INSERT INTO Obligatorio.Contrata (NroProy, Documento) VALUES (12, 2);
INSERT INTO Obligatorio.Contrata (NroProy, Documento) VALUES (13, 2);

-- 5)
-- Obtener el id de los equipos que hayan sido alquilados por todos los contactos. Considerar
-- únicamente aquellos equipos cuyo estado sea “Service” y la fecha adquirida haya sido en el 2022.

SELECT E.Id
FROM Equipo E
INNER JOIN Alquila A ON A.Id = E.Id
WHERE E.Estado = 'Service' AND YEAR(E.FechaAdquirido) = 2022
GROUP BY E.Id
HAVING COUNT(DISTINCT A.Documento) = (SELECT COUNT(*) FROM Contacto)

-- datos de prueba
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (2, 0, now() - interval 1 month, now());
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (2, 1, now() - interval 1 month, now());
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (2, 2, now() - interval 1 month, now());
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (2, 3, now() - interval 1 month, now());
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (2, 4, now() - interval 1 month, now());
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (2, 5, now() - interval 1 month, now());
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (2, 6, now() - interval 1 month, now());
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (2, 7, now() - interval 1 month, now());
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (2, 8, now() - interval 1 month, now());
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (2, 9, now() - interval 1 month, now());


-- 6)
-- Obtener todos los datos de las tareas, así como también el nombre del proyecto al que
-- pertenecen. Para las tareas realizadas, mostrar la fecha de realización y para aquellas
-- pendientes, mostrar el texto “Pendiente de realización”. Considerar aquellos proyectos que tengan al menos 3 tareas

SELECT T.IdTarea, T.Descripcion, P.Nombre, IF(T.FRealizacion IS NULL, 'Pendiente de realizacion', T.FRealizacion) AS FRealizacion
FROM Obligatorio.Tarea T
INNER JOIN Obligatorio.Proyecto P ON P.NroProy = T.NroProy
WHERE P.NroProy IN (SELECT NroProy FROM Obligatorio.Tarea GROUP BY NroProy HAVING COUNT(*) >= 3)

-- daatos de prueba
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (2, 10, 'unfinished1', NULL);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (2, 11, 'unfinished2', NULL);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (2, 12, 'unfinished2', now() - interval 1 month);

-- 7)
-- Obtener para cada ingeniero, la cantidad de equipos que alquiló. Considerar únicamente los tipos “Construcción” y “Terreno”.

SELECT C.Documento, C.Nombre, COUNT(*) AS Cantidad
FROM Contacto C
INNER JOIN Alquila A ON A.Documento = C.Documento
INNER JOIN Equipo E ON E.Id = A.Id
WHERE C.Tipo = 'Ingeniero' AND E.Categoria IN ('Construccion', 'Terreno')
GROUP BY C.Documento, C.Nombre

-- datos de prueba
INSERT INTO Obligatorio.Contacto (Documento, Email, Nombre, Telefono, Tipo) VALUES (11, 'Contacto11@gmail', 'Contacto11','1111111111', 'Ingeniero');
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (2, 11, now() - interval 4 month, now() - interval 1 month);
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (3, 11, now() - interval 4 month, now() - interval 1 month);
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (7, 11, now() - interval 4 month, now() - interval 1 month);
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (9, 11, now() - interval 4 month, now() - interval 1 month);


-- 8) Obtener el documento y nombre 
-- de los contactos que alquilaron la mayor cantidad de equipos distintos. 
-- Considerar solamente contactos que hayan contratado proyectos que finalizaron dentro de los últimos 30 días

-- Procedimiento:
-- 1) selecciono la mayor cantidad de equipos distintos que alquilaron los contactos:
SELECT MAX(Cantidad)
FROM (SELECT COUNT(DISTINCT A.Id) AS Cantidad
FROM Obligatorio.Contacto C
INNER JOIN Obligatorio.Alquila A ON A.Documento = C.Documento
INNER JOIN Obligatorio.Contrata Co ON Co.Documento = C.Documento
INNER JOIN Obligatorio.Proyecto P ON P.NroProy = Co.NroProy
WHERE P.FFinalizacion > now() - interval 30 day
GROUP BY C.Documento, C.Nombre) AS T


-- 2) selecciono los contactos que hayan alquilado esa cantidad de equipos distintos, osea, uso HAVING 
-- 3) Fijarme que la fecha de finalizacion del proyecto este entre los ultimos 30 dias
SELECT C.Documento, C.Nombre
FROM Obligatorio.Contacto C
INNER JOIN Obligatorio.Alquila A ON A.Documento = C.Documento
INNER JOIN Obligatorio.Contrata Co ON Co.Documento = C.Documento
INNER JOIN Obligatorio.Proyecto P ON P.NroProy = Co.NroProy
WHERE P.FFinalizacion > now() - interval 30 day
GROUP BY C.Documento, C.Nombre
HAVING COUNT(DISTINCT A.Id) = (SELECT MAX(Cantidad)
FROM (SELECT COUNT(DISTINCT A.Id) AS Cantidad
FROM Obligatorio.Contacto C
INNER JOIN Obligatorio.Alquila A ON A.Documento = C.Documento
INNER JOIN Obligatorio.Contrata Co ON Co.Documento = C.Documento
INNER JOIN Obligatorio.Proyecto P ON P.NroProy = Co.NroProy
WHERE P.FFinalizacion > now() - interval 30 day
GROUP BY C.Documento, C.Nombre) AS T)

-- datos de prueba
-- contacto: 
INSERT INTO Obligatorio.Contacto (Documento, Email, Nombre, Telefono, Tipo) VALUES (12, 'Contacto12@gmail', 'Contacto12','12121212', 'Ingeniero');

-- proyectos que hayan finalizado en los ultimos 30 dias
INSERT INTO Obligatorio.Proyecto (NroProy, Nombre, Descripcion, FFinalizacion) VALUES (14, 'proy0', 'proy0proy0proy0', now() - interval 6 day);
INSERT INTO Obligatorio.Proyecto (NroProy, Nombre, Descripcion, FFinalizacion) VALUES (15, 'proy0', 'proy0proy0proy0', now() - interval 6 day);
INSERT INTO Obligatorio.Proyecto (NroProy, Nombre, Descripcion, FFinalizacion) VALUES (16, 'proy0', 'proy0proy0proy0', now() - interval 6 day);
INSERT INTO Obligatorio.Proyecto (NroProy, Nombre, Descripcion, FFinalizacion) VALUES (17, 'proy0', 'proy0proy0proy0', now() - interval 6 day);
INSERT INTO Obligatorio.Proyecto (NroProy, Nombre, Descripcion, FFinalizacion) VALUES (18, 'proy0', 'proy0proy0proy0', now() - interval 6 day);
INSERT INTO Obligatorio.Proyecto (NroProy, Nombre, Descripcion, FFinalizacion) VALUES (19, 'proy0', 'proy0proy0proy0', now() - interval 6 day);
INSERT INTO Obligatorio.Proyecto (NroProy, Nombre, Descripcion, FFinalizacion) VALUES (20, 'proy0', 'proy0proy0proy0', now() - interval 6 day);

-- contacto 12 alquila en total 20 proyectos: (el máximo que se ha alquilado)
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (14, 12, now() - interval 6 month, now() - interval 1 day);
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (15, 12, now() - interval 6 month, now() - interval 1 day);
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (16, 12, now() - interval 6 month, now() - interval 1 day);
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (17, 12, now() - interval 6 month, now() - interval 1 day);
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (18, 12, now() - interval 6 month, now() - interval 1 day);
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (19, 12, now() - interval 6 month, now() - interval 1 day);
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (20, 12, now() - interval 6 month, now() - interval 1 day);
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (31, 12, now() - interval 6 month, now() - interval 1 day);
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (32, 12, now() - interval 6 month, now() - interval 1 day);
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (33, 12, now() - interval 6 month, now() - interval 1 day);

-- contacto 12 contrata 
INSERT INTO Obligatorio.Contrata (NroProy, Documento) VALUES (14, 12);
INSERT INTO Obligatorio.Contrata (NroProy, Documento) VALUES (15, 12);
INSERT INTO Obligatorio.Contrata (NroProy, Documento) VALUES (16, 12);
INSERT INTO Obligatorio.Contrata (NroProy, Documento) VALUES (17, 12);
INSERT INTO Obligatorio.Contrata (NroProy, Documento) VALUES (18, 12);
INSERT INTO Obligatorio.Contrata (NroProy, Documento) VALUES (19, 12);
INSERT INTO Obligatorio.Contrata (NroProy, Documento) VALUES (20, 12);


