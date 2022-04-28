--Borrado de tablas
DROP TABLE RESPUESTAS;
DROP TABLE PREGUNTAS;
DROP TABLE CATEGORIAS;
DROP TABLE JUEGOS;
DROP TABLE JUGADORES;

--Creacion de tablas

CREATE TABLE JUGADORES
(
Id_Jugador VARCHAR2(5) not null,
Nombre VARCHAR2(20) not null
);

CREATE TABLE RESPUESTAS
(
Id_Respuesta VARCHAR2(4) not null,
Respuesta VARCHAR2(200) not null,
Correcta INTEGER not null 
);

CREATE TABLE PREGUNTAS
(
Id_Pregunta VARCHAR2(5) not null,
CATEGORIAS_Id_Categoria VARCHAR2(5) not null,
Pregunta VARCHAR2(300) not null,
RESPUESTAS_Respuesta1 VARCHAR2(4) not null,
RESPUESTAS_Respuesta2 VARCHAR2(4) not null,
RESPUESTAS_Respuesta3 VARCHAR2(4) not null,
RESPUESTAS_Respuesta4 VARCHAR2(4) not null
);

CREATE TABLE CATEGORIAS
(
Id_Categoria VARCHAR2(5) not null,
Numero VARCHAR2(1) not null
);

CREATE TABLE JUEGOS
(
Id_Juego VARCHAR2(6) not null,
JUGADORES_Id_Jugador VARCHAR2(5) not null,
Dinero VARCHAR2(4) not null
);

--Claves primarias

ALTER TABLE JUGADORES 
	ADD CONSTRAINT JUGADORES_PK PRIMARY KEY (Id_Jugador);
ALTER TABLE CATEGORIAS
	ADD CONSTRAINT CATEGORIAS_PK PRIMARY KEY (Id_Categoria);
ALTER TABLE PREGUNTAS 
	ADD CONSTRAINT PREGUNTAS_PK PRIMARY KEY (Id_Pregunta);
ALTER TABLE JUEGOS 
	ADD CONSTRAINT JUEGOS_PK PRIMARY KEY (Id_Juego);
ALTER TABLE RESPUESTAS 
	ADD CONSTRAINT RESPUESTAS_PK PRIMARY KEY (Id_Respuesta);

--Claves foraneas

ALTER TABLE PREGUNTAS 
	ADD CONSTRAINT CATEGORIAS_PREGUNTAS_FK FOREIGN KEY
	(CATEGORIAS_Id_Categoria)
	REFERENCES CATEGORIAS
	(Id_Categoria);

ALTER TABLE JUEGOS 
	ADD CONSTRAINT JUEGOS_JUGADOR_FK FOREIGN KEY
	(JUGADORES_Id_Jugador)
	REFERENCES JUGADORES
	(Id_Jugador);    

ALTER TABLE PREGUNTAS 
	ADD CONSTRAINT PREGUNTAS_RESPUESTAS1_FK FOREIGN KEY
	(RESPUESTAS_Respuesta1)
	REFERENCES RESPUESTAS
	(Id_Respuesta);    

ALTER TABLE PREGUNTAS 
	ADD CONSTRAINT PREGUNTAS_RESPUESTAS2_FK FOREIGN KEY
	(RESPUESTAS_Respuesta2)
	REFERENCES RESPUESTAS
	(Id_Respuesta); 

ALTER TABLE PREGUNTAS 
	ADD CONSTRAINT PREGUNTAS_RESPUESTAS3_FK FOREIGN KEY
	(RESPUESTAS_Respuesta3)
	REFERENCES RESPUESTAS
	(Id_Respuesta);    

ALTER TABLE PREGUNTAS 
	ADD CONSTRAINT PREGUNTAS_RESPUESTAS4_FK FOREIGN KEY
	(RESPUESTAS_Respuesta4)
	REFERENCES RESPUESTAS
	(Id_Respuesta);  
