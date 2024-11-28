/*
-Instituto: "IESTP Jose María Arguedas - Puquio"-
--Unidad Didáctica: Herramientas de desarrollo de Software--
--Unidad Didáctica: Análisis y Diseño de Sistemas--
--Docente: Ing Jhon David Ccoyllo Rojas--
--Perido académico: IV--
--Programa de estudio: APSTI--
---Fecha entrega: 14/11/2024---

Base de datos: bd_agencias_de_transporte
Descripcion: insercion de datos
Integrantes:
- huamani ccahuay, Erick
- lucana huamani, Flor Milagros
- gallegos garriazo, Alder
- parinango chipana, Edith Vaneza
- ccaccachahua amao, Ronal Miguel

Subconjunto del lenguaje SQL: DML
*/

INSERT INTO module(name, icon, state)
VALUES
("Reservas de Viajes", "book_online",1),
("Gestión de Tarifas", "attach_money",0),
("Seguimiento de Flota", "directions_bus,"1),
("Atención al Cliente", "support_agent",0),
("Mantenimiento de Vehículos", "handyman",1);

INSERT INTO category(id, name)
VALUES
(1,"Urbano"),
(2,"Interprovincial"),
(3,"de Carga"),
(4,"Turístico"),
(5,"Especializado");
INSERT INTO agency(ruc, agency_name,front_page, avatar, location, category_id)
VALUES
('20100912768', 'TRAVEL GROUP PERU S.A.', 'Tobu • Higher • 2013', '20100912768_front_page.jpg', '20100912768_avatar.jpg', 'Lima', 1),
('20610247033', 'MEDIA TRAVEL GROUP S.A.C.', 'Tobu • Candyland • 2015', '20610247033_front_page.jpg', '20610247033_avatar.jpg', 'Lima', 2),
('20448459978', 'PUNO TOURS SERVICIOS TURISTICOS EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA', '', '20448459978_front_page.jpg', '20448459978_avatar.jpg', 'Puno', 3),
('20534780185', 'E & N HUAMANGA TOURS S.R.L.', '', '20534780185_front_page.jpg', '20534780185_avatar.jpg', 'Huamanga', 4),
('20605213015', 'AGENCIA DE VIAJES Y TURISMO AYACUCHO TRAVEL E.I.R.L.', '', '20605213015_front_page.jpg', '20605213015_avatar.jpg', 'Huamanga', 5),
('20606832509', 'AGENCIA DE VIAJES Y TURISMO OPERADOR DE TURISMO HUANCARAYLLA TRAVEL S.R.L.', '', '20606832509_front_page.jpg', '20606832509_avatar.jpg', 'Huamanga', 6),
('20600693701', 'VIAJES EXPRESS TRAVEL PERU S.A.C.', '', '20600693701_front_page.jpg', '20600693701_avatar.jpg', 'Lima', 7),
('20452714125', 'MOROCHUCOS REP´S S.R.L.', '', '20452714125_front_page.jpg', '20452714125_avatar.jpg', 'Huamanga', 8),
('20602780911', 'APU KUNTUR TRAVEL E.I.R.L.', '', '20602780911_front_page.jpg', '20602780911_avatar.jpg', 'Lucanas', 9),
('20601738636', 'AGENCIA DE VIAJES Y TURISMO ZAMY E.I.R.L.', '', '20601738636_front_page.jpg', '20601738636_avatar.jpg', 'Huamanga', 1);

INSERT INTO favorite(agency_id)
VALUES
(1),
(2),
(3),
(4),
(5);