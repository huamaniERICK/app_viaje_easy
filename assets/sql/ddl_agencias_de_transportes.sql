/*
-Instituto: "IESTP Jose María Arguedas - Puquio"-
--Unidad Didáctica: Herramientas de desarrollo de Software--
--Unidad Didáctica: Análisis y Diseño de Sistemas--
--Docente: Ing Jhon David Ccoyllo Rojas--
--Perido académico: IV--
--Programa de estudio: APSTI--
---Fecha entrega: 14/11/2024---

Base de datos: bd_agencias_de_transporte
Descripcion: codificacion de entidades
Integrantes:
- huamani ccahuay, Erick
- lucana huamani, Flor Milagros
- gallegos garriazo, Alder
- parinango chipana, Edith Vaneza
- ccaccachahua amao, Ronal Miguel

Subconjunto del lenguaje SQL: DDL
*/


CREATE TABLE module(
id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT(45) NOT NULL,
icon TEXT(25) NULL,
date_added datetime NOT NULL DEFAULT(DATETIME('now', 'localtime')),
state INTEGER(1) DEFAULT 0
);

CREATE TABLE category(
id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT(45) NOT NULL,
description TEXT NULL
);

CREATE TABLE agency(
id INTEGER PRIMARY KEY AUTOINCREMENT,
ruc TEXT(11) NOT NULL UNIQUE,
agency_name TEXT(100) NULL,
address TEXT(45) NULL,
reference TEXT(45) NULL,
email TEXT(45) NULL,
brief_description TEXT(45) NULL,
full_description TEXT NULL,
cell_phone_number TEXT(9) NULL,
operating_hours TEXT NULL,
front_page TEXT(100) NULL,
avatar TEXT(100) NULL,
state TEXT(10) NULL,
location TEXT(45) NULL,
joined_date datetime NOT NULL DEFAULT(DATETIME('now', 'localtime')),
category_id INTEGER NOT NULL,

CONSTRAINT fk_category_agency FOREIGN KEY(category_id)
REFERENCES category on UPDATE CASCADE on DELETE CASCADE
);

CREATE TABLE favorite(
id INTEGER PRIMARY KEY AUTOINCREMENT,
date_added datetime NOT NULL DEFAULT(DATETIME('now', 'localtime')),
agency_id INTEGER NOT NULL UNIQUE,

CONSTRAINT fk_favorite_agency FOREIGN KEY(agency_id)
REFERENCES agency on UPDATE CASCADE on DELETE CASCADE
);