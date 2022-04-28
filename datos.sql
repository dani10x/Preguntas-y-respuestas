--borrado de secuencias
drop sequence respuesta_secuencia;
drop sequence pregunta_secuencia;
drop sequence categoria_secuancia;
drop sequence jugador_secuencia;
drop sequence juego_secuencia;
--insercion de categorias
CREATE SEQUENCE categoria_secuancia
INCREMENT BY 1
START WITH 10000;

INSERT INTO CATEGORIAS VALUES (To_Char(categoria_secuancia.NextVal), 1);
INSERT INTO CATEGORIAS VALUES (To_Char(categoria_secuancia.NextVal), 2);
INSERT INTO CATEGORIAS VALUES (To_Char(categoria_secuancia.NextVal), 3);
INSERT INTO CATEGORIAS VALUES (To_Char(categoria_secuancia.NextVal), 4);
INSERT INTO CATEGORIAS VALUES (To_Char(categoria_secuancia.NextVal), 5);

--Insercion de respuestas
CREATE SEQUENCE respuesta_secuencia
INCREMENT BY 1
START WITH 1000;

INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), '9', 0); 
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), '6', 0); 
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), '12', 1); 
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), '18', 0); 

INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Bogota', 1); 
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Medellin', 0); 
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Cali', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Madrid', 0);

INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Amarillo, azul, rojo', 1);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Verde, morado, azul', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Rojo, rojo claro, rojo oscuro', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Amarillo, morado, naranja', 0);

INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), '2020', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), '2019', 1);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), '2018', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), '2021', 0);

INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), '7000', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), '60', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), '10000', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), '3600', 1);

INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Miguel de Cervantes', 1);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Edgar Alan Poe', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Franz Kafka', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Gabriel Garcia Marquez', 0);

INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Rio de Janeiro', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Brasilia', 1);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Sao Paulo', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Fortaleza', 0);

INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Nilo', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Amazonas', 1);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Orinoco', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Magdalena', 0);

INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Abismo de challenger', 1);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Abismo Horizon', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Abismo Molloy', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Abismo Factorian', 0);

INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Picasso', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Dalí', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Van Gogh', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Da Vinci', 1);

INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Argentina', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Brasil', 0); 
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Uruguay', 1);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'España', 0);

INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Rusia', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Korea del norte', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Ucrania', 1);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'India', 0);

INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Titanic', 1);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Harry Potter', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Star Wars', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'IT', 0);

INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Julio Verne', 1);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Edgar Alan Poe', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Stephen King', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Julio COrtazar', 0);

INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), '1914', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), '1939', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), '1945', 1);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), '1940', 0);

INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Tiburon', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Leon', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Serpiente', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Mosquito', 1);

INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), '23 horas 0 minutos', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), '24 horas', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), '25 horas 17 minutos', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), '24 horas 37 minutos', 1);

INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Butan', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Seul', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Guwahati', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Timbu', 1);

INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Charles Babbage', 1);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Blaise Pascal', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Johannes Kepler', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Alan Turing', 0);

INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'La Marsellesa', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Sche ne vmerla', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Hatikva', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Star spangled banner', 1);

INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Georg Solti', 1);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Juan Luis Guerra', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Residente', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Alejandro Sanz', 0);

INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Renminbi', 1);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Yen', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Franco', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Won', 0);

INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), '642.5 años luz', 1);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), '736.2 años luz', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), '732.2 años luz', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), '598.6 años luz', 0);

INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Sartorio', 1);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Pectorales', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Cuadriceps', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Trapecios', 0);

INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Reactivo de Tollens', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Agua Regia', 1);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Sales de permanganato', 0);
INSERT INTO RESPUESTAS VALUES (To_Char(respuesta_secuencia.NextVal), 'Mercurio', 0);

--insercion preguntas
CREATE SEQUENCE pregunta_secuencia
INCREMENT BY 1
START WITH 10000;

INSERT INTO PREGUNTAS VALUES (To_Char(pregunta_secuencia.NextVal), 10000, 'Resuelva la siguiente ecuación: 3+3*3', 1000, 1001, 1002, 1003);
INSERT INTO PREGUNTAS VALUES (To_Char(pregunta_secuencia.NextVal), 10000, 'Cual es la capital de Colombia', 1004, 1005, 1006, 1007);
INSERT INTO PREGUNTAS VALUES (To_Char(pregunta_secuencia.NextVal), 10000, 'Cuales son los colores primarios', 1008, 1009, 1010, 1011);
INSERT INTO PREGUNTAS VALUES (To_Char(pregunta_secuencia.NextVal), 10000, 'En que año se descubrió el covid-19', 1012, 1013, 1014, 1015);
INSERT INTO PREGUNTAS VALUES (To_Char(pregunta_secuencia.NextVal), 10000, 'Cuantos segundos tiene una hora', 1016, 1017, 1018, 1019);

