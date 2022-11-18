
-- PREGUNTAS DE LETRA:
-- Esta bien usar MONTH() y DAY() para obtener eso 
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






-- datos de prueba
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

CREATE TABLE Obligatorio.Contacto (
Documento INTEGER,
Email VARCHAR(20),
Nombre VARCHAR(20),
Telefono VARCHAR(20),
Tipo ENUM('Cliente', 'Tecnico', 'Ingeniero'),
PRIMARY KEY (Documento)
)

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


CREATE TABLE Obligatorio.Proyecto (
NroProy INTEGER,
Nombre VARCHAR(20),
Descripcion VARCHAR(20),
FFinalizacion timestamp
PRIMARY KEY (NroProy)
)


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

CREATE TABLE Obligatorio.Contrata (
NroProy INTEGER,
Documento INTEGER
PRIMARY KEY (NroProy, Documento)
)

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

CREATE TABLE Obligatorio.Tarea (
NroProy INTEGER,
IdTarea INTEGER,
Descripcion VARCHAR(20),
FRealizacion timestamp
PRIMARY KEY (NroProy, IdTarea)
)

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
-- alquilaron. Considerar aquellos equipos que fueron alquilados al menos una vez y dicho
-- alquiler haya iniciado en junio de 2022.

--OPCION 1, ME TRAIGO TODOS LOS CONTACTOS
SELECT C.Nombre
FROM Obligatorio.Equipo E, Obligatorio.Alquila A, Obligatorio.Contacto C
WHERE E.Id = A.Id
AND A.Documento = C.Documento
AND E.Categoria = 'Vial'
AND E.Id IN (
    SELECT A.Id
    FROM Obligatorio.Alquila A
    WHERE MONTH(A.FInicio) = 6 AND YEAR(A.FInicio) = 2022
)

--OPCION 2, ME TRAIGO SOLO LOS CONTACTOS Q HAYAN ALQUILADO EN ESE MES Y AÑO
-- SELECT C.Nombre
-- FROM Contacto C 
-- INNER JOIN Alquila A ON A.Documento = C.Documento
-- INNER JOIN Equipo E ON E.Id = A.Id 
-- WHERE E.Categoria = 'Vial' 
-- AND MONTH(A.FInicio) = 6 AND YEAR(A.FInicio) = 2022

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
-- TODO: CONSIDERO TODOS LOS PROYECTOS, NO SOLOS LOS QUE NO ESTEN TERMINADOS

-- PREGUNTA: como mostramos los nros de proyectos de cada uno?
SELECT C.Documento, C.Nombre
FROM Obligatorio.Contacto C
INNER JOIN Obligatorio.Contrata CC ON CC.Documento = C.Documento
INNER JOIN Obligatorio.Proyecto P ON P.NroProy = CC.NroProy
-- WHERE P.FFinalizacion IS NULL 
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



-- TODO: CASTEAR PARA Q LO Q DEVUELVO SEA UN STRING
SELECT T.IdTarea, T.Descripcion, P.Nombre, CAST(T.FRealizacion) AS Fecha 
FROM Obligatorio.Tarea T
INNER JOIN Obligatorio.Proyecto P ON P.NroProy = T.NroProy
WHERE Fecha IS NOT NULL
AND P.NroProy IN (SELECT NroProy FROM Obligatorio.Tarea GROUP BY NroProy HAVING COUNT(*) >= 3)
UNION
SELECT T.IdTarea, T.Descripcion, P.Nombre, 'Pendiente de realizacion' AS Fecha 
FROM Obligatorio.Tarea T
INNER JOIN Obligatorio.Proyecto P ON P.NroProy = T.NroProy
WHERE Fecha IS NULL
AND P.NroProy IN (SELECT NroProy FROM Obligatorio.Tarea GROUP BY NroProy HAVING COUNT(*) >= 3)

-- daatos de prueba
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (2, 10, 'unfinished1', NULL);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (2, 11, 'unfinished2', NULL);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (2, 12, 'unfinished2', now() - interval 1 month);

-- 7)
-- Obtener para cada ingeniero, la cantidad de equipos que alquiló. Considerar únicamente los tipos “Construcción” y “Terreno”.

