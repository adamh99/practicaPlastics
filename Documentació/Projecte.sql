USE a21marsanbla_project;

CREATE TABLE usuari (
ID INT UNIQUE PRIMARY KEY,
NOM VARCHAR(20),
PASS VARCHAR(30),
MAIL VARCHAR(100),
ROL VARCHAR(100),
VEGADES INT);

CREATE TABLE puntbrut (
LONGITUD FLOAT,
LATITUD FLOAT,
IMATGE VARCHAR(100),
PRIMARY KEY(LONGITUD,LATITUD)
);


CREATE TABLE SELECCIONA (
ID INT UNIQUE,
LONGITUD FLOAT,
LATITUD FLOAT,
FECHA DATE,
PRIMARY KEY (ID,LONGITUD,LATITUD),
FOREIGN KEY (ID) REFERENCES usuari (ID),
FOREIGN KEY (LONGITUD,LATITUD) REFERENCES puntbrut (LONGITUD,LATITUD)
);