INSERT INTO PREGUNTAS VALUES (To_Char(pregunta_secuencia.NextVal), 10001, 'Quien es el autor de Don Quiote de la Mancha', 1020, 1021, 1022, 1023);
INSERT INTO PREGUNTAS VALUES (To_Char(pregunta_secuencia.NextVal), 10001, 'Cual es la capital de Brasil', 1024, 1025, 1026, 1027);
INSERT INTO PREGUNTAS VALUES (To_Char(pregunta_secuencia.NextVal), 10001, 'Cual es el rio mas grande del mundo', 1028, 1029, 1030, 1031);
INSERT INTO PREGUNTAS VALUES (To_Char(pregunta_secuencia.NextVal), 10001, 'Cual es el lugar mas profumdo del oceano', 1032, 1033, 1034, 1035);
INSERT INTO PREGUNTAS VALUES (To_Char(pregunta_secuencia.NextVal), 10001, 'Quien pintó la mona lisa', 1036, 1037, 1038, 1039);

INSERT INTO PREGUNTAS VALUES (To_Char(pregunta_secuencia.NextVal), 10002, 'Cual fue la primera seleccion del mundo en ganar un mundial', 1040, 1041, 1042, 1043);
INSERT INTO PREGUNTAS VALUES (To_Char(pregunta_secuencia.NextVal), 10002, 'En que país se encuentra Chernovil', 1044, 1045, 1046, 1047);
INSERT INTO PREGUNTAS VALUES (To_Char(pregunta_secuencia.NextVal), 10002, 'Cual es la pelicula con mas Oscars de la historia', 1048, 1049, 1050, 1051);
INSERT INTO PREGUNTAS VALUES (To_Char(pregunta_secuencia.NextVal), 10002, 'Quien es el autor del libro: La vuelta al mundo en 80 días', 1052, 1053, 1054, 1055);
INSERT INTO PREGUNTAS VALUES (To_Char(pregunta_secuencia.NextVal), 10002, 'En que año finalizó la segunda guerra mundial', 1056, 1057, 1058, 1059);

INSERT INTO PREGUNTAS VALUES (To_Char(pregunta_secuencia.NextVal), 10003, 'Cual es el animal que mas muertes provoca la año', 1060, 1061, 1062, 1063);
INSERT INTO PREGUNTAS VALUES (To_Char(pregunta_secuencia.NextVal), 10003, 'Cuanto tiempo dura un día en marte', 1064, 1065, 1066, 1067);
INSERT INTO PREGUNTAS VALUES (To_Char(pregunta_secuencia.NextVal), 10003, 'Cual es la capital de Butan', 1068, 1069, 1070, 1071);
INSERT INTO PREGUNTAS VALUES (To_Char(pregunta_secuencia.NextVal), 10003, 'Quien inventó los computadores', 1072, 1073, 1074, 1075);
INSERT INTO PREGUNTAS VALUES (To_Char(pregunta_secuencia.NextVal), 10003, 'Cual es el nombre del himno de Estados Unidos', 1076, 1077, 1078, 1079);

INSERT INTO PREGUNTAS VALUES (To_Char(pregunta_secuencia.NextVal), 10004, 'Cual es la persona que mas grammys ha ganado en la historia', 1080, 1081, 1082, 1083);
INSERT INTO PREGUNTAS VALUES (To_Char(pregunta_secuencia.NextVal), 10004, 'Cual es el nombre de la moneda de China', 1084, 1085, 1086, 1087);
INSERT INTO PREGUNTAS VALUES (To_Char(pregunta_secuencia.NextVal), 10004, 'A que distancia se encuentra Betelgeuse de la tierra', 1088, 1089, 1090, 1091);
INSERT INTO PREGUNTAS VALUES (To_Char(pregunta_secuencia.NextVal), 10004, 'Cual es el músculo mas largo del cuerpo', 1092, 1093, 1094, 1095);
INSERT INTO PREGUNTAS VALUES (To_Char(pregunta_secuencia.NextVal), 10004, 'Que sustancia es capaz de disolver el oro', 1096, 1097, 1098, 1099);

commit;