SELECT C.Documento, C.Nombre, COUNT(A.Id) AS Cantidad
FROM Contacto C
INNER JOIN Alquila A ON A.Documento = C.Documento
INNER JOIN Equipo E ON E.Id = A.Id
WHERE C.Tipo = 'Ingeniero' 
AND E.Categoria IN ('Construccion', 'Terreno')
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
-- 2) selecciono los contactos que hayan alquilado esa cantidad de equipos distintos, osea, uso HAVING 
-- 3) Fijarme que la fecha de finalizacion del proyecto este entre los ultimos 30 dias

-- NO PUEDO HACER SELECT ADENTRO DEL FROM
-- SELECT C.Documento, C.Nombre
-- FROM Obligatorio.Contacto C
-- INNER JOIN Obligatorio.Alquila A ON A.Documento = C.Documento
-- INNER JOIN Obligatorio.Contrata Co ON Co.Documento = C.Documento
-- INNER JOIN Obligatorio.Proyecto P ON P.NroProy = Co.NroProy
-- WHERE P.FFinalizacion > now() - interval 30 day
-- GROUP BY C.Documento, C.Nombre
-- HAVING COUNT(DISTINCT A.Id) = (SELECT MAX(Cantidad)
-- FROM (SELECT COUNT(DISTINCT A.Id) AS Cantidad
-- FROM Obligatorio.Contacto C
-- INNER JOIN Obligatorio.Alquila A ON A.Documento = C.Documento
-- INNER JOIN Obligatorio.Contrata Co ON Co.Documento = C.Documento
-- INNER JOIN Obligatorio.Proyecto P ON P.NroProy = Co.NroProy
-- WHERE P.FFinalizacion > now() - interval 30 day
-- GROUP BY C.Documento, C.Nombre) AS T)


SELECT C.Documento, C.Nombre
FROM Obligatorio.Contacto C
INNER JOIN Obligatorio.Alquila A ON A.Documento = C.Documento
INNER JOIN Obligatorio.Contrata Co ON Co.Documento = C.Documento
INNER JOIN Obligatorio.Proyecto P ON P.NroProy = Co.NroProy
WHERE P.FFinalizacion > now() - interval 30 day
GROUP BY C.Documento, C.Nombre
HAVING COUNT(DISTINCT A.Id) = (SELECT MAX(COUNT(DISTINCT A.Id))
FROM Obligatorio.Contacto C
INNER JOIN Obligatorio.Alquila A ON A.Documento = C.Documento
INNER JOIN Obligatorio.Contrata Co ON Co.Documento = C.Documento
INNER JOIN Obligatorio.Proyecto P ON P.NroProy = Co.NroProy
WHERE P.FFinalizacion > now() - interval 30 day
GROUP BY C.Documento, C.Nombre


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

-- 10) 
-- Obtener para las categorías de equipo vial y construcción los contactos que alquilaron equipos
-- de dichas categorías y la cantidad total de alquileres que realizó dicho contacto para esa
-- categoría. Obtener el porcentaje que representa esta cantidad sobre el total de alquileres para
-- cada categoría solicitada. Además, obtener el nombre del proyecto en el cual se realizaron la
-- mayor cantidad de tareas dentro de cada categoría solicitada (si hay más de un proyecto con
-- la mayor cantidad de tareas, se deben listar todos ellos).



--casos de prueba
-- contacto 22 es el que va a alquilar
INSERT INTO Obligatorio.Contacto (Documento, Email, Nombre, Telefono, Tipo) VALUES (22, 'Contacto11@gmail', 'PruebaEj10!!!!','1111111111', 'Ingeniero');

-- 4 equipos de categoria vial 
INSERT INTO Obligatorio.Equipo (Id, Nombre, Estado, FechaAdquirido, Categoria) VALUES (200, '200200', 'Producción', now(), 'Vial');
INSERT INTO Obligatorio.Equipo (Id, Nombre, Estado, FechaAdquirido, Categoria) VALUES (201, '201201', 'Producción', now() - interval 1 month, 'Vial');
INSERT INTO Obligatorio.Equipo (Id, Nombre, Estado, FechaAdquirido, Categoria) VALUES (202, '202202', 'Producción', now(), 'Vial');
INSERT INTO Obligatorio.Equipo (Id, Nombre, Estado, FechaAdquirido, Categoria) VALUES (203, '203203', 'Producción', now() - interval 1 month, 'Vial');

-- contacto 22 alquila 4 equipos de categoria vial
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (200, 22, now() - interval 6 month, now() - interval 1 day);
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (201, 22, now() - interval 6 month, now() - interval 1 day);
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (202, 22, now() - interval 6 month, now() - interval 1 day);
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (203, 22, now() - interval 6 month, now() - interval 1 day);


-- ME GUSTAAAAAAAA, FUNCIONA LA PRIMERA PARTE Y A ANA BARBITTA CREO Q LE GUSTO
SELECT E.Categoria, C.Documento, C.Nombre, COUNT(A.Id) AS Cantidad,
CASE
    WHEN E.Categoria = 'Vial' THEN (COUNT(A.Id) * 100) / (SELECT COUNT(*) FROM Obligatorio.Alquila WHERE Id IN (SELECT Id FROM Obligatorio.Equipo   WHERE Categoria = 'Vial'))
WHEN E.Categoria = 'Construccion' THEN (COUNT(A.Id) * 100) / (SELECT COUNT(*) FROM Obligatorio.Alquila WHERE Id IN (SELECT Id FROM Obligatorio.Equipo 
WHERE Categoria = 'Construccion'))
END AS Porcentaje
FROM Obligatorio.Contacto C
INNER JOIN Obligatorio.Alquila A ON A.Documento = C.Documento
INNER JOIN Obligatorio.Equipo E ON E.Id = A.Id
WHERE E.Categoria = 'Vial' OR E.Categoria = 'Construccion'
GROUP BY C.Documento, C.Nombre, E.Categoria


-- INTENTO DE SEGUNDA PARTE
HAVING COUNT(DISTINCT T.IdTarea) = (SELECT MAX(Cantidad) --de todas esas filas, me quedo con el maximo count
FROM (SELECT COUNT(DISTINCT T.IdTarea) AS Cantidad -- cuento las tareas que tiene cada proyecto, filtrando porque la categoria del equipo sea vial
FROM Obligatorio.Contacto C
INNER JOIN Obligatorio.Alquila A ON A.Documento = C.Documento
INNER JOIN Obligatorio.Equipo E ON E.Id = A.Id
INNER JOIN Obligatorio.Contrata CT ON CT.Documento = C.Documento
INNER JOIN Obligatorio.Proyecto P ON P.NroProy = CT.NroProy
INNER JOIN Obligatorio.Tarea T ON T.NroProy = P.NroProy
WHERE E.Categoria = 'Vial'
GROUP BY P.Nombre) AS T)


-- ME GUSTAAAAAAAA, FUNCIONA LA PRIMERA PARTE Y A ANA BARBITTA CREO Q LE GUSTO
SELECT E.Categoria, C.Documento, C.Nombre, COUNT(A.Id) AS Cantidad,
CASE
    WHEN E.Categoria = 'Vial' THEN (COUNT(A.Id) * 100) / (SELECT COUNT(*) FROM Obligatorio.Alquila WHERE Id IN (SELECT Id FROM Obligatorio.Equipo   WHERE Categoria = 'Vial'))
WHEN E.Categoria = 'Construccion' THEN (COUNT(A.Id) * 100) / (SELECT COUNT(*) FROM Obligatorio.Alquila WHERE Id IN (SELECT Id FROM Obligatorio.Equipo 
WHERE Categoria = 'Construccion'))
END AS Porcentaje
FROM Obligatorio.Contacto C
INNER JOIN Obligatorio.Alquila A ON A.Documento = C.Documento
INNER JOIN Obligatorio.Equipo E ON E.Id = A.Id
WHERE E.Categoria = 'Vial' OR E.Categoria = 'Construccion'
GROUP BY C.Documento, C.Nombre, E.Categoria
HAVING COUNT(DISTINCT T.IdTarea) = (SELECT COUNT(DISTINCT T.IdTarea) AS Cantidad -- cuento las tareas que tiene cada proyecto, filtrando porque la categoria del equipo sea vial
FROM Obligatorio.Contacto C
INNER JOIN Obligatorio.Alquila A ON A.Documento = C.Documento
INNER JOIN Obligatorio.Equipo E ON E.Id = A.Id
INNER JOIN Obligatorio.Contrata CT ON CT.Documento = C.Documento
INNER JOIN Obligatorio.Proyecto P ON P.NroProy = CT.NroProy
INNER JOIN Obligatorio.Tarea T ON T.NroProy = P.NroProy
WHERE E.Categoria = 'Vial'
ORDER BY Cantidad DESC
LIMIT 1)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- NUEVA DBBBBB CASOS DE PRUEBA:
INSERT INTO Obligatorio.Contacto (Documento, Email, Nombre, Telefono, Tipo) VALUES (1, 'Contacto11@gmail', 'Contacto11', '1111111111','Ingeniero');

INSERT INTO Obligatorio.Equipo (Id, Nombre, Estado, FechaAdquirido, Categoria) VALUES (2, 'equipo2Constru', 'Producción', now(), 'Construccion');
INSERT INTO Obligatorio.Equipo (Id, Nombre, Estado, FechaAdquirido, Categoria) VALUES (1, 'equipo1', 'Producción', now() - interval 1 month, 'Vial');

INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (2, 1, now() - interval 6 month, now() - interval 1 month);
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (1, 1, now() - interval 6 month, now() - interval 1 month);

INSERT INTO Obligatorio.Proyecto (NroProy, Nombre, Descripcion, FFinalizacion) VALUES (0, 'proy0', 'proy0proy0proy0', now() - interval 6 month);

INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (0, 0, 'tarea0', now() - interval 1 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (0, 1, 'tarea1', now() - interval 1 month);

INSERT INTO Obligatorio.Contrata (NroProy, Documento) VALUES (0, 1);


-- inserto nuevo contacto q va a contratar nuevo proyecto q va a tener 4 tareas, y q a la vez va a alquilar equipo de construccion
INSERT INTO Obligatorio.Contacto (Documento, Email, Nombre, Telefono, Tipo) VALUES (2, 'Contacto22@gmail', 'Contacto22', '2222222','Ingeniero');
INSERT INTO Obligatorio.Proyecto (NroProy, Nombre, Descripcion, FFinalizacion) VALUES (1, 'proy1', 'proy1proy1proy1', now() - interval 6 month);
INSERT INTO Obligatorio.Equipo (Id, Nombre, Estado, FechaAdquirido, Categoria) VALUES (3, 'equipo3Constru', 'Producción', now(), 'Construccion');
INSERT INTO Obligatorio.Contrata (NroProy, Documento) VALUES (1, 2);
INSERT INTO Obligatorio.Alquila (Id, Documento, FInicio, FFin) VALUES (3, 2, now() - interval 6 month, now() - interval 1 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (1, 2, 'tarea2', now() - interval 1 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (1, 3, 'tarea3', now() - interval 1 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (1, 4, 'tarea4', now() - interval 1 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (1, 5, 'tarea5', now() - interval 1 month);

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 10) 
-- Obtener para las categorías de equipo vial y construcción los contactos que alquilaron equipos
-- de dichas categorías y la cantidad total de alquileres que realizó dicho contacto para esa
-- categoría. Obtener el porcentaje que representa esta cantidad sobre el total de alquileres para
-- cada categoría solicitada. Además, obtener el nombre del proyecto en el cual se realizaron la
-- mayor cantidad de tareas dentro de cada categoría solicitada (si hay más de un proyecto con
-- la mayor cantidad de tareas, se deben listar todos ellos).

-- AMBAS PARTES FUNCIONANDO POR SEPARADO, TENGO Q UNIRLAS
SELECT E.Categoria, C.Documento, C.Nombre, COUNT(A.Id) AS Cantidad,
CASE
WHEN E.Categoria = 'Vial' THEN (COUNT(A.Id) * 100) / (SELECT COUNT(*) FROM Obligatorio.Alquila WHERE Id IN (SELECT Id FROM Obligatorio.Equipo WHERE Categoria = 'Vial'))
WHEN E.Categoria = 'Construccion' THEN (COUNT(A.Id) * 100) / (SELECT COUNT(*) FROM Obligatorio.Alquila WHERE Id IN (SELECT Id FROM Obligatorio.Equipo WHERE Categoria = 'Construccion'))
END AS Porcentaje
FROM Obligatorio.Contacto C
INNER JOIN Obligatorio.Alquila A ON A.Documento = C.Documento
INNER JOIN Obligatorio.Equipo E ON E.Id = A.Id
WHERE E.Categoria = 'Vial' OR E.Categoria = 'Construccion'
GROUP BY C.Documento, C.Nombre  

HAVING COUNT(DISTINCT T.IdTarea) = (SELECT MAX(Cantidad)
FROM (SELECT COUNT(DISTINCT T.IdTarea) AS Cantidad 
FROM Obligatorio.Contacto C -- por cada contacto
INNER JOIN Obligatorio.Alquila A ON A.Documento = C.Documento --tiene q haber alquilado un equipo de categoria vial
INNER JOIN Obligatorio.Equipo E ON E.Id = A.Id -- equipo tiene q estar alquilado por el contact
INNER JOIN Obligatorio.Contrata CT ON CT.Documento = C.Documento -- ese mismo contact tiene q haber contratado un proyecto
INNER JOIN Obligatorio.Proyecto P ON P.NroProy = CT.NroProy -- proyecto contratado por el contacto 
INNER JOIN Obligatorio.Tarea T ON T.NroProy = P.NroProy -- las tareas del proyecto q voy a contar 
WHERE E.Categoria = 'Vial' -- la categoria del equipo tiene q ser Vial 
GROUP BY P.Nombre) AS H)



HAVING COUNT(DISTINCT T.IdTarea) = (SELECT MAX(Cantidad)
FROM (
SELECT COUNT(DISTINCT T.IdTarea) AS Cantidad 
FROM Obligatorio.Contacto C -- por cada contacto
INNER JOIN Obligatorio.Alquila A ON A.Documento = C.Documento --tiene q haber alquilado un equipo de categoria vial
INNER JOIN Obligatorio.Equipo E ON E.Id = A.Id -- equipo tiene q estar alquilado por el contact
INNER JOIN Obligatorio.Contrata CT ON CT.Documento = C.Documento -- ese mismo contact tiene q haber contratado un proyecto
INNER JOIN Obligatorio.Proyecto P ON P.NroProy = CT.NroProy -- proyecto contratado por el contacto 
INNER JOIN Obligatorio.Tarea T ON T.NroProy = P.NroProy -- las tareas del proyecto q voy a contar 
WHERE E.Categoria = 'Vial' -- la categoria del equipo tiene q ser Vial 
GROUP BY P.Nombre
ORDER BY Cantidad DESC
LIMIT 1

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 10) 
-- Obtener para las categorías de equipo vial y construcción los contactos que alquilaron equipos
-- de dichas categorías y la cantidad total de alquileres que realizó dicho contacto para esa
-- categoría. Obtener el porcentaje que representa esta cantidad sobre el total de alquileres para
-- cada categoría solicitada. Además, obtener el nombre del proyecto en el cual se realizaron la
-- mayor cantidad de tareas dentro de cada categoría solicitada (si hay más de un proyecto con
-- la mayor cantidad de tareas, se deben listar todos ellos).

-- intento de unirlas 
SELECT E.Categoria, C.Documento, C.Nombre, COUNT(A.Id) AS Cantidad,
CASE
WHEN E.Categoria = 'Vial' THEN (COUNT(A.Id) * 100) / (SELECT COUNT(*) FROM Obligatorio.Alquila WHERE Id IN (SELECT Id FROM Obligatorio.Equipo WHERE Categoria = 'Vial'))
WHEN E.Categoria = 'Construccion' THEN (COUNT(A.Id) * 100) / (SELECT COUNT(*) FROM Obligatorio.Alquila WHERE Id IN (SELECT Id FROM Obligatorio.Equipo WHERE Categoria = 'Construccion'))
END AS Porcentaje
FROM Obligatorio.Contacto C
INNER JOIN Obligatorio.Alquila A ON A.Documento = C.Documento --tiene q haber alquilado un equipo de categoria vial
INNER JOIN Obligatorio.Equipo E ON E.Id = A.Id -- equipo tiene q estar alquilado por el contact
INNER JOIN Obligatorio.Contrata CT ON CT.Documento = C.Documento -- ese mismo contact tiene q haber contratado un proyecto
INNER JOIN Obligatorio.Proyecto P ON P.NroProy = CT.NroProy -- proyecto contratado por el contacto 
INNER JOIN Obligatorio.Tarea T ON T.NroProy = P.NroProy -- las tareas del proyecto q voy a contar 
WHERE E.Categoria = 'Vial' OR E.Categoria = 'Construccion'
GROUP BY C.Documento, C.Nombre  
HAVING COUNT(DISTINCT T.IdTarea) = (SELECT MAX(COUNT(DISTINCT T.IdTarea))


-- intento de unirlas y cambiar SELECT MAX(COUNT
SELECT E.Categoria, C.Documento, C.Nombre, COUNT(A.Id) AS Cantidad,
CASE
WHEN E.Categoria = 'Vial' THEN (COUNT(A.Id) * 100) / (SELECT COUNT(*) FROM Obligatorio.Alquila WHERE Id IN (SELECT Id FROM Obligatorio.Equipo WHERE Categoria = 'Vial'))
WHEN E.Categoria = 'Construccion' THEN (COUNT(A.Id) * 100) / (SELECT COUNT(*) FROM Obligatorio.Alquila WHERE Id IN (SELECT Id FROM Obligatorio.Equipo WHERE Categoria = 'Construccion'))
END AS Porcentaje
FROM Obligatorio.Contacto C
INNER JOIN Obligatorio.Alquila A ON A.Documento = C.Documento --tiene q haber alquilado un equipo de categoria vial
INNER JOIN Obligatorio.Equipo E ON E.Id = A.Id -- equipo tiene q estar alquilado por el contact
INNER JOIN Obligatorio.Contrata CT ON CT.Documento = C.Documento -- ese mismo contact tiene q haber contratado un proyecto
INNER JOIN Obligatorio.Proyecto P ON P.NroProy = CT.NroProy -- proyecto contratado por el contacto 
INNER JOIN Obligatorio.Tarea T ON T.NroProy = P.NroProy -- las tareas del proyecto q voy a contar 
WHERE E.Categoria = 'Vial' OR E.Categoria = 'Construccion'
GROUP BY C.Documento, C.Nombre  
HAVING COUNT(DISTINCT T.IdTarea) = (
    SELECT COUNT(DISTINCT T.IdTarea) AS Cantidad 
    FROM Obligatorio.Contacto C -- por cada contacto
    INNER JOIN Obligatorio.Alquila A ON A.Documento = C.Documento --tiene q haber alquilado un equipo de categoria vial
    INNER JOIN Obligatorio.Equipo E ON E.Id = A.Id -- equipo tiene q estar alquilado por el contact
    INNER JOIN Obligatorio.Contrata CT ON CT.Documento = C.Documento -- ese mismo contact tiene q haber contratado un proyecto
    INNER JOIN Obligatorio.Proyecto P ON P.NroProy = CT.NroProy -- proyecto contratado por el contacto 
    INNER JOIN Obligatorio.Tarea T ON T.NroProy = P.NroProy -- las tareas del proyecto q voy a contar 
    ORDER BY Cantidad DESC
    LIMIT 1
)


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (8, 300, '200200', now() - interval 1 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (8, 301, '201201', now() - interval 1 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (8, 302, '202202', now() - interval 1 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (8, 303, '200200', now() - interval 1 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (8, 304, '201201', now() - interval 1 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (8, 305, '202202', now() - interval 1 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (8, 306, '200200', now() - interval 1 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (8, 307, '201201', now() - interval 1 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (8, 308, '202202', now() - interval 1 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (8, 309, '202202', now() - interval 1 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (8, 310, '202202', now() - interval 1 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (8, 311, '202202', now() - interval 1 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (8, 312, '202202', now() - interval 1 month);
INSERT INTO Obligatorio.Tarea (NroProy, IdTarea, Descripcion, FRealizacion) VALUES (8, 313, '202202', now() - interval 1 month);

INSERT INTO Obligatorio.Equipo (Id, Nombre, Estado, FechaAdquirido, Categoria) VALUES (8, 'equipo8', 'Desafectado', now() - interval 12 month, 'Construccion');



-- 9)
-- Obtener el nombre y la fecha de adquisición de los equipos que tuvieron la mayor cantidad de
-- alquileres. Además, dichos equipos deben haber sido alquilados por algún contacto que haya
-- contratado la menor cantidad de proyectos.

-- Me gusta esta, pero hay que probarla
SELECT E.Nombre, E.FechaAdquirido, COUNT(A.Id) AS Cantidad
FROM Obligatorio.Equipo E
INNER JOIN Obligatorio.Alquila A ON A.Id = E.Id
INNER JOIN Obligatorio.Contacto C ON C.Documento = A.Documento
INNER JOIN Obligatorio.Contrata CT ON CT.Documento = C.Documento
GROUP BY E.Nombre, E.FechaAdquirido
HAVING COUNT(A.Id) = (SELECT MAX(COUNT(A.Id)) FROM Obligatorio.Alquila A GROUP BY A.Id)
AND COUNT(DISTINCT CT.NroProy) = (SELECT MIN(COUNT(DISTINCT CT.NroProy)) FROM Obligatorio.Contrata CT GROUP BY CT.Documento)


-- SELECT e.Nombre, e.FechaAdquirido 
-- FROM Obligatorio.Equipo e
-- INNER JOIN Obligatorio.Alquila a ON e.Id = a.Id
-- WHERE e.Id IN (SELECT a.Id
--                FROM Obligatorio.Alquila A
--                GROUP BY a.Id
--                HAVING COUNT(*) = (SELECT MAX (COUNT(*))
--                                   FROM Obligatorio.Alquila A
--                                   GROUP BY A.Id))
-- AND a.Documento IN (SELECT c.Documento
--                     FROM Obligatorio.Contrata c 
--                  -- INNER JOIN Obligatorio.Alquila a ON a.Documento = c.Documento
--                     GROUP BY c.Documento 
--                     HAVING COUNT(*) = (SELECT MIN (COUNT(*))
--                                        FROM Obligatorio.Contrata c
--                                       -- INNER JOIN Obligatorio.Alquila a ON a.Documento = c.Documento
--                                        GROUP BY c.Documento))





SELECT P.Nombre, E.Categoria, C.Documento, C.Nombre, COUNT(A.Id) AS Cantidad,
CASE
    WHEN E.Categoria = 'Vial' THEN (COUNT(A.Id) * 100) / (SELECT COUNT(*) FROM Obligatorio.Alquila WHERE Id IN (SELECT Id FROM Obligatorio.Equipo   WHERE Categoria = 'Vial'))
WHEN E.Categoria = 'Construccion' THEN (COUNT(A.Id) * 100) / (SELECT COUNT(*) FROM Obligatorio.Alquila WHERE Id IN (SELECT Id FROM Obligatorio.Equipo 
WHERE Categoria = 'Construccion'))
END AS Porcentaje,

CASE
    WHEN E.Categoria = 'Vial' THEN 
        SELECT P.Nombre
        FROM Obligatorio.Contacto C
        INNER JOIN Obligatorio.Alquila A ON A.Documento = C.Documento
        INNER JOIN Obligatorio.Equipo E ON E.Id = A.Id
        INNER JOIN Obligatorio.Contrata CT ON CT.Documento = C.Documento
        INNER JOIN Obligatorio.Proyecto P ON P.NroProy = CT.NroProy
        INNER JOIN Obligatorio.Tarea T ON T.NroProy = P.NroProy
        WHERE E.Categoria = 'Vial'
        GROUP BY P.Nombre
        HAVING COUNT(DISTINCT T.IdTarea) = (SELECT COUNT(DISTINCT T.IdTarea) AS Cantidad 
        FROM Obligatorio.Contacto C
        INNER JOIN Obligatorio.Alquila A ON A.Documento = C.Documento
        INNER JOIN Obligatorio.Equipo E ON E.Id = A.Id
        INNER JOIN Obligatorio.Contrata CT ON CT.Documento = C.Documento
        INNER JOIN Obligatorio.Proyecto P ON P.NroProy = CT.NroProy
        INNER JOIN Obligatorio.Tarea T ON T.NroProy = P.NroProy
        ORDER BY Cantidad DESC
        LIMIT 1)
WHEN E.Categoria = 'Construccion' THEN 
        SELECT P.Nombre
        FROM Obligatorio.Contacto C
        INNER JOIN Obligatorio.Alquila A ON A.Documento = C.Documento
        INNER JOIN Obligatorio.Equipo E ON E.Id = A.Id
        INNER JOIN Obligatorio.Contrata CT ON CT.Documento = C.Documento
        INNER JOIN Obligatorio.Proyecto P ON P.NroProy = CT.NroProy
        INNER JOIN Obligatorio.Tarea T ON T.NroProy = P.NroProy
        WHERE E.Categoria = 'Construccion'
        GROUP BY P.Nombre
        HAVING COUNT(DISTINCT T.IdTarea) = (SELECT COUNT(DISTINCT T.IdTarea) AS Cantidad 
        FROM Obligatorio.Contacto C
        INNER JOIN Obligatorio.Alquila A ON A.Documento = C.Documento
        INNER JOIN Obligatorio.Equipo E ON E.Id = A.Id
        INNER JOIN Obligatorio.Contrata CT ON CT.Documento = C.Documento
        INNER JOIN Obligatorio.Proyecto P ON P.NroProy = CT.NroProy
        INNER JOIN Obligatorio.Tarea T ON T.NroProy = P.NroProy
        ORDER BY Cantidad DESC
        LIMIT 1)
END AS NombreProy
FROM Obligatorio.Contacto C
INNER JOIN Obligatorio.Alquila A ON A.Documento = C.Documento
INNER JOIN Obligatorio.Equipo E ON E.Id = A.Id
INNER JOIN Obligatorio.Contrata CT ON CT.Documento = C.Documento
INNER JOIN Obligatorio.Proyecto P ON P.NroProy = CT.NroProy
INNER JOIN Obligatorio.Tarea T ON T.NroProy = P.NroProy




-- QUERY 10 QUE PASO ANTONELLA
SELECT P.Nombre, E.Categoria, C.Documento, C.Nombre as nombreCli, COUNT(A.Id) AS Cantidad,
(CASE
WHEN E.Categoria = 'Vial' THEN (COUNT(A.Id) * 100) / (SELECT COUNT(*) FROM Obligatorio.Alquila WHERE Id IN (SELECT Id FROM Obligatorio.Equipo   WHERE Categoria = 'Vial') group by id)
WHEN E.Categoria = 'Construccion' THEN (COUNT(A.Id) * 100) / (SELECT COUNT(*) FROM Obligatorio.Alquila WHERE Id IN (SELECT Id FROM Obligatorio.Equipo
WHERE Categoria = 'Construccion') group by id)
END) AS Porcentaje, 
(CASE
   WHEN E.Categoria = 'Vial' THEN
       (SELECT P.Nombre
       FROM Obligatorio.Contacto C
       INNER JOIN Obligatorio.Alquila A ON A.Documento = C.Documento
       INNER JOIN Obligatorio.Equipo E ON E.Id = A.Id
       INNER JOIN Obligatorio.Contrata CT ON CT.Documento = C.Documento
       INNER JOIN Obligatorio.Proyecto P ON p.NroProy= Ct.NroProy
       INNER JOIN Obligatorio.Tarea T ON t.NroProy= P.NroProy
       WHERE E.Categoria = 'Vial'
       GROUP BY P.Nombre
       HAVING COUNT(DISTINCT T.IdTarea) = (SELECT MAX(COUNT(DISTINCT T.IdTarea)) AS Cantidad
                                           FROM Contacto C
                                            INNER JOIN Alquila A ON A.Documento = C.Documento
                                            INNER JOIN Equipo E ON E.Id = A.Id
                                            INNER JOIN Contrata CT ON CT.Documento = C.Documento
                                            INNER JOIN Proyecto P ON p.NroProy= Ct.NroProy
                                            INNER JOIN Tarea T ON t.NroProy= P.NroProy
                                            group by P.NroProy
                                            ))
         WHEN E.Categoria = 'Construccion' THEN
       (SELECT P.Nombre
       FROM Contacto C
       INNER JOIN Alquila A ON A.Documento = C.Documento
       INNER JOIN Equipo E ON E.Id = A.Id
       INNER JOIN Contrata CT ON CT.Documento = C.Documento
       INNER JOIN Proyecto P ON P.NroProy = CT.NroProy
       INNER JOIN Tarea T ON T.NroProy = P.NroProy
       WHERE E.Categoria = 'Construccion'
       GROUP BY P.Nombre
       HAVING COUNT(DISTINCT T.IdTarea) = (SELECT MAX(COUNT(DISTINCT T.IdTarea)) AS Cantidad
       FROM Contacto C
       INNER JOIN Alquila A ON A.Documento = C.Documento
       INNER JOIN Equipo E ON E.Id = A.Id
       INNER JOIN Contrata CT ON CT.Documento = C.Documento
       INNER JOIN Proyecto P ON P.NroProy = CT.NroProy
       INNER JOIN Tarea T ON T.NroProy = P.NroProy
        group by p.NroProy))
END) AS NombreProy
FROM Contacto C
INNER JOIN Alquila A ON A.Documento = C.Documento
INNER JOIN Equipo E ON E.Id = A.Id
INNER JOIN Contrata CT ON CT.Documento = C.Documento
INNER JOIN Proyecto P ON p.NroProy = ct.NroProy
INNER JOIN Tarea T ON t.NroProy = p.NroProy
group by a.id, P.Nombre, E.Categoria, C.Documento, C.Nombre